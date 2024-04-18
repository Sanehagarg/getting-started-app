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
                          docker.withRegistry('https://hub.docker.com/repository/docker/sanehagarg/getting-started', 'sanehagarg-docker') {
                             docker.image('getting-started').push()
                               }
                     }
             }

                }
        // stage('Deploy') {
        //     steps {
        //         echo "deploying..."
        //     }
        // }
    }
}
