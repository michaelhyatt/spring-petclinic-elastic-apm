pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package -Dmaven.test.skip=true'
            }
        }
        stage('Deploy'){

          steps {
              timeout(time: 240, unit: 'SECONDS') {
                pushToCloudFoundry(
                target: 'api.system.pcf-full.bvader.net',
                organization: 'elastic-demo-org',
                cloudSpace: 'demo-space-sandbox',
                credentialsId: 'pcfcreds'
                )
              }
            }
        }
    }
}
