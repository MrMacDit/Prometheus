pipeline {
    agent any
        environment{
            REPOSITORY_NAME = "ansible_folder"
            EC2_INSTANCE = "3.252.51.232"
            SSH_KEY = credentials('SSH_KEY')

        }
    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                sh 'ansible --version'
            }
        }
        stage ('Installation and creation of Prometheus (group)') {
            steps {
                sh 'bash homeProm/prometheus_setup/installingPrometheus.sh' 
                echo 'Prometheus installed gracefully'
                echo 'Prometheus Group and User created'
            }
        }
        stage (''){
            steps {

            }
        }
    } 
    post {
        always {
            echo 'Always Post'
            deleteDir()
        }
    }
}
