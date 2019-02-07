#!/usr/bin/env bash
# ver todos los elementos del json
# cat jsons/series.json | jq .

# ver en el primer indice del array
# cat jsons/series.json | jq .[0]

# ver como un solo string
# cat jsons/series.json | jq -c .[1]

# ver cantidad de objectos/indices en el json
# jq length jsons/series.json
# cat jsons/series.json | jq length
# cat jsons/series.json | jq '.[0] | length'
