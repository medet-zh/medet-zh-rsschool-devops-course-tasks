**Submission**

1. MFA User configured 
I added user rs.admin and configured MFA

![alt text](https://github.com/medet-zh/medet-zh-rsschool-devops-course-tasks/blob/main/image.jpg?raw=true)


2. Bucket and GithubActionsRole IAM role configured (30 points)

Terraform code is created and includes:
A bucket for Terraform states
IAM role with correct Identity-based and Trust policies
Github Actions workflow is created (30 points)

Workflow includes all jobs
Code Organization (10 points)

Variables are defined in a separate variables file.
Resources are separated into different files for better organization.
Verification (10 points)

Terraform plan is executed successfully for GithubActionsRole
Terraform plan is executed successfully for a terraform state bucket
Additional Tasks (10 points)

Documentation (5 points)
Document the infrastructure setup and usage in a README file.
Submission (5 points)
A GitHub Actions (GHA) pipeline is passing
