# sharing-experience examples

Config files and scripts from the how-tos on [sharing-experience.com](https://sharing-experience.com), the knowledge base of the dreitier team. One folder per article.

The files are copied from the articles. Most of them are excerpts: `# ...` or `// ...` marks the parts an article leaves out, and placeholders like `my-org` or `<your-check-uuid>` are yours to replace. Read the article first; it explains where each file goes and why.

Every push is checked with yamllint, shellcheck and kubeconform. That catches broken syntax, not wrong settings for your environment.

> This repository is generated from the articles on every deploy of sharing-experience.com, so changes made here directly are overwritten. Open an issue instead.

## System Design

- [Using Livewire in a multitenant Laravel application](system-design/using-livewire-in-a-multitenant-laravel-application) ([article](https://sharing-experience.com/en/knowledge-base/system-design/using-livewire-in-a-multitenant-laravel-application))

## Software Architecture

- [Injecting system environment variables into containerized Vue.js applications](software-architecture/injecting-system-environment-variables-into-containerized-vue.js-applications) ([article](https://sharing-experience.com/en/knowledge-base/software-architecture/configurable/injecting-system-environment-variables-into-containerized-vue.js-applications))

## Software Development Lifecycle

- [Conditional includes in .git/config files](sdlc/conditional-includes-in-git-config-files) ([article](https://sharing-experience.com/en/knowledge-base/sdlc/codebase/conditional-includes-in-git-config-files))
- [Setting up Bitbucket Cloud webhooks to trigger builds in Jenkins](sdlc/using-bitbucket-webhooks-with-jenkins) ([article](https://sharing-experience.com/en/knowledge-base/sdlc/continuous-integration-delivery/using-bitbucket-webhooks-with-jenkins))
- [Notifying Microsoft Teams with GitHub Actions](sdlc/notifying-microsoft-teams-with-github-actions) ([article](https://sharing-experience.com/en/knowledge-base/sdlc/continuous-integration-delivery/notifying-microsoft-teams-with-github-actions))
- [Notifying Microsoft Teams in Jenkins pipelines](sdlc/notifying-microsoft-teams-in-jenkins-pipelines) ([article](https://sharing-experience.com/en/knowledge-base/sdlc/continuous-integration-delivery/notifying-microsoft-teams-in-jenkins-pipelines))
- [Publish Docker images to Azure Container Registry (ACR) with GitHub Actions](sdlc/publish-docker-images-to-azure-container-registry-with-github-actions) ([article](https://sharing-experience.com/en/knowledge-base/sdlc/continuous-integration-delivery/publish-docker-images-to-azure-container-registry-with-github-actions))

## Kubernetes

- [cert-manager unable to retrieve certificates from FreeIPA](kubernetes/cert-manager-unable-to-retrieve-certificates-from-freeipa) ([article](https://sharing-experience.com/en/knowledge-base/kubernetes/cert-manager-unable-to-retrieve-certificates-from-freeipa))
- [Error `ErrImagePull ... no basic auth credentials` when using AWS' Elastic Container Registry after upgrading your Rancher cluster to Kubernetes 1.27 or later](kubernetes/errimagepull-with-ecr-after-upgrade-to-kubernetes-1.27) ([article](https://sharing-experience.com/en/knowledge-base/kubernetes/rancher/errimagepull-with-ecr-after-upgrade-to-kubernetes-1.27))
- [Install Rancher 2.6 in Hetzner Cloud](kubernetes/install-rancher-in-hetzner-cloud) ([article](https://sharing-experience.com/en/knowledge-base/kubernetes/rancher/install-rancher-in-hetzner-cloud))

## DevOps

- [Exception "The request was canceled due to the configured HttpClient.Timeout of 100 seconds elapsing." for .NET applications running in AWS ECS](devops/dotnet-exception-the-request-was-cancelled-in-aws-ecs) ([article](https://sharing-experience.com/en/knowledge-base/devops/platforms/amazon-web-services/dotnet-exception-the-request-was-cancelled-in-aws-ecs))
- [AWS CodeBuild and CodePipeline with S3 source throws 'Error calling startBuild: Source version should be empty for S3 folder source location'](devops/codebuild-startbuild-source-version-should-be-empty-for-s3-folder-source-location) ([article](https://sharing-experience.com/en/knowledge-base/devops/platforms/amazon-web-services/codebuild-startbuild-source-version-should-be-empty-for-s3-folder-source-location))
- [AWS CloudFormation Cheatsheet](devops/cloudformation-cheatsheet) ([article](https://sharing-experience.com/en/knowledge-base/devops/platforms/amazon-web-services/cloudformation-cheatsheet))
- [Automatically initialize a new database when using AWS RDS for Microsoft SQL Server and ECS](devops/create-rds-sql-server-database-on-ecs-service-startup) ([article](https://sharing-experience.com/en/knowledge-base/devops/platforms/amazon-web-services/create-rds-sql-server-database-on-ecs-service-startup))
- [Deploying PHP 8.2 and Laravel 10.x applications on Azure App Service](devops/deploying-laravel-10-php-8.x-apps-in-microsoft-azure-app-service) ([article](https://sharing-experience.com/en/knowledge-base/devops/platforms/microsoft-azure/deploying-laravel-10-php-8.x-apps-in-microsoft-azure-app-service))
- [Ingesting different log formats with Promtail](devops/ingesting-different-log-formats-with-promtail) ([article](https://sharing-experience.com/en/knowledge-base/devops/logging/ingesting-different-log-formats-with-promtail))
- [Zero downtime deployments for Kestrel-based .NET applications](devops/zero-downtime-deployments-for-kestrel-based-dotnet-applications) ([article](https://sharing-experience.com/en/knowledge-base/devops/continuous-deployment/zero-downtime-deployments-for-kestrel-based-dotnet-applications))

## Incident Readiness

- [Your alerting is broken and nobody notices: A dead man's switch for Alertmanager](incident-readiness/dead-mans-switch-for-alertmanager) ([article](https://sharing-experience.com/en/knowledge-base/incident-readiness/dead-mans-switch-for-alertmanager))

## Found a problem?

Open an issue. If the fix also applies to the article, we update it there and the change shows up here with the next deploy.

Need help with this in production? [dreitier](https://dreitier.com/en#mtm_campaign=sharing-experience&mtm_kwd=examples-repo) builds and runs platforms like these for clients.

## Licence

[MIT](LICENSE)
