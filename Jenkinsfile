pipeline{
    agent any
    stages{
        stage('github-actions'){
            steps{
                sh 'chmod +x ./github/script.sh'
                sh './github/script.sh'
            }
        }
        stage('cleanup-workspace'){
            steps{
                deleteDir()
            }
        }
    }
}
