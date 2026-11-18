// From "Setting up Bitbucket Cloud webhooks to trigger builds in Jenkins": https://sharing-experience.com/en/knowledge-base/sdlc/continuous-integration-delivery/using-bitbucket-webhooks-with-jenkins
pipelineJob("my-job") {
	// listen for Bitbucket WebHook
	properties {
		pipelineTriggers {
			triggers {
				// see https://github.com/jenkinsci/job-dsl-plugin/wiki/Migration
				bitbucketPush {
					overrideUrl('https://bitbucket.org/my-org/my-project')
				}
			}
		}
	}
	
	definition {
		cpsScm {
			lightweight(true)
			
			scm {
				git {
					branch('*/main')
					remote {
						name('origin')
						url('git@bitbucket.org:my-org/my-project.git')
					}
				}
			}
		}
	}
}
