# See 'variables.tf' for default variable settings.

###############################################################################
#
# Specify provider
#
###############################################################################


provider "digitalocean" {
  version = "~> 0.1"
  token = "${var.do_token}"
}


###############################################################################
#
# Master host's user data template
#
###############################################################################


data "template_file" "setup_yaml" {
    template = "${file("${path.module}/setup.yaml")}"
    vars {
        PUBLIC_SSH_KEY = "${file(var.public_ssh_key)}"
    }
}


###############################################################################
#
# Master host
#
###############################################################################


resource "digitalocean_droplet" "web-1" {
  image  = "${var.ubuntu}"
  name   = "web-1"
  region = "${var.do_region}"
  size   = "${var.image_size}"
  user_data = "${data.template_file.setup_yaml.rendered}"
  ssh_keys = ["${var.ssh_fingerprint}"]

  connection {
    type     = "ssh"
    private_key = "${file(var.private_ssh_key)}"
    user     = "buford_tannen"
    timeout  = "2m"
  }
}
