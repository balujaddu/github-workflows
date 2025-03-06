pipeline{
    agent any
    stages{
        stage('github-actions'){
            steps{
                sh ./github/test-script.sh
            }
        }
    }
}
