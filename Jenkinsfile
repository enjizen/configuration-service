pipeline {
    agent any

    tools {
        maven "M3"
    }

    stages {
        stage('Build') {
                   steps {
                       sh 'mvn -B -DskipTests clean package'
                   }
         }
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
    }
}