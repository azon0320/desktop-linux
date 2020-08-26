#!/usr/bin/env bash

# ME_PATH
export GOPATH=${ME_PATH}/repo
export GOROOT=${ME_PATH}/soft/go
export GOBIN=${GOROOT}/bin

# Set PATH
export PATH=${PATH}:${GOBIN}
