**Submission**

![example event parameter](https://github.com/medet-zh/medet-zh-rsschool-devops-course-tasks/blob/main/.github/workflows/AWS-Terraform-GitHUB-action/badge.svg?event=push)

**1. MFA User configured** 
I added user rs.admin and configured MFA

![alt text](https://github.com/medet-zh/medet-zh-rsschool-devops-course-tasks/blob/main/pictures/MFA%20User%20configured.jpg?raw=true)


**2. Bucket and GithubActionsRole IAM role configured**

Terraform code is created and includes:
  A bucket for Terraform states:
    I created Terraform S3 backend and dynamoDb for locking (I add extra permision for GithubActionsRole).

  IAM role with correct Identity-based and Trust policies:
    I created role with trusted policy.


**3. Github Actions workflow is created**

Workflow includes all jobs:
  Terraform fmt
  Terraform init
  Terraform validate
  Terraform plan
  Terraform apply

**4. Code Organization**

Variables are defined in a separate variables file.
Resources are separated into different files for better organization.

**5. Verification**

Terraform plan is executed successfully for GithubActionsRole
Done
Terraform plan is executed successfully for a terraform state bucket
Done

**Additional Tasks**

**6. Documentation**
Document the infrastructure setup and usage in a README file.

**7. Submission**
A GitHub Actions (GHA) pipeline is passing

![alt text](https://github.com/medet-zh/medet-zh-rsschool-devops-course-tasks/blob/main/pictures/GHA.png?raw=true)

