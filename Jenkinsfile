pipeline{
    agent any
    stages{
        stage('github-actions'){
            steps{
                sh 'chmod +x ./github/test-script-3.sh'
                sh './github/test-script-3.sh'
            }
        }
        stage('cleanup-workspace'){
            steps{
                deleteDir()
            }
        }
    }
}
