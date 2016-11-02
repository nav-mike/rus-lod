class SearchController < ApplicationController
  def index
    labs = get_all_labs
    people = get_all_people
    rarea = get_all_research_area
    
    @result = labs | people | rarea
  end
  
  def data
    labs = get_all_labs
    people = get_all_people
    rarea = get_all_research_area
    
    @result = labs | people | rarea
  end

  private

  # get all laboratories
  # PREFIX vivoplus:<http://vivoplus.aksw.org/ontology#>
  # select distinct * where {
  #   ?department a vivoplus:Laboratory ;
  #               a vivo:Laboratory;
  #               rdfs:label ?name.
  # }
  def get_all_labs
    uri = 'http://lod.ifmo.ru/sparql'
    repo = RDF::Virtuoso::Repository.new(uri)
    q = RDF::Virtuoso::Query
    graph = RDF::URI.new('http://lod.ifmo.ru')

    query = q.select(:department, :name)
                .distinct
                .where(
                  [:department, RDF::URI.new('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'), RDF::URI.new('http://vivoplus.aksw.org/ontology#Laboratory')],
                  [:department, RDF::URI.new('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'), RDF::URI.new('http://vivoweb.org/ontology/core#Laboratory')],
                  [:department, RDF::URI.new('http://www.w3.org/2000/01/rdf-schema#label'), :name]
                ).graph(graph)

    result = repo.select(query) # array of hashes
    result.to_a
  end

  # get all people
  # PREFIX foaf: <http://xmlns.com/foaf/0.1/>
  # PREFIX vivo:<http://vivoweb.org/ontology/core#>
  # select distinct * where {
  #   ?person a foaf:Person ;
  #           foaf:firstName ?firstName;
  #           vivo:middleName ?middleName;
  #           foaf:lastName ?lastName.
  # }
  def get_all_people
    uri = 'http://lod.ifmo.ru/sparql'
    repo = RDF::Virtuoso::Repository.new(uri)
    q = RDF::Virtuoso::Query
    graph = RDF::URI.new('http://lod.ifmo.ru')

    query = q.select(:person, :first_name, :last_name)
                .distinct
                .where(
                  [:person, RDF::URI.new('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'), RDF::URI.new('http://xmlns.com/foaf/0.1/Person')],
                  [:person, RDF::URI.new('http://xmlns.com/foaf/0.1/firstName'), :first_name],
                  [:person, RDF::URI.new('http://xmlns.com/foaf/0.1/lastName'), :last_name]
                ).graph(graph)

    result = repo.select(query)
    result.to_a
  end

  # get all research area
  # PREFIX vivoplus:<http://vivoplus.aksw.org/ontology#>
  # PREFIX rdfs:<http://www.w3.org/2000/01/rdf-schema#>
  # select distinct * where {
  #   ?researchArea a vivoplus:ResearchArea;
  #                 rdfs:label ?label.
  # }
  def get_all_research_area
    uri = 'http://lod.ifmo.ru/sparql'
    repo = RDF::Virtuoso::Repository.new(uri)
    q = RDF::Virtuoso::Query
    graph = RDF::URI.new('http://lod.ifmo.ru')
    
    query = q.select(:research_area, :label)
                .distinct
                .where(
                  [:research_area, RDF::URI.new('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'), RDF::URI.new('http://vivoplus.aksw.org/ontology#ResearchArea')],
                  [:research_area, RDF::URI.new('http://www.w3.org/2000/01/rdf-schema#label'), :label]
                ).graph(graph)
                
    result = repo.select(query)
    result.to_a
  end
end
