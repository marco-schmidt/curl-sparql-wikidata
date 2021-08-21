#!/bin/sh

# Purpose:  send SPARQL query to WikiData
# Created:  2021-08-21
# Required: curl, network connection
# Usage:    ./wikidata-sparql.sh
# See:      https://www.mediawiki.org/wiki/Wikidata_Query_Service/User_Manual#SPARQL_endpoint

# SPARQL script file name
SCRIPT_NAME=people-twitter.rq

# output format, one of:
# application/json
# text/csv
# text/tab-separated-values
# text/turtle
OUTPUT_FORMAT=application/json

curl --data-urlencode "query@${SCRIPT_NAME}" -H "Accept: ${OUTPUT_FORMAT}" https://query.wikidata.org/bigdata/namespace/wdq/sparql
