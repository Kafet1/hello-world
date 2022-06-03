pipeline {
agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Building ..." '
	build job: "ci-maven3"
	}
    }
    stage('Deploy') {
      steps {
        sh 'echo "Deploying ..." '
	build job: "cd-tomcat"
        }
    }

  }
}
