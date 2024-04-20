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
                // You might have deployment steps here
            }
        }
        stage('Test') {
            steps {
                echo "testing..."
            }
        }
        stage('Rollback') {
            when {
                expression { 
                    // Custom condition: Check if the flag file indicating successful deployment exists
                    return !fileExists('./deployment_success.txt')
                }
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

def fileExists(String filePath) {
    return file(./deployment_success.txt).exists()
}
