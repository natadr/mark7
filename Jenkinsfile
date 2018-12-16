pipeline {
    agent {
        'none'
    }
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