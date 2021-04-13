pipeline {
    agent none
    stages {
        stage('Test'){
            agent { dockerfile true }
            steps{
            echo "port:3000"
            sh "docker ps"
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
