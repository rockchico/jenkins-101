pipeline {
    agent { 
        node {
            label 'docker-build-agent'
        }
    }

    triggers {
        pollSCM 'H/1 * * * *'
    }

    stages {
        stage('Build') {
            steps {
                echo "Building 1234.."
                sh '''
                echo "doing build stuff.."
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                echo "doing test stuff.."
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}