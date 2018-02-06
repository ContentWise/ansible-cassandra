#!/usr/bin/env bats
 
@test "Validate status code for cassandra transport port" {
  run sleep 10 && /opt/cassandra/bin/nodetool status
  [ "$status" -eq 0 ]
}

@test "Validate status code for jmx metrics exporter" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:7070/metrics
  [[ $output = "200" ]]
}