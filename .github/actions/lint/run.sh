#!/bin/bash
set -e

./.vscode/tasks/scripts/setup.sh
ament_${LINTER} src/
