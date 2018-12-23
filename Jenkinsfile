pipeline {
    agent any
    stages {
        stage ('Build Servlet Project') {
            steps {
                /*For windows machine */
               //bat  'mvn clean package'

                /*For Mac & Linux machine */
                 sh  'mvn clean package checkstyle:checkstyle'
            }
            steps{
                sh 'docker build . -t tomcatwebpass:{$env.BUILD_ID}'
            }

            post{
                success{
                    echo 'Now Archiving ....'

                    archiveArtifacts artifacts : '**/*.war'
                }
            }

}              
        
    }
}

