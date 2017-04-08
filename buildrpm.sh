#!/bin/bash -x
WORK_DIR=`pwd`
BUILD_NAME=presto-cli
BUILD_SPEC=rpm/${BUILD_NAME}.spec
BUILD_DIR=${WORK_DIR}/rpmbuild
BUILD_NUMBER=${BUILD_NUMBER:=0}
PRESTO_VERSION=${PRESTO_VERSION:=0.171}
ARCHIVE_DIR=${WORK_DIR}/${BUILD_NAME}
JAR_URL="http://search.maven.org/remotecontent?filepath=com/facebook/presto/presto-cli/${PRESTO_VERSION}/presto-cli-${PRESTO_VERSION}-executable.jar"
JAR_FILE=${BUILD_NAME}
/bin/rm    -rf ${BUILD_DIR}
/bin/mkdir -p  ${BUILD_DIR}/{BUILD,RPMS,SOURCES,SPECS,SRPMS}

if [[ ! -e ${BUILD_NAME} ]]; then
  #statements
  wget -O ${JAR_FILE} ${JAR_URL}
fi

/bin/cp  ./presto-cli                               ${BUILD_DIR}/SOURCES/
/bin/cp  ./presto-cli                               ${BUILD_DIR}/BUILD/

/usr/bin/rpmbuild -v \
  --define "version ${PRESTO_VERSION}" \
  --define "release ${BUILD_NUMBER}%{?dist}" \
  --define "_topdir ${BUILD_DIR}" \
  -bb ${BUILD_SPEC}
