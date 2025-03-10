pipeline{
    agent any
    stages{
        stage('github-actions'){
            steps{
                sh 'chmod +x ./github/test-script.sh'
                sh './github/test-script.sh'
            }
        }
        stage('cleanup-workspace'){
            steps{
                deleteDir()
            }
        }
    }
}
