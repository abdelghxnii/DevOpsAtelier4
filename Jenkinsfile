pipeline {
    environment {
        registry = "abdelghxnii/jenkinsdocker"
        registryCredential= 'dockerhub'
        dockerImage = 'openjdk:8'
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
            steps{
                script{
                docker.withRegistry('', registryCredential){
                    dockerImage.push()
                }
            }
            }
        }
    }
}
