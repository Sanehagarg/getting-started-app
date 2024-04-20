pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials('new_docker')
    }
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('getting-started')
                }
            }
        }
        stage('Login') {
    steps {
        withCredentials([string(credentialsId: 'new_docker', variable: 'DOCKERHUB_CREDENTIALS_PSW')]) {
          bat 'docker login -u saneha'
        }
    }
}

        stage('Push Docker Image') {
                    steps {
                     bat 'docker push getting-started'
                    }
                }
        }
        // stage('Deploy') {
        //     steps {
        //         echo "deploying..."
        //     }
        // }
}
