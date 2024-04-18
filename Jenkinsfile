pipeline {
     agent any
         stages {
             stage('Build Docker Image') {
                 steps {
                   script {
                     docker.build('node:18-alpine')
             }
         }
      }
             stage('Push Docker Image') {
                 steps {
                    script {
                      docker.withRegistry('<registry-url>', 'sanehagarg-docker') {
                      docker.image('node:18-alpine').push()
             }
        }
      }
   }
         //    stage('Deploy') {
         //        steps {
         //             // Add deployment steps here (e.g., Kubernetes deployment)
         //     }
         // }
     }
    }
