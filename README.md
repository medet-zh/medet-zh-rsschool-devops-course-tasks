**Submission**

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
Verification (10 points)

Terraform plan is executed successfully for GithubActionsRole
Terraform plan is executed successfully for a terraform state bucket
Additional Tasks (10 points)

Documentation (5 points)
Document the infrastructure setup and usage in a README file.
Submission (5 points)
A GitHub Actions (GHA) pipeline is passing
