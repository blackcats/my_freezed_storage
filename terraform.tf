terraform {
    required_version = ">= 1.5.0"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.10"
        }
    }

    cloud {
        organization = "blackcats"

        workspaces {
            name = "My_Freezed_Storage"
        }
    }
}

provider "aws" {
    region = var.region
}
