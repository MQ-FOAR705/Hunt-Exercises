#!/usr/bin/env bats

@test "making sure there is a file to start with" {
  result="$(ls -1 ../data/*.txt | wc -l)"
  [ "$result" -gt 0 ]
}
