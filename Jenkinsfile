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
        stage('Login'){
            steps{
                bat 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push Docker Image') {
                    steps {
                    docker.image('getting-started').push("Your commit message or any relevant message")
              }
                }
        }
        // stage('Deploy') {
        //     steps {
        //         echo "deploying..."
        //     }
        // }
}
