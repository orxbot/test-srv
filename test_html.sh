#!/usr/bin/env bash
gocov test -v   -coverpkg  ./...  > coverage.json
gocov-html coverage.json > coverage.html
