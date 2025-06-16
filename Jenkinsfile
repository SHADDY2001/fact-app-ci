pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/SHADDY2001/fact-app-ci.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t shaddy100601/myapp .'
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin'
                    sh 'docker push shaddy100601/myapp'
                }
            }
        }
    }
}
