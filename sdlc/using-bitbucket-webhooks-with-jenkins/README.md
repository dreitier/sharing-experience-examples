# Setting up Bitbucket Cloud webhooks to trigger builds in Jenkins

Files from the article [Setting up Bitbucket Cloud webhooks to trigger builds in Jenkins](https://sharing-experience.com/en/knowledge-base/sdlc/continuous-integration-delivery/using-bitbucket-webhooks-with-jenkins).
The article explains each file, where it goes and which parts you have to change. Most files
are excerpts: `# ...` or `// ...` marks the parts the article leaves out.

## Files

- [`jobs/pipeline-job.groovy`](jobs/pipeline-job.groovy)
- [`jobs/multibranch-pipeline-job.groovy`](jobs/multibranch-pipeline-job.groovy)
- [`jobs/skip-initial-build.groovy`](jobs/skip-initial-build.groovy)
- [`send-test-webhook.sh`](send-test-webhook.sh)
