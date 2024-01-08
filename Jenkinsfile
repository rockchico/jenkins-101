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
                cd myapp
                pip install -r requirements.txt
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                echo "doing test stuff.."
                cd myapp
                python3 hello.py
                python3 hello.py --name=Francisco
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