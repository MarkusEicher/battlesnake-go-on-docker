pipeline {
  agent any
  stages {
    stage('CheckOutCode') {
      steps {
        git(url: 'https://github.com/MarkusEicher/battlesnake-go-on-docker', branch: 'main')
      }
    }

    stage('ListDirContent') {
      steps {
        sh 'ls -la'
      }
    }

  }
}