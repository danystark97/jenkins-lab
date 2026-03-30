pipeline {
    agent any

    environment {
        PATH = "/var/jenkins_home/bin/terraform"
    }
    
    stages {        

        stage('Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Approval') {
            steps {
                input message: 'Confermi apply?'
            }
        }

        stage('Apply') {
            steps {
                sh 'terraform apply tfplan'
            }
        }
    }
}
