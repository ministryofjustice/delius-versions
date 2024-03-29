# delius-versions

This repository is for the versions of Delius and supporting infrastructure.

## Parameters

The parameter keys will follow the grouping of components as per env-configs

- vpc (network base)
- delius-core
- alfresco
- spg
- mis
- new-tech


```
/versions/{subcomponent}/{type repo|artefact|ami}/{name}  {version tag|branch_name}
```

```
/versions/delius-core/repo/hmpps-delius-core-terraform/delius-core-dev 0.10.0
/versions/delius-core/artefact/rbac/delius-test 4.3.6
/versions/delius-core/artefact/pwm/delius-core-dev 3.4
/versions/delius-core/artefact/delius/delius-core-dev 4.1.1


```

## Deployment

On creation of a Pull Request, the changes will be deployed by CodeBuild to the Engineering-Dev AWS account.
The status of the deployment can be seen in the Checks section of the Pull Request, so approvers can ensure it has deployed successfully before merging.

After merging a Pull Request to master, CodeBuild will then deploy the changes to all accounts. The status of the deployments can be seen against the commit in GitHub.

For local testing, the Terraform code in this repository can be deployed using the [shared run script](https://github.com/ministryofjustice/hmpps-delius-pipelines/blob/master/run.sh).


## GitHub Actions

An action to delete the branch after merge has been added.
Also an action that will tag when branch is merged to master
See https://github.com/anothrNick/github-tag-action

```
Bumping

Manual Bumping: Any commit message that includes #major, #minor, or #patch will trigger the respective version bump. If two or more are present, the highest-ranking one will take precedence.

Automatic Bumping: If no #major, #minor or #patch tag is contained in the commit messages, it will bump whichever DEFAULT_BUMP is set to (which is minor by default).

Note: This action will not bump the tag if the HEAD commit has already been tagged.
```

## Engineering

There is no default, and there is no "prod" where there isn’t one specified for that component.
For network VPC we need to specify a specific branch/tag for "prod" in which that module has various components removed.
It’s a reasong why for Engineering "dev" is not the correct name anymore, but too deeply ingrained to change - at least for now.
