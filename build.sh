#!/bin/sh
# Build script for the project
HEREDIR=$(CDPATH="" cd -- "$(dirname -- "$0")" && pwd)
(

	cd "$HEREDIR"

	if [ ! -d "./.venv" ]; then
		echo "Creating a virtual environment"
		python3 -m venv .venv
	fi

	. .venv/bin/activate

	pip3 install -r requirements.txt
)