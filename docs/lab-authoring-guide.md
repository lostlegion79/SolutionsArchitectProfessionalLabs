# Lab authoring guide

A lab should teach one architectural idea deeply enough to explain why a design works, when it is appropriate, and what trade-offs it creates. Keep the infrastructure scope small; put the depth into the investigation and notes.

## Suggested lab contents

- `README.md`: scenario, objectives, design constraints, expected resources, prerequisites, cost/security notes, deployment and cleanup instructions, and completion criteria.
- `notes.md`: your evolving explanations, diagrams, test evidence, alternatives, and unanswered questions.
- Terraform files: a small, readable configuration that supports the experiment rather than a complete production platform.
- `terraform.tfvars.example`: safe example values only. Never put account-specific or secret values here.

Use [`../labs/_template/`](../labs/_template/README.md) as a starting point. Rename the copied directory to a short, descriptive topic name, such as `multi-account-networking` or `disaster-recovery`.

## Make the scenario useful

Describe a realistic requirement without giving away the implementation. Identify the constraints that drive the decision and what a successful experiment will demonstrate. Ask yourself:

- What requirements are mandatory, and which are preferences?
- What failure, scale, or operational condition should the lab exercise?
- What assumptions could invalidate the design?
- How would another reasonable architecture differ?
- What evidence would distinguish the options?

## Keep Terraform teachable

- Prefer explicit, readable resources and meaningful names over premature abstraction.
- Explain non-obvious arguments and dependencies in notes; avoid narrating every line of straightforward HCL.
- Use variables for values that genuinely vary. Use locals for derived values that make intent clearer.
- Add outputs that help inspect or use the lab, while avoiding sensitive output values.
- Pin a tested provider version range and Terraform CLI constraint in the lab; upgrade deliberately.
- Keep each lab's state isolated. A local backend is adequate for a disposable, single-user exercise; document the trade-offs before choosing a remote backend.
- Avoid broad IAM permissions and public exposure unless those are the explicit subject of the lab.

## Keep it exam-relevant

The certification tests architecture judgment, not memorization of Terraform syntax. Use notes to connect the implementation to the requirements, explain trade-offs, and compare services and patterns. Validate service behavior against current AWS documentation and the current exam guide; do not treat a lab as proof of every production behavior.

## Before opening a pull request

- The scenario and learning objectives are clear without reading the Terraform first.
- The lab's expected resources, region, cost considerations, permissions, and cleanup are documented.
- `terraform fmt` and `terraform validate` pass in the lab directory.
- Plans and outputs do not expose secrets or unintended public access.
- `.terraform/`, state, plan files, credentials, and real variable files are not committed.
- Notes distinguish verified observations from hypotheses and unanswered questions.
