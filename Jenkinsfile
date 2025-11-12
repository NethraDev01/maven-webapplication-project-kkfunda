node {

    echo "git branch name: ${env.BRANCH_NAME}"
    echo "build number is: ${env.BUILD_NUMBER}"
    echo "node name is: ${env.NODE_NAME}"

    // get maven tool path
    def mavenHome = tool name: 'maven_3.9.3'

    try {

        stage('Git Checkout') {
            notifyBuild('STARTED')
            git branch: 'Jenkins_practice', url: 'https://github.com/NethraDev01/maven-webapplication-project-kkfunda.git'
        }

        stage('Compile') {
            sh "${mavenHome}/bin/mvn clean compile"
        }

        stage('Build') {
            sh "${mavenHome}/bin/mvn clean package"
        }

        stage('SonarQube Analysis') {
            withSonarQubeEnv('SonarQube') {
                sh "${mavenHome}/bin/mvn sonar:sonar -DskipTests"
            }
        }

        stage('Upload Artifact') {
            sh "${mavenHome}/bin/mvn deploy"
        }

        stage('Deploy to Tomcat') {
            sh """
                curl -u kkfunda:password \
                --upload-file target/maven-web-application.war \
                "http://3.108.252.119:8080/manager/text/deploy?path=/maven-web-application&update=true"
            """
        }

        currentBuild.result = "SUCCESS"

    } catch (e) {
        currentBuild.result = "FAILURE"
        echo "Pipeline failed: ${e}"
        throw e

    } finally {
        notifyBuild(currentBuild.result)
    }
}


// ========== SLACK NOTIFICATION FUNCTION ==========
def notifyBuild(String buildStatus = 'STARTED') {

    echo "Calling notifyBuild with status: ${buildStatus}"
    buildStatus = buildStatus ?: 'SUCCESS'

    def colorCode = '#FF0000'  // default red

    if (buildStatus == 'STARTED') {
        colorCode = '#FFFF00' // yellow
    } else if (buildStatus == 'SUCCESS') {
        colorCode = '#00FF00' // green
    }

    def summary = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})"

    slackSend(color: colorCode, message: summary, channel: '#dev_project')
}
