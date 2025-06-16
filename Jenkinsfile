pipeline {
  agent any
  stages {
    stage('Clone & Build Docker') {
      steps {
        git 'https://github.com/YOUR_USERNAME/fact-app-ci.git'
        sh 'docker build -t fact-app-ci .'
      }
    }
    stage('Run Container') {
      steps {
        sh 'docker run fact-app-ci'
      }
    }
  }
}
