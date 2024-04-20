pipeline {
 agent any

 stages {
 stage('Test') {
 steps {
 bat "C:\\Users\\GARG\\Python311 -m pytest tests/"
 bat 'pip install -r requirements.txt'
 bat 'pytest tests/'
 }
 }
 }
}
