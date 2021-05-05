pipeline {
  agent any
  stages{
    stage('Build') {
      steps {
        sh 'rm  ~/.dockercfg || exit 0'
        sh 'rm ~/.docker/config.json || exit 0'
        script {
          docker.withRegistry('https://473798018071.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:aws-credentials') {
            def customImage = docker.build("mahek-test:${env.BUILD_ID}")
            customImage.push()
          }
        }
      }
    }
  }
}
