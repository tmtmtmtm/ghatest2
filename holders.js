module.exports = () => {
  return `SELECT DISTINCT ?person ?start ?end WHERE {
    ?person wdt:P31 wd:Q5 ; p:P39 ?ps .
    ?ps ps:P39 wd:Q19305384 ; pq:P580 ?start ; pq:P582 ?end .
  }
  # ${new Date().toISOString()}
  ORDER BY ?person ?start ?end ?ps`
}

