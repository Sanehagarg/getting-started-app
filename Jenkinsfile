pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials('sanehagarg-docker')
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
        withCredentials([string(credentialsId: 'jenkins', variable: 'DOCKERHUB_ACCESS_TOKEN')]) {
            bat 'docker login -u sanehagarg -p %DOCKERHUB_ACCESS_TOKEN%'
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
