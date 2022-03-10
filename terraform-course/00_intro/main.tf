// Local variable
locals {
  project_name = "intro_server"
}

// Can only have on instance
terraform {
  // Terraform cloud
  // When terraform 1.1 is available on nixos-21.11 channel
  // go to this link and switch to cloud
  // https://www.terraform.io/docs/enterprise/migrate/index.html
  # backend "remote" {
  #   hostname = "app.terraform.io"
  #   organization = "course13hours"

  #   workspaces {
  #     name = "00_intro"
  #   }
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.4.0"
    }
  }
}

/*
  1. terraform init (initialize the resssources)
  2. terraform fmt (format the code)
  3. terraform validate (validate the code/ressources)

  4. terraform plan (check what ressources will be deployed in the cloud
                  / what terraform will create)
  terraform plan -var=instance_type="t2.micro" (if a variable if set
  / possible to skip this part if the variable is set in terraform.tfvars)

  5. terraform apply (create the instance)
  terraform apply -auto-approuve (to skip the "yes" part)

  terraform destroy or terraform apply - destroy

  MORE:
  terraform output (view output variable)
  terraform refresh (refresh the state of the terraform file)
*/