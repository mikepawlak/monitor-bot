pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                slackSend color: 'good', message: 'Starting job for monitor-bot...'
                echo 'Setting context'
                sh "kubectl config use-context kubernetes-admin@kubernetes "
                echo 'running deploy script'
                sh 'helm repo update'
                sh './deployBot.sh'
            }
        }
    }
} 