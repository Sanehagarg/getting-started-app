pipeline {
 agent any
 stages {
 stage('Build') {
 steps {
 echo "building..."
 }
 }
 stage('Deploy') {
 steps {
  echo "delpoying..."
 }
 }
 stage('Test') {
 steps {
 echo "testing..."
 }
 }
 stage('Rollback') {
 when {
© 2023. All Rights Reserved. 26
 failure() // Execute rollback stage only on deployment failure
 }
 steps {
 // Execute rollback script
 sh './rollback.sh'
 }
 }
 }
 post {
 always {
 echo "cleaning..."
 }
 }
}
