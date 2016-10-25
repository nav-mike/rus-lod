class MappingsController < ApplicationController
  def index
  end

  def new
    @sparql = "PREFIX ifmolod:<http://lod.ifmo.ru/>
              CREATE VIEW Staff AS CONSTRUCT {
                ?person a foaf:Person ;
                        vivoplus:pcardId ?pcardId;
                        foaf:firstName ?firstName;
                        vivo:middleName ?middleName;
                        foaf:lastName ?lastName;
                        rdfs:label ?label;
                        vivo:affiliatedOrganization ?laboratory;
                        a ?supervisorType.
                }"
  end
end
