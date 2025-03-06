pipeline{
    agent any
    stages{
        stage('github-actions'){
            steps{
                sh 'chmod +x ./github/test-script-2.sh'
                sh './github/test-script-2.sh'
            }
        }
    }
}
