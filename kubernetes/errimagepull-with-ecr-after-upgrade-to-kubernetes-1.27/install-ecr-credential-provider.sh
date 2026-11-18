# From "Error `ErrImagePull ... no basic auth credentials` when using AWS' Elastic Container Registry after upgrading your Rancher cluster to Kubernetes 1.27 or later": https://sharing-experience.com/en/knowledge-base/kubernetes/rancher/errimagepull-with-ecr-after-upgrade-to-kubernetes-1.27
mkdir -p /opt/aws/{bin,config}

# official release binaries, see https://github.com/kubernetes/cloud-provider-aws/releases
RELEASE=v1.37.0
# download binary (-f: fail on HTTP errors instead of saving an error page as the binary)
curl -fLO https://artifacts.k8s.io/binaries/cloud-provider-aws/${RELEASE}/linux/amd64/ecr-credential-provider-linux-amd64

# move it to the mount location and make it executable
mv ecr-credential-provider-linux-amd64 /opt/aws/bin/ecr-credential-provider
chmod 755 /opt/aws/bin/ecr-credential-provider

# default configuration
cat <<EOT > /opt/aws/config/custom-credential-providers.yaml
apiVersion: kubelet.config.k8s.io/v1
kind: CredentialProviderConfig
providers:
- name: ecr-credential-provider
  matchImages:
  # restrict it to your account's ECR
  - "*.dkr.ecr.*.amazonaws.com"
  - "*.dkr.ecr.*.amazonaws.com.cn"
  apiVersion: credentialprovider.kubelet.k8s.io/v1
  defaultCacheDuration: '0'
EOT
