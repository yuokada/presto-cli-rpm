PRESTO_VERSION=304
JAR_URL= "http://search.maven.org/remotecontent?filepath=io/prestosql/presto-cli/$(PRESTO_VERSION)/presto-cli-$(PRESTO_VERSION)-executable.jar"
JAR_FILE=presto-cli

fetch:
	wget -O ${JAR_FILE} ${JAR_URL}

rpm:
	/bin/bash ./buildrpm.sh
