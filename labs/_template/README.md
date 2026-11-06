# Lab: <short topic name>

> Replace every prompt before deploying. This is a study scaffold, not a ready-to-apply lab.

## Scenario

Describe a realistic architecture problem in your own words. Do not start with a list of AWS services or prescribe the answer.

## Learning objectives

By the end of this lab, I should be able to:

- Explain <architecture concept> and the requirement it addresses.
- Compare <design choice A> with <design choice B> using explicit trade-offs.
- Implement and inspect <Terraform concept> in a small AWS environment.

## Requirements and constraints

- **Must have:** <availability, recovery, security, performance, or other measurable need>
- **Constraints:** <budget, region, latency, compliance, operations, scale>
- **Assumptions:** <state assumptions to test>
- **Out of scope:** <keep the experiment bounded>

## Design challenge

Sketch the design before implementation. Record your chosen approach and at least one viable alternative in [`notes.md`](notes.md). What evidence would make you change your decision?

## Expected resources and cost

- **Region(s):** <region>
- **Expected resource types:** <list resources before creating them>
- **Cost drivers / possible leftovers:** <data, logs, traffic, addresses, snapshots, etc.>
- **Permissions needed:** <least-privilege summary; do not paste credentials>
- **Cleanup and verification:** Review the destroy plan, destroy the lab, then verify resources and retained data are removed.

## Run the experiment

Follow [`../../docs/lab-lifecycle.md`](../../docs/lab-lifecycle.md). Set up an isolated lab account/profile, implement the configuration, and review every plan before applying.

```sh
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```

Only after completing the scenario and reviewing the plan should you run `terraform apply`. When finished, use `terraform destroy` and verify cleanup in AWS.

## Completion criteria

- [ ] Explain how the design satisfies each requirement and where it falls short.
- [ ] Compare at least one alternative and identify when it would be preferable.
- [ ] Explain the important Terraform inputs, resources, dependencies, and state implications.
- [ ] Record observed behavior and evidence in [`notes.md`](notes.md).
- [ ] Destroy the lab and verify cleanup.
