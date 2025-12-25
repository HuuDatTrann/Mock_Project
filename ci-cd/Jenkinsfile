pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Restore') {
            steps {
                sh '''
                cd backend/src/Cms.Api
                dotnet restore
                '''
            }
        }

        stage('Build') {
            steps {
                sh '''
                cd backend/src/Cms.Api
                dotnet build -c Release --no-restore
                '''
            }
        }

        stage('Publish') {
            steps {
                sh '''
                cd backend/src/Cms.Api
                dotnet publish -c Release -o publish --no-build
                '''
            }
        }
    }
}
