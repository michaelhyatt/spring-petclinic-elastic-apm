# run with Java APM Agent without trace_methods
java -javaagent:./elastic-apm-agent-1.6.0.jar `
"-Delastic.apm.server_urls=http://localhost:8200" `
"-Delastic.apm.secret_token=apm_secret_token" `
"-Delastic.apm.service_name=spring-petclinic-monolith" `
"-Delastic.apm.application_packages=org.springframework.samples" `
-jar target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar

# Add Trace Methods property to above run command
# This will trace all methods in the package.
#"-Delastic.apm.trace_methods=org.springframework.samples.petclinic.*" `
