# Linked Open Data of ITMO University

This project include public pages for http://lod.ifmo.ru/ project.

### Basic concepts

The open data portal is a portal with web interface and API for easier reuse of open data represented in a standardized form.
As library catalogs, the portal contains metadata records for datasets that are published for reuse.
In combination with specific search functions, they facilitate the search of datasets.
Portals open data is an important element of most initiatives on open data.
Supporting policies, provide easy access to published information, they can also be used as a catalyst of data publication of more and better quality,
which ultimately provides new opportunities for data analysis.
At the same time, open data allows all interested users to get answers to their queries, without forcing the organizations to waste time on satisfaction for each request.

### Analogues

These systems was developed for publishing universities data:

* VIVO project stands out among the other systems due to its wide adoption in the scientific community and the use of semantic web technologies. It was originally designed for data integration within the Cornell University in 2006. The VIVO project was extended in 2009 to support cross-University data integration.

* Linked Universities - the platform provided by the Alliance of European universities publish their data, programs, courses and teaching materials in the format of Linked Data.

* ResearchGate – this app is for the international community of researchers. It supports the broader dissemination of publications in PDF format, providing access to more than 2 000 000 users.

* Dataverse is a project of Harvard University. A web application for publishing and analysing research results, which is based on custom storage solutions.

### Scenarios

Algorithm for publish data:

1. Knowledge specialist develops and appends mapping files with SML language.

1. App downloads data from university database and transforms it to RDF with sparqlify tools.

1. Tools upload data (RDF) to Virtuoso Server.
