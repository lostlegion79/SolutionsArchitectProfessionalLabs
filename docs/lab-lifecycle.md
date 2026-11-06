# Lab lifecycle

Use this lifecycle for every lab. The goal is to make an explicit architecture decision, validate it in a real environment, and leave the account clean.

## 1. Frame the problem

- State the scenario in your own words and identify the business and technical goals.
- List constraints: availability, recovery, latency, data residency, security, scale, operations, and cost.
- Record assumptions, unknowns, and what is deliberately out of scope.
- Sketch the architecture and name at least one plausible alternative.

## 2. Prepare safely

- Confirm the active AWS account and identity with `aws sts get-caller-identity`.
- Select the intended profile explicitly, for example with `export AWS_PROFILE=<lab-profile>`.
- Inspect the lab's required permissions, expected resources, regions, exposure, and cleanup procedure.
- Check service quotas and cost implications. Use only non-production data.
- Initialize Terraform from the lab directory. Do not copy state between unrelated labs.

## 3. Build and review

- Implement the smallest configuration that tests the architectural question.
- Add inputs and outputs only when they clarify the experiment or make it reusable.
- Run `terraform fmt -recursive` and `terraform validate`.
- Review `terraform plan` carefully, including replacements, public access, IAM permissions, and estimated ongoing resources.
- Apply only when the plan matches the design and account. Record the final plan's important choices in the notes.

## 4. Observe and test

- Verify the deployed resources and their configuration in AWS.
- Exercise the behavior the lab was designed to test, including a failure or boundary case where practical.
- Compare the outcome with the architecture hypothesis. Note evidence, not just conclusions.
- Record what Terraform state tracks and how configuration changes affect the plan.

## 5. Clean up and reflect

- Run `terraform destroy` from the correct lab directory and review its plan before confirming.
- Verify resources are gone in the AWS console or CLI. Check for retained data, snapshots, logs, public addresses, or other billable leftovers.
- Record costs or cleanup surprises and update the lab notes.
- Keep `.terraform/`, state files, plan files, credentials, and real variable files out of Git.

## Commands at a glance

Run these in the lab directory, with the intended AWS identity configured:

```sh
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform destroy
```

`terraform apply` and `terraform destroy` change real infrastructure. Always inspect the plan and confirm the active account before running them.
