#!/usr/bin/env bats

@test "Testuite reporte no failures" {
  run xmllint --xpath '//@failures = 0' result/*.xml
  [ "$status" -eq 0 ]
  [ "$output" = true ]
}

@test "Testuite reporte no errors" {
  run xmllint --xpath "//@errors = 0" result/*.xml
  [ "$status" -eq 0 ]
  [ "$output" = true ]
}
