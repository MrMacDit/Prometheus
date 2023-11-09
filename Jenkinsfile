pipeline {
    agent any
        environment{
            REPOSITORY_NAME = "Prometheus Server"
            EC2_INSTANCE = "3.252.51.232"
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
        stage ('Install && start Docker') {
            steps {
                sh """
                    ssh -i ${SSH_KEY} -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ec2-user@${EC2_INSTANCE}
                    sudo yum install docker git -y
                    sudo systemctl start docker
                """
            }
        }
        stage ('Docker up prometheus'){
            steps {
                sh """
                    ssh -i ${SSH_KEY} -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ec2-user@${EC2_INSTANCE}
                    sudo curl -L https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
                    sudo chmod +x /usr/local/bin/docker-compose
                    git clone https://github.com/techbleat/prometheus.git prometheus
                    cd prometheus
                    sudo docker-compose up
                """
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
