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
                // Assume the deployment sets a flag or creates a file upon success
                // For example, touch a flag file named deployment_success.txt upon successful deployment
                script {
                    // This is just an example, you should adjust this according to your actual deployment mechanism
                    sh 'touch deployment_success.txt'
                }
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
                    return !fileExists('deployment_success.txt')
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
    return file(filePath).exists()
}
