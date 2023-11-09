pipeline {
    agent any
        environment{
            REPOSITORY_NAME = "prometheus"
            EC2_INSTANCE = "52.213.107.240"
            AWS_REGION = credentials('AWS_REGION')
            AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
            AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
            SSH_KEY = credentials('SSH_KEY')
        }
    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
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
