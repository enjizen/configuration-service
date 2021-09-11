pipeline {
    agent any

    tools {
        maven "M3"
    }

    stages {
          stage('Test') {
                     steps {
                         sh 'mvn test'
                     }
                    post {
                            success {
                                junit '**/target/surefire-reports/TEST-*.xml'
                                    archiveArtifacts 'target/*.jar'
                                 }
                        }
                 }
        stage('Build') {
                   steps {
                       sh 'mvn -B -DskipTests clean package'
                   }
         }
       
    }
}