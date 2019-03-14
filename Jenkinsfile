pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    environment {
        PCF_CREDS = credentials('pcfcreds')
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package -Dmaven.test.skip=true'
            }
        }
        stage('Deploy'){
            steps {
               sh 'cf login -u $PCF_CREDS_USR -p $PCF_CREDS_PSW -a api.system.pcf-full.bvader.net -o elastic-demo-org -s demo-space-sandbox'
               sh 'cf push'
            }
        }
    }
}



pipeline {
    agent any
    environment {
        PCF_CREDS = credentials('pcfcreds')

    }
    stages {
        stage('Example') {
            steps {
               sh 'cf login -u $PCF_CREDS_USR -p $PCF_CREDS_PSW -a api.system.pcf-full.bvader.net -o elastic-demo-org -s demo-space-sandbox'
            }
        }
    }
}
