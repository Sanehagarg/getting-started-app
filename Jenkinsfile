pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials('dockerid_saneha')
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
        withCredentials([string(credentialsId: 'dockerid_saneha', variable: 'DOCKERHUB_CREDENTIALS_PSW')]) {
            bat "echo %DOCKERHUB_CREDENTIALS_PSW% | docker login -u %DOCKERHUB_CREDENTIALS_USR% --password-stdin"
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
