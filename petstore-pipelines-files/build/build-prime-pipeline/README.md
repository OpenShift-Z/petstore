# build-prime-pipeline
All the yaml I needed to setup my build prime pipeline. 
## assemble-manifest-task.yaml
Uses BASH and `buildah` CLI to assemble manifest. 
**Note**: as of an upgrade to OCP version 4.11.42, I needed to run this task with the following security context. This is fixed in the yaml in this repo but may not be in my experience report:
```
    securityContext:
        capabilities:
          add:
            - SETFCAP
```
## sign-into-cluster-task.yaml
Uses OCP secrets managed by ESO and HCP Vault/IBM Cloud Secrets Managers to auth with remote clusters. More details available in [this experience report](https://ibm.biz/BdMtKx) I wrote.