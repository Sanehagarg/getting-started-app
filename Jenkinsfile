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
                          // docker.withRegistry('https://hub.docker.com/repository/docker/sanehagarg/getting-started', 'sanehagarg-docker') {
                          //    docker.image('getting-started').push()
                //             withDockerRegistry([credentialsId: 'sanehagarg-dockerid', url: 'https://hub.docker.com']) {
                // docker.image("getting-started").push("latest")
                           docker.withRegistry('https://hub.docker.com/repository/docker/sanehagarg/', 'sanehagarg-dockerid') {
                           def customImage = docker.build("my-image:${env.BUILD_ID}")
                          /* Push the container to the custom Registry */
                           customImage.push()
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
