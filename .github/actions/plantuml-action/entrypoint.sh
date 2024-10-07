#!/bin/sh -l

DIAGRAM_DIR=$1
OUTPUT_DIR=$2

mkdir -p "$OUTPUT_DIR"

cd "$DIAGRAM_DIR"

for file in *.puml; do
    java -jar /app/plantuml.jar -tpng "$file" -o "$OUTPUT_DIR"
done
