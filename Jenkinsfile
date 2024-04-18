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
                    // Securely provide the Docker Hub password using --password-stdin
                    //sh 'echo "shiaagarg1234" | docker login -u sanehagarg --password-stdin'
                    // Push the Docker image
                    //docker.withRegistry('https://hub.docker.com', 'sanehagarg-dockerid') {
                    //    docker.image('getting-started').push()
                    //}
                    docker.withRegistry('https://hub.docker.com/repository/docker/sanehagarg/getting-started', 'sanehagarg-dockerid') {
                               docker.image('getting-started').push()
                }
            }
        }
        }
        stage('Deploy') {
            steps {
                echo "deploying..."
            }
        }
    }
}
