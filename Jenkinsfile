pipeline {
  agent any
  stages {
    stage('CheckOutCode') {
      steps {
        git(url: 'https://github.com/MarkusEicher/battlesnake-go-on-docker', branch: 'main')
      }
    }

    stage('ListDirContent') {
      parallel {
        stage('ListDirContent') {
          steps {
            sh 'ls -la'
          }
        }

        stage('FrontEndUnitTest') {
          steps {
            sh 'go mod tidy -v'
          }
        }

      }
    }

  }
}