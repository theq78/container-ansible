# container-ansible
This project provides a multi-arch OCI container image for Ansible.
Following architectures are currently supported:
- linux/amd64
- linux/arm64v8

## Pull Image
```
podman pull ghcr.io/theq78/container-ansible:latest
```

## Verify Image
```
cosign verify \
  --certificate-identity-regexp "https://github.com/theq78/container-ansible/.+" \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com \
  ghcr.io/theq78/container-ansible:latest | jq
```
