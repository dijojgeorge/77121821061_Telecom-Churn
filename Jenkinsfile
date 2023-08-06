pipeline {
    agent any

    environment {
        // Define environment variables if needed
        DOCKER_IMAGE_NAME = "77121821061_Telecom_Churn"
        DOCKER_IMAGE_TAG = "TC" // You can use any desired tag
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from the version control system (e.g., Git)
                git 'https://github.com/dijojgeorge/77121821061_Telecom_Churn.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build your Docker image using Dockerfile in the project directory
                script {
                    bat 'sh "docker build -t 77121821061_Telecom_Churn:TC ."'
                    }
            }
        } 
        stage('Run Docker Image') {
            steps {
                // Run your Docker image using Dockerfile in the project directory
                script {
                    bat 'sh \'docker run 77121821061_Telecom_Churn:TC\''
                }
            }
        }
         stage('Push Docker Image') {
            steps {
                // Login to Docker or your preferred container registry
                script {
                    bat 'sh "docker login -u dijojgeorge --password-stdin Logindijo@1"'
                }
            }
        }        
    }

    post {
        always{
            // Clean up any temporary files or resoruces if needed 
            // For example, clean up docker images and containers
            bat 'sh \'docker rmi ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}\''
            bat 'sh \' docker system prune - f\''
        }
    }
}
