pipeline {
    stages {
        stage('Test'){
            agent { dockerfile true }
            steps{
            echo "port:3000"
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
