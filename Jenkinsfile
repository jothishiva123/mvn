pipeline {
agent any 
     tools {
         maven 'maven3'
         }
      stages {
        stage ('Build maven') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'jothishiva123', url: 'https://github.com/jothishiva123/mvn.git']]])
                sh 'mvn clean package'
                echo 'Build Completed'
                }
        }
   stage('Code Analysis') {
            steps {
                withSonarQubeEnv('sonarqube') {
                sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar'
                                             }
               }
                                }
stage ('Build Docker image') {
            steps {
                script {
                    sh 'docker build -t jothimanikandanraja/mynewapp .'
                }
            }
        }
         stage('Push Docker Image') {
            steps {
                script {
                 withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhub')]) {
                     sh 'docker login -u jothimanikandanraja -p ${dockerhub}'
  

                    
                 }  
                 sh 'docker push jothimanikandanraja/mynewapp'
                }
            }
        }
    }
}  
