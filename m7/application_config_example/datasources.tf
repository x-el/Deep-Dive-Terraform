##################################################################################
# DATA SOURCES
##################################################################################

data "aws_ssm_parameter" "amzn2_linux" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

data "tfe_outputs" "main" {
  organization = "MY_ORG"
  workspace = "SOURCE_WORKSPACE"
}

# All outputs from the selected workspace
data.tfe_outputs.main.values

# All nonsensitive outputs from the selected workspace
data.tfe_outputs.main.nonsensitive_values