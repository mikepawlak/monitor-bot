pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                slackSend color: 'good', message: 'Starting job for monitor-bot...'
                sh 'helm repo update'
                sh './deployBot.sh'
            }
        }
    }
} 