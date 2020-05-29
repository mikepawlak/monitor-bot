pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'helm repo update'
                sh './deployBot.sh'
            }
        }
    }
} 