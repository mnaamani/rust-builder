#!/usr/bin/env bash
set -e

# Install OS dependencies
curl https://getsubstrate.io -sSf | bash -s -- --fast

# Update rust
if [ -z $CI_PROJECT_NAME ] ; then
   rustup update nightly
   rustup update stable
fi

# Add WASM toolchain
rustup target add wasm32-unknown-unknown --toolchain nightly