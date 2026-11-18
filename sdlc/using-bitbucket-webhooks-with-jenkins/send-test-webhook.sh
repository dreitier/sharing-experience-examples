#!/bin/bash
# From "Setting up Bitbucket Cloud webhooks to trigger builds in Jenkins": https://sharing-experience.com/en/knowledge-base/sdlc/continuous-integration-delivery/using-bitbucket-webhooks-with-jenkins
curl -o - \
	-X POST "https://${JENKINS_URL}/bitbucket-hook/" \
	-H "User-Agent: Bitbucket-Webhooks/2.0" \
	-H "X-Event-Key: repo:push" -H "Content-Type: application/json" \
	-d "${SAMPLE_REQUEST_FROM_BITBUCKET}"
