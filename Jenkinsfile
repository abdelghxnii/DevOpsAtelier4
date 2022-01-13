pipeline {
    environment {
        registry = "abdelghxnii/jenkinsdocker"
        registryCredential= 'dockerhub'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Build'){
            steps{
                sh 'mvn package'
            }
        }
        stage('Building image'){
            steps{
                script{
                    dockerImage = docker.build registry + ":$BUILD NUMBER"
                }
            }
        }
        stage('Deploy image'){
            script{
                docker.withRegistry('', registryCredential){
                    dockerImage.push()
                }
            }
        }
    }
}
