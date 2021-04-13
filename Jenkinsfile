pipeline {
    agent { dockerfile true }
    stages {
        stage('Test'){
            steps{
            echo "port:3000"
            sh 'docker build -t . .'
            sh 'docker run -p 3000 -d'
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
