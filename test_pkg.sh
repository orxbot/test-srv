#!/usr/bin/env bash
go test -v -coverprofile=coverage.out  -coverpkg  ./...
#go tool cover -html=coverage.out
# for junit
go test -v -coverprofile=coverage.out  -coverpkg  ./... 2>&1 | go-junit-report > report.xml