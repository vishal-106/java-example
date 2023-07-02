pipeline{
    agent any
}
stages {
  stage('checkout') {
    steps {
      git branch: 'main', url: 'https://github.com/Dev-april-2023/java-example.git'
    }
  }

  stage('build') {
    steps {
      sh 'mvn clean install'
    }
  }

  stage('deply') {
    steps {
      git --version 
    }
  }

}
