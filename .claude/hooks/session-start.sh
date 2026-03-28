#!/bin/bash
set -euo pipefail

# Only run in remote (web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# No dependencies to install for this writing workspace.
# This hook ensures the session starts cleanly on Claude Code web.

# Ensure all workspace directories exist
cd "${CLAUDE_PROJECT_DIR:-.}"
mkdir -p working chapters drafts outlines research notes images archive
