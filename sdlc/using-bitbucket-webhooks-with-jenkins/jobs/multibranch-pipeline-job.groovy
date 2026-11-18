// From "Setting up Bitbucket Cloud webhooks to trigger builds in Jenkins": https://sharing-experience.com/en/knowledge-base/sdlc/continuous-integration-delivery/using-bitbucket-webhooks-with-jenkins
multibranchPipelineJob('Test feature branches') {
	// for a multibranch-project `triggers { bitbucketPush }` does not work
	configure { project ->
		project / triggers / 'com.cloudbees.jenkins.plugins.BitBucketMultibranchTrigger' {
			spec()
			overrideUrl('https://bitbucket.org/my-org/my-project')
		}
	}

	branchSources {
		branchSource {
			source {
				git {
					// IMPORTANT: use a constant and unique identifier
					id('my-feature-branches') 
					remote('git@bitbucket.org:my-org/my-project')
					credentialsId('my-credential-id-for-bitbucket')

					traits {
						// scan git branches; without this trait, no branch is detected
						gitBranchDiscovery()
						
						headWildcardFilter {
							includes('*')

							// we are interested in everything but those branches
							excludes('main master develop')
						}
					}
				}
			}
		}
	}
}
