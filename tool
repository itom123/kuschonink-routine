#!/bin/sh
# The routine's tool, from 74f5b46f55a0: scripts/suggestions/tool.mts next to this script, wherever the
# folder is, with the node on PATH. NODE_USE_ENV_PROXY: Node's fetch goes through
# the proxy in HTTPS_PROXY, as curl and npm do, when the session names one.
export NODE_USE_ENV_PROXY=1
exec node --experimental-strip-types --no-warnings "$(dirname "$0")/scripts/suggestions/tool.mts" "$@"
