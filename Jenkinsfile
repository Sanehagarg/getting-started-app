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
                echo "deploying..."
        }
        }
        stage('Test') {
            steps {
                echo "testing..."
            }
        }
        stage('Rollback') {
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
def fileExists(String filePath) {
    return new File(filePath).exists()
}
