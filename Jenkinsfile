pipeline {
    agent { dockerfile true }
    stages {
        stage('Test'){
            steps{
            echo "port:3000"
            script {
            dockerImage.inside("-itu root") {
                sh 'docker ps'
                }
            }
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
