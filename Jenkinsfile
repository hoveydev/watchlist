pipeline {
    agent any

    environment {
        LANG = 'en_US.UTF-8'
        LC_ALL = 'en_US.UTF-8'
        PATH = "/usr/local/bin:$PATH"
    }

    options {
        skipDefaultCheckout(true)
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mkdir -p build/reports'
                sh 'xcodebuild build-for-testing -scheme WatchList -destination "platform=iOS Simulator,name=iPhone 15 Pro,OS=17.0.1"'
            }
        }

        stage('Test Suite') {
            parallel {
                stage('Unit Test: iPhone 15 Pro, iOS 17.0.1') {
                    steps {
                        sh 'echo "Unit Tests"'
                        sh 'xcodebuild test-without-building -scheme WatchList -destination "platform=iOS Simulator,name=iPhone 15 Pro,OS=17.0.1" -enableCodeCoverage YES | /usr/local/bin/xcpretty -r junit --output ./build/reports/junit-17.0.1.xml'
                    }
                }

                stage('UI Automation') {
                    steps {
                        sh 'echo "UI Automation"'
                    }
                }
            }
            post {
                always {
                    junit testResults: '**/reports/junit-*.xml'
                }
            }
        }

        stage('Static analysis') {
            steps {
                parallel (
                    "Swiftlint": {
                        sh 'echo "SwiftLint"'
                        sh './Pods/SwiftLint/swiftlint lint --reporter checkstyle > ./build/reports/swiftlint-report.xml'
                        recordIssues enabledForFailure: true, tool: swiftLint(pattern: '**/build/reports/swiftlint-report.xml')
                    },
                    "IBLinter": {
                        sh 'echo "IBLinter"'
                    },
                    "JSCPD": {
                        sh 'echo "JSCPD"'
                        sh '/usr/local/bin/jscpd --reporters xml --format "swift" -o ./build/reports/ .'
                        recordIssues enabledForFailure: true, tool: cpd(pattern: '**/build/reports/jscpd-report.xml')
                    }
                )
            }
        }

        stage('Documentation') {
            when {
                expression {
                    env.BRANCH_NAME == 'develop'
                }
            }
            steps {
                // Generating docs
                sh 'jazzy'
                // Removing current version from web server
                sh 'rm -rf /path/to/doc/ios'
                // Copy new docs to web server
                // sh 'cp -a docs/source/. /path/to/doc/ios'
            }
        }
    }

    post {
        //always {
            // Cleanup
            // sh 'rm -rf build'
        //}
        success {
            notifyBuild()
        }
        failure {
            notifyBuild('ERROR')
        }
    }
}

// Slack notification with status and code changes from git
def notifyBuild(String buildStatus = 'SUCCESSFUL') {
    buildStatus = buildStatus

    def colorName = 'RED'
    def colorCode = '#FF0000'
    def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
    def changeSet = getChangeSet()
    def message = "${subject} \n ${changeSet}"

    if (buildStatus == 'SUCCESSFUL') {
        color = 'GREEN'
        colorCode = '#00FF00'
    } else {
        color = 'RED'
        colorCode = '#FF0000'
    }

    slackSend (color: colorCode, message: message)
}

@NonCPS

// Fetching change set from Git
def getChangeSet() {
    return currentBuild.changeSets.collect { cs ->
        cs.collect { entry ->
            "* ${entry.author.fullName}: ${entry.msg}"
        }.join("\n")
    }.join("\n")
}
