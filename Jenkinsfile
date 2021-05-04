pipeline {
  agent any
  stages{
    stage('Build') {
      steps {
        sh 'rm  ~/.dockercfg || exit 0'
        sh 'rm ~/.docker/config.json || exit 0'
        script {
          env.AWS_SESSION_TOKEN = "IQoJb3JpZ2luX2VjEHQaCXVzLXdlc3QtMiJIMEYCIQDW2r2NU+IMfcSGGiPf/8CWpmryRQW3Kl/ekcc8EIRhSQIhAIDJLesIDNeDoeReu/aT+5vYl1J+xTfuY6XBy42vgVbNKsICCO3//////////wEQARoMNjI1Nzc3MzQ2MzI0Igz5WHwIOWwf4XCzkWoqlgJH8gtlscayNRO0trF7fOhgcEeK3izcv2mH9arNeRJqm6IrTyqMrdw7Y+27ASXo9Zd+j9RAoNMY9zRtqMlAvgOHKr1xJsgJLAcMckU8g6f4jomFastOksSrsYSmxKOEE5ejyNezS2CyYTlrqQoEbCEBNVT08P+/2zMDfYVL0PRFvgD/BPbtOzy9Ol4tyun05M97zepVzsPSPbCrqLh0HgFY3ioxYAHxhhdGMCaHT2x+taNDF6UuN5j08R45IjgxkaNHxCzMZsNRZEsm3q2RtplM3w9y6HFpUN/KMwy64PA+e/WWDpH3qu+rmf8PZ6CrTCB/+J5PDYAnzwbXJ1C38mIc2imTXBJiBWRPHjBFk9RYHwB+5suCPjDM8MSEBjqcAS/KH3C2o/dV4A6BXpW54phHmzlT/ACbnZIR+ePxeL/WX7mJFN/dQpd/tHn/CDHJjT16QWA2mIo6WXUgmuXZTOrLP5ZaNrFAkPCsRrZK/jbpj8OB/rVRCDsutJCvRzdArfRh0gPl52l0qt82OdF9xkcUXYmPS5N8vLTEZTcs8Ds8UzfpxNKqa4ReQ0IoQkkl+Cvy4KuQ4jILOC9/dw="=
          docker.withRegistry('https://625777346324.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:aws-credentials') {
            def customImage = docker.build("hello-world:${env.BUILD_ID}")
            customImage.push()
          }
        }
      }
    }
  }
}
