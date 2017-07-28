PerfCake Documentation [![Build Status](https://travis-ci.org/PerfCake/Docs.svg?branch=release-7)](https://travis-ci.org/PerfCake/Docs)
======================

We use DocBook v5 (http://www.docbook.org/) as a format to write the documentation. 
To generate a human readable forms of the documents (such as PDF, HTML, EPUB, ...) we use Docbkx Tools (https://code.google.com/p/docbkx-tools/) and its docbkx-maven-plugin.

To generate the documents in PDF format use following:
```
$ mvn package -P pdf
```

To generate the documents in HTML format use following:
```
$ mvn package -P ug-html
$ mvn package -P dev-html
```

You can use any other goal of docbkx-maven-plugin to generate the documents in other formats.

Versioning
----------

This repository does not use any special workflow and everything is commited directly to master for now.
The documentation releases are likely to be tagged.

Bug reporting
-------------

Please report bugs to https://github.com/PerfCake/PerfCake/issues
