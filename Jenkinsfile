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
 docker.withRegistry('<registry-url>', '<credentials-id>') {
 docker.image('getting-started').push()
 }
 }
 }
 }
  stage('Deploy') {
    steps {
      echo "deploying.."
 }
 }
 }
}
