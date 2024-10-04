#!/bin/sh -l

# Assign the inputs from GitHub Actions
DIAGRAM_DIR=$1
OUTPUT_DIR=$2

# Ensure the output directory exists
mkdir -p "$OUTPUT_DIR"

# Run PlantUML to generate the diagrams
java -jar /app/plantuml.jar -tpng "$DIAGRAM_DIR"/*.puml -o "$OUTPUT_DIR"

