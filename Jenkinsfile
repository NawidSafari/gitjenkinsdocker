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
                sh 'Sudo docker build -t wrimage:1.0 .'
            }
        }
        stage('Launch Container'){
            steps{
                sh 'Sudo docker run -itd -p80:80 wrimage:1.0'
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
