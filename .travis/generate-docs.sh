#!/usr/bin/env bash

if [[ "${GENERATE_DOC}" != "YES" ]]; then
  exit 0
fi

jazzy \
  --clean \
  --author "Tommaso Madonia" \
  --github_url "https://github.com/${TRAVIS_REPO_SLUG}" \
  --xcodebuild-arguments "-workspace,${WORKSPACE},-scheme,${SCHEME}" \
  --module "SwiftSH" \
  --output "docs/"
