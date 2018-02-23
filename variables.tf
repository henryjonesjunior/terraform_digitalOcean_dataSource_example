# Set variable values in a *.tfvars file, passing via the CLI
# with -var= (i.e., "-var-file=do_token=YOUR_TOKEN"), or with
# environment variables (i.e., 'export TF_VAR_do_token=YOUR_TOKEN').

variable "do_token" {}
variable "ssh_fingerprint" {}
variable "private_ssh_key" {
  description = "Private ssh key."
  default = "~/.ssh/id_rsa"
}
variable "public_ssh_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "ubuntu" {
  description = "Default LTS"
  default = "ubuntu-16-04-x64"
}

variable "do_region" {
  description = "DigitalOcean New York Data Center 1."
  default = "nyc1"
}

variable "image_size" {
  description = "Image size."
  default = "512mb"
}
