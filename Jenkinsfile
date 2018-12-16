pipeline {
    agent {
        image 'none'
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