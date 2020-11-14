pipeline{

    agent any

    tools{
        maven 'm3'
        jdk 'jdk8'
    }

    stages{
        stage('Checkout'){
            steps{
                git 'https://github.com/NawidSafari/gitjenkinsdocker.git'
            }
        }
        stage('Compile'){
            steps{
                sh 'mvn clean compile'
            }
        }
        stage('Test'){
            steps{
                sh 'mvn clean test'
            }
        }
        stage('Package'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('ArchiveArtifact'){
            steps{
                archiveArtifacts 'target/*.jar'
            }
        }    
    }
}
