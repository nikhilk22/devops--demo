
peline {
    agent any

    stages {
        stage('Clone') {
            steps {
                 git branch: 'main', url: 'https://github.com/nikhilk22/devops-demo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-demo .'
            }
        }

        stage('Run Container') {
																            steps {
                 sh 'docker run -d -p 5000:5000 devops-demo'
            }
       }
   }
}





















