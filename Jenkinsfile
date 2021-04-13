pipeline {
    agent none
    stages {
        stage('Test'){
            agent { dockerfile true }
            steps{
            echo "port:3000"
            sh 'docker stop demo_node'
            sh 'docker rm demo_node'
            sh 'docker build -t dockernode .'
            sh 'docker run --name=demo_node -p 5000:5000 -d dockernode'
            sh 'docker logs demo_node'
            sh 'docker exec -i -t demo_node /bin/bash'
            sh 'ls'
            sh "docker ps"
            input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
