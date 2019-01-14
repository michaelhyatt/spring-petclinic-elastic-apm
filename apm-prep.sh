#!/bin/bash
# Get the java APM agent
curl -O  https://search.maven.org/remotecontent?filepath=co/elastic/apm/elastic-apm-agent/1.3.0/elastic-apm-agent-1.3.0.jar

# Update the archive
jar -ufv target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar -C ./apm-demo .
