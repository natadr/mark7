pipeline {
    agent{
        docker {
            image 'ruby'
            args '--link selenium'
        }
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
        stage('Run Features') {
            steps {

                try {
                    sh "cucumber -p ci"
                } finally {
                    cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', sortingMethod: 'ALPHABETICAL'
                }                           
            }
        }
        stage('Read to Production?') {
            steps{
                input message: 'Testes finalizados com sucesso. Podemos ir para produção?'
                echo "Subindo para produção"
            }
        }
    }
}