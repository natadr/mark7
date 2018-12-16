pipeline {
    agent 'ruby'
    environment {
        CI = true
    }
    stages('Bundle') {
        steps {
            sh "bundle install"
        }
    }
}