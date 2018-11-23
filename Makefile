PRESTO_VERSION=0.192
JAR_URL= "http://search.maven.org/remotecontent?filepath=com/facebook/presto/presto-cli/$(PRESTO_VERSION)/presto-cli-$(PRESTO_VERSION)-executable.jar"
JAR_FILE=presto-cli

fetch:
	wget -O ${JAR_FILE} ${JAR_URL}

rpm:
	/bin/bash ./buildrpm.sh
