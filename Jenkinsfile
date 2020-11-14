peline{

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
        stage('Build Image'){
            steps{
                sh 'docker build -t app:1.0 .'
            }
        }
        stage('Launch Container'){
            steps{
                sh 'docker run -itd -p9090:80 app:1.0'
                sh 'java -jar app/app.jar'
            }
        }
        stage('Test'){
            steps{
                sh 'curl http://localhost'
            }
        }



    }

}
