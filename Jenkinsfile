pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                bat "pip install -r requirements.txt"
                bat "python -m unittest discover -s tests -p '*_test.py'"
            }
        }
    }
}
