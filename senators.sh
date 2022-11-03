#!/bin/zsh

wd sparql holders.js -f csv --log-response-headers x-served-by > /tmp/OUT 2> /tmp/ERR

SERVER=$(jq -r '.response.headers["x-served-by"][0]' /tmp/ERR)
TIMESTAMP=$(date "+%Y%m%d%H%M%S")

sed -e 's=http://www.wikidata.org/entity/==g' /tmp/OUT | sed -e 's/T00:00:00Z//g' > "$SERVER-$TIMESTAMP.csv"
