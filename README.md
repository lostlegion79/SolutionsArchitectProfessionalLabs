# AWS Solutions Architect – Professional Labs

A hands-on study companion for the **AWS Certified Solutions Architect – Professional (SAP-C02)** exam. This repository is designed to help you build and tear down small, modular Terraform labs in a dedicated AWS lab account, then capture the reasoning and lessons learned as you study.

This is a **learning guide, not a turnkey infrastructure catalog or official AWS exam-preparation product**. Lab implementations are intentionally yours to develop. The repository provides a consistent structure, safe operating habits, and prompts to help you understand both AWS architecture and Terraform rather than copy a finished answer.

## How to use this repository

1. Choose a topic you want to understand and create a lab from [`labs/_template`](labs/_template/README.md).
2. Read the lab brief and record your initial design and assumptions before implementing it.
3. Build the smallest useful Terraform configuration yourself. Use the notes and questions to investigate trade-offs, failure modes, and alternatives.
4. Run the lab, inspect what AWS created, and record what surprised you.
5. Destroy resources when finished, verify cleanup in AWS, and preserve your notes and lessons learned.

## Repository layout

```text
.
├── docs/
│   ├── lab-authoring-guide.md
│   ├── lab-lifecycle.md
│   └── notes-template.md
├── ExamGuide/
│   └── solutions-architect-professional-02.pdf
└── labs/
    └── _template/
        ├── README.md
        ├── notes.md
        ├── versions.tf
        ├── provider.tf
        ├── variables.tf
        ├── locals.tf
        ├── main.tf
        ├── outputs.tf
        └── terraform.tfvars.example
```

Each future lab should be independently understandable and deployable. Keep shared conventions lightweight until repeated use demonstrates a need for reusable modules.

## Safety and cost

- Use a dedicated, appropriately restricted AWS lab account; do not experiment in a production account.
- Authenticate through an approved AWS CLI profile, IAM Identity Center, or another short-lived role-based method. **Never commit credentials, tokens, private keys, state files, or real `*.tfvars` files.**
- Review `terraform plan` before applying. Terraform destroy is not a substitute for checking what will be removed.
- AWS Budgets and service quotas are useful guardrails, not a hard spending cap. Check actual resources and billing after each session.
- Treat Terraform state and plan files as potentially sensitive. Store remote state securely if and when a lab needs it; do not add a shared backend casually.
- Do not apply a lab until you understand its expected resources, exposure, and cleanup steps.

## Prerequisites

- An AWS lab account and a configured role/profile with only the permissions needed for the lab.
- Terraform CLI and AWS CLI installed.
- Comfort with basic Git and command-line workflows.

Version constraints and setup notes belong in each lab. The template intentionally avoids an AWS account ID, credentials, or a preconfigured remote backend.

## Study workflow

Use [`docs/lab-lifecycle.md`](docs/lab-lifecycle.md) for the repeatable plan/build/inspect/destroy cycle, [`docs/lab-authoring-guide.md`](docs/lab-authoring-guide.md) when adding a lab, and [`docs/notes-template.md`](docs/notes-template.md) to keep the learning notes focused on comprehension.

## Exam guide

The PDF in [`ExamGuide/`](ExamGuide/) is included as a study reference. Check the current AWS exam guide and service documentation as you work; exam objectives and product behavior can change. This repository is independent and is not affiliated with or endorsed by AWS.
