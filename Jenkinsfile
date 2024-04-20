pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials('newdockerhub')
    }
    stages {
        stage('Build Docker Image') {
            steps {
              bat 'docker build -t Sanehagarg/getting-started-app:latest .'
            }
        }
        stage('Login') {
    steps {
        bat 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
    }
}
        stage('Push Docker Image') {
                    steps {
                     bat 'docker push Sanehagarg/getting-started-app:latest'
                    }
                }
        }
        // stage('Deploy') {
        //     steps {
        //         echo "deploying..."
        //     }
        // }
}
