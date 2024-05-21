#!/bin/bash
set -x

err_report() {
  echo "Error on line $1"
  exit 1
}

trap 'err_report $LINENO' ERR

git clone --depth 1 https://github.com/jberet/jsr352.git

pushd jsr352
mvn install -DskipTests
echo "build jsr352 result: $?"
jberet_ver=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)
popd

mvn clean install \
  "-Dversion.org.wildfly=${WILDFLY_VER}" \
  '-Dversion.wildfly-maven-plugin=5.0.0.Final' \
  "-Dversion.jberet=${jberet_ver}" \
  '-Pprovision-preview'