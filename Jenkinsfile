pipeline {
    enviroment {
        registry = "amrakmal/proj_img"
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
                    def docker.build registry + ":latest"
                }
            }
        }
        stage('Upload to AWS') {
            steps {
                withAWS(region:'us-east-2',credentials:'aws-static') {
                sh 'echo "Uploading content with AWS creds"'
                    s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'index.html', bucket:'proj3-submit')
                }
            }
        }
    }