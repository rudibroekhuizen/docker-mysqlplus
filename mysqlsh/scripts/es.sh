#!/bin/bash

for i in {30..0}; do
  if curl elasticsearch:9200; then
    curl -XPUT 'elasticsearch:9200/logstash-*/_settings' -H 'Content-Type: application/json' -d'
      {
        "index" : {
          "mapping" : {
           "total_fields" : {
             "limit" : "2000"
           }
         }
       }
     }'
  break;
fi

sleep 2
done

# GET /logstash-*/_settings?pretty
