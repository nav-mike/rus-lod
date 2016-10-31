# Linked Open Data of ITMO University

This project include public pages for http://lod.ifmo.ru/ project.

### Основные понятия

Портал открытых данных - это портал с web интерфейсом и API для более легкого повторного использования открытых данных, представленных в стандартизованном виде.Как и библиотечные каталоги, портал содержит записи метаданных для датасетов, опубликованных для повторного использования. В сочетании с конкретными функциями поиска, они облегчают поиск датасетов, представляющих интерес.Порталы открыты данных - это важный элемент большинства инициатив открытых данных. Поддерживая политику, обеспечения легкого доступа к опубликованной информации, они также могут использоваться как катализатор публикации данныхм большего количества и лучшего качества, что в конечном итоге предоставляет принципиально новые возможности для анализа данных. В тоже время открытые данные позволяют всем заинтересованым пользователям получить ответы на их запросы, без необходимости огранизациям тратить время на удовлетворение каждого запроса.

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
