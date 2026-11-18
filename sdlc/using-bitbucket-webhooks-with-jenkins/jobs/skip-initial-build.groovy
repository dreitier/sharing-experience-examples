// From "Setting up Bitbucket Cloud webhooks to trigger builds in Jenkins": https://sharing-experience.com/en/knowledge-base/sdlc/continuous-integration-delivery/using-bitbucket-webhooks-with-jenkins
multibranchPipelineJob('Test feature branches') {
	// ...

	branchSources {
		branchSource {
			source {
				// ...
			}

			buildStrategies {
				buildAllBranches {
					strategies {
						// do not trigger initial builds when first branch indexing happens
						skipInitialBuildOnFirstBranchIndexing()
					}
				}
			}
		}
	}
}
