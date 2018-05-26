#!/usr/bin/env bats
 
@test "Validate status code for cassandra transport port" {
  run systemctl status cassandra
  [ "$status" -eq 0 ]
}

@test "Validate status code for jmx metrics exporter" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:9404/metrics
  [[ $output = "200" ]]
}