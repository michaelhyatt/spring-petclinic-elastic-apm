# spring-petclinic-elastic-apm
Spring pet clinic instrumented with Elastic APM, Distributed tracing, heartbeat and more using docker-compose.

## Intro
Runs locally the following components:
* petclinic Spring Boot app instrumented with Elastic Java and RUM APM agents.
* Nginx as reverse proxy
* Elastic APM server
* Elasticsearch
* Kibana
* Heartbeat that is used as load generator and for health checks.

## Prerequisites
Docker destop with docker-compose

## To run
Change TAG value to the latest and greatest version of Elastic stack
```bash
$ git clone https://github.com/michaelhyatt/spring-petclinic-elastic-apm
$ cd spring-petclinic-elastic-apm
$ TAG=7.2.0 docker-compose up
```
