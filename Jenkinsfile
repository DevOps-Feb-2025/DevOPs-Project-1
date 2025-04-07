pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'yourdockerhubusername/software-training-app:latest'
	tools = 'maven'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/DevOps-Feb-2025/DevOPs-Project-1.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE)
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials') {
                        docker.image(DOCKER_IMAGE).push()
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.image(DOCKER_IMAGE).run('-p 3000:3000')
                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline complete!'
        }
    }
}

