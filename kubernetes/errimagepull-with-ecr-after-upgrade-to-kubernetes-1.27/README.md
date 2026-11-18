# Error `ErrImagePull ... no basic auth credentials` when using AWS' Elastic Container Registry after upgrading your Rancher cluster to Kubernetes 1.27 or later

Files from the article [Error `ErrImagePull ... no basic auth credentials` when using AWS' Elastic Container Registry after upgrading your Rancher cluster to Kubernetes 1.27 or later](https://sharing-experience.com/en/knowledge-base/kubernetes/rancher/errimagepull-with-ecr-after-upgrade-to-kubernetes-1.27).
The article explains each file, where it goes and which parts you have to change. Most files
are excerpts: `# ...` or `// ...` marks the parts the article leaves out.

## Files

- [`install-ecr-credential-provider.sh`](install-ecr-credential-provider.sh)
- [`cluster-config-kubelet.yaml`](cluster-config-kubelet.yaml)
