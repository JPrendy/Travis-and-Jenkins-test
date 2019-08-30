# Travis and Jenkins Test

The following is a test that uses Travis and Jenkins CI

// Powered by Infostretch 
import java.text.SimpleDateFormat
import org.apache.commons.lang.StringUtils


timestamps {

node () {

	stage ('Github test 2 - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'dc6d2793-6e78-4413-b4a4-a9bec987b977', url: 'https://github.com/JPrendy/Travis-and-Jenkins-test.git']]]) 
	}
	stage ('Github test 2 - Build') {
 			// Shell build step
bat """ 
cd
 """ 
	}
	stage ('Get Date') {
            def dateFormat = new SimpleDateFormat("yyyyMMddHHmm")
    def date = new Date()

    println(dateFormat.format(date))
    def logs = currentBuild.rawBuild.getLog(10000).join('\n')
    int count = StringUtils.countMatches(logs, "z");
    if (count > 3 -1) {
        currentBuild.result='UNSTABLE'
    }
	}
}
}

