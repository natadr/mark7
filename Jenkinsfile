pipeline {
    agent any
    environment {
        CI = true
    }
    stages {
        stage('Bundle') {
            steps {
                sh "bundle install"
            }
        }
    }
}