class ApiController < ApplicationController
  def index
    @c = "sparql = SPARQL::Client.new('http://lod.ifmo.ru/sparql')\n"\
         "query = sparql.select(:id, :academic_qualification, :academic_status, :affiliated_organization,\n"\
         "                      :first_name, :last_name, :middle_name, :pcard_id).distinct\n"\
         "  .where(\n"\
         "    [:id, RDF::URI('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'), RDF::URI('http://xmlns.com/foaf/0.1/Person')],\n"\
         "    [:id, RDF::URI('http://vivoweb.org/ontology/core#affiliatedOrganization'), :affiliated_organization]\n"\
         "  )"
  end
end
