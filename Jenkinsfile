pipeline {
    enviroment {
        registry = "amrakmal/proj_img"
        docker_cred = "dockerhub"
    }
    agent any
    stages {
        stage('Linting') {
            steps {
                sh 'tidy -q -e *.html'
                sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    dockerImage = docker.build registry + ":latest"
                }
            }
        }
        stage('Docker Push') {
            steps {
                script {
                    docker.withRegistry('', docker_cred) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}