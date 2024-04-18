pipeline {
     agent any
         stages {
             stage('Build Docker Image') {
                 steps {
                   script {
                     docker.build('getting-started')
             }
         }
      }
             stage('Push Docker Image') {
                 steps {
                         script {
            // Log in to Docker Hub using the access token credential
            withCredentials([string(credentialsId: 'sanehagarg-docker', variable: 'DOCKER_ACCESS_TOKEN')]) {
                // Push the Docker image
                docker.withRegistry('', 'sanehagarg-docker') {
                    docker.image('getting-started').push()
                }
            }
                     }
           }
             }
            stage('Deploy') {
                steps {
                     echo "deploying..."
             }
         }
     }
    }
