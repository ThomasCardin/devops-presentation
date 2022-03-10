// Possible to set multiple provider
provider "aws" {
  profile = "default" // use default profile (aws configure)
  region  = "us-east-1"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
  alias   = "eu" // in case you dont want to write "eu-west-1"
  // every time
}