PerfCake Documentation
======================

We use DocBook v5 (http://www.docbook.org/) as a format to write the documentation. To generate a human redable forms of the documents (such as PDF, HTML, EPUB, ...) we use Docbkx Tools (https://code.google.com/p/docbkx-tools/) and it's docbkx-maven-plugin.

To generate the documents in PDF format use following:
$ maven (clean) docbkx:generate-pdf

To generate the documents in HTML format use following:
$ maven (clean) docbkx:generate-html

To generate the documents in EPUB format use following:
$ maven (clean) docbkx:generate-epub

You can use any other goal of docbkx-maven-plugin to generate the documents in other formats.