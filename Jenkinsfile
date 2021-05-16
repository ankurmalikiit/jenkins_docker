pipeline {
    agent master
    stages {
        stage('Docker build') {
            steps {
                sh 'docker build . -t ankur/first'
            }
        }
        stage('Run container') {
            steps {
                sh 'docker run --name nginxserver -d -p 8093:80 ankur/first'
            }
        }
		stage('Health check') {
            steps {
                sh './healthcheck.sh'
            }
        }
    }
}
