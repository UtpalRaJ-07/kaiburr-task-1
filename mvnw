#!/bin/sh
set -e
WRAPPER_JAR="$(dirname "$0")/.mvn/wrapper/maven-wrapper.jar"
WRAPPER_URL="https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar"
if [ ! -f "$WRAPPER_JAR" ]; then
  echo "Downloading Maven wrapper..."
  curl -fsSL "$WRAPPER_URL" -o "$WRAPPER_JAR"
fi
exec java -jar "$WRAPPER_JAR" "$@"
