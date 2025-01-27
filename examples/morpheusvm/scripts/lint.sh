#!/usr/bin/env bash
# Copyright (C) 2023, Ava Labs, Inc. All rights reserved.
# See the file LICENSE for licensing terms.

set -o errexit
set -o pipefail
set -e

if ! [[ "$0" =~ scripts/lint.sh ]]; then
  echo "must be run from morpheusvm root"
  exit 255
fi

# Specify the version of golangci-lint. Should be upgraded after linting issues are resolved.
export GOLANGCI_LINT_VERSION="v1.51.2"
export ADD_LICENSE=false
../../scripts/lint.sh
