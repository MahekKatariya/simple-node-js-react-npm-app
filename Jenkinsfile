pipeline {
    agent { dockerfile true }
    stages {
        stage('Test'){
            steps{
            echo "port:3000"
            sh 'docker images'
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
