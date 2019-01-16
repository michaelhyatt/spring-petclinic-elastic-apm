# run with Java APM Agent without trace_methods
java -javaagent:./elastic-apm-agent-1.3.0.jar `
"-Delastic.apm.server_urls=http://localhost:8200" `
"-Delastic.apm.service_name=spring-petclinic-monolith" `
"-Delastic.apm.application_packages=org.springframework.samples" `
-jar target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar

# run with Java APM Agent with trace_methods
java -javaagent:./elastic-apm-agent-1.3.0.jar `
"-Delastic.apm.server_urls=http://localhost:8200" `
"-Delastic.apm.service_name=spring-petclinic-monolith" `
"-Delastic.apm.application_packages=org.springframework.samples" `
"-Delastic.apm.trace_methods=org.springframework.samples.petclinic.*.*#*" `
-jar target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar
