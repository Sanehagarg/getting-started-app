pipeline {
 agent any

 stages {
 stage('Test') {
 steps {
 bat 'pip install -r requirements.txt'
 bat 'pytest tests/'
 }
 }
 }
}
