pipeline {
    agent any
    tools {
      
      jdk "java"
      gradle "gradle"
      
      
   }
    stages {
        stage('pulling from git'){
              steps{
                echo 'git pulling successful'
                git credentialsId: 'd7b92d77-ae14-4718-8282-5552c33d6dff', url: 'https://github.com/vivekragi/k8-demo.git'
              }
           }
        stage("Build the project") {
            steps {
                sh 'chmod +x gradlew'
                sh './gradlew build'
            }
        }
        stage("Create Docker image") {
            steps {
                sh 'docker build -t demo-boot .'
//                docker.build("bdd-demo")
            }
        }
        stage("Push image to GCR") {
            steps {
//                withCredentials([string(credentialsId: 'Internal Investment-206615', variable: 'DOCKER_CRED_DAKSHI')]) {
//                    sh "docker login -u ${DOCKER_BASE} -p ${DOCKER_CRED_DAKSHI}"
//                }
                sh 'pwd'
                sh 'whoami'
                sh 'docker images'
                sh 'docker tag demo-boot gcr.io/internal-investment-206615/demo-boot'
                sh 'docker images'
                // This step should not normally be used in your script. Consult the inline help for details.
                withDockerRegistry(credentialsId: 'gcr:Internal Investment-206615', url: 'https://gcr.io') {
                    sh 'docker push gcr.io/internal-investment-206615/demo-boot'
//                    app.push("${env.BUILD_NUMBER}")
//                    app.push("latest")
                }
//                sh 'docker login -u _json_key -p "$(cat keyfile.json)" https://gcr.io'
//                sh 'docker push gcr.io/internal-investment-206615/bdd-demo'
            }
        }
    }
}
