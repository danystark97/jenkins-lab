pipeline {
    agent any

    environment {
        PATH = "/var/jenkins_home/bin:${env.PATH}"
    }

    stages {

        stage('Init') {
            steps {
                dir('terraform-demo') {
                    sh 'terraform init'
                }
            }
        }

        stage('Validate') {
            steps {
                dir('terraform-demo') {
                    sh 'terraform validate'
                }
            }
        }

        stage('Plan') {
            steps {
                dir('terraform-demo') {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Approval') {
            steps {
                input message: 'Confermi apply?'
            }
        }

        stage('Apply') {
            steps {
                dir('terraform-demo') {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}
