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
        withCredentials([usernamePassword(credentialsId: 'docker_jenkins', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
            bat "echo ${env.DOCKERHUB_PASSWORD} | docker login -u ${env.DOCKERHUB_USERNAME} --password-stdin"
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
