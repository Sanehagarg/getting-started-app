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
                      docker.withRegistry('<registry-url>', 'sanehagarg-docker') {
                      docker.image('getting-started').push()
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
