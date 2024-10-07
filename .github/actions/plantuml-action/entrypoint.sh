#!/bin/sh -l

set -e

# Extract the input values from environment variables
DIAGRAM_DIR="${INPUT_DIAGRAM_DIR}"
OUTPUT_DIR="${INPUT_OUTPUT_DIR}"

# Debug: Print the values
echo "DIAGRAM_DIR: $DIAGRAM_DIR"
echo "OUTPUT_DIR: $OUTPUT_DIR"

# Ensure we're in the correct workspace
cd /github/workspace

# Create input and output directories if they don't exist
mkdir -p "$DIAGRAM_DIR"
mkdir -p "$OUTPUT_DIR"

# Get absolute paths
DIAGRAM_DIR_ABS="$(cd "$DIAGRAM_DIR" && pwd)"
OUTPUT_DIR_ABS="$(cd "$OUTPUT_DIR" && pwd)"

# Run PlantUML command with absolute paths
java -jar /app/plantuml.jar -tpng "$DIAGRAM_DIR_ABS"/*.puml -o "$OUTPUT_DIR_ABS"

# Debug: List the contents of the output directory
echo "Contents of $OUTPUT_DIR_ABS after generation:"
ls -R "$OUTPUT_DIR_ABS"