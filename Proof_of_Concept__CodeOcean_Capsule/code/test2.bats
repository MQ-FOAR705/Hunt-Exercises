#!/usr/bin/env bats

@test "making sure eight files were produced" {
  result="$(ls -1 ../results/*.txt | wc -l)"
  [ "$result" -eq 8 ]
}
