# Terraform Digital Ocean Provider Example
This example shows how we can add data source configuration with `cloud-config` to stand up a new Digital Ocean droplet.

Using `cloud-config` we will:
  - create a new user
    - add this user to the sudo group
    - assign a shell and home directory
    - load a public key for the user
  - Update the package repository and upgrade the instance on first boot
  - Install the `ntp` package and start the ntp service
  - disable remote root login
  - disable password login

**Run this example:**
```
terraform apply
```

### Resources
This section contains helpful resources and code examples that helped in creating this example.

1. [Digital Ocean Droplet launch and setting the Domain records at Digital Ocean.](https://github.com/terraform-providers/terraform-provider-digitalocean/tree/master/examples/droplet)
2. [Kubernetes - DigitalOcean - Terraform](https://github.com/kubernetes-digitalocean-terraform/kubernetes-digitalocean-terraform)
3. [Cloud config examples](https://cloudinit.readthedocs.io/en/latest/topics/examples.html)
4. [DigitalOcean Provider - Terraform.io Docs](https://www.terraform.io/docs/providers/do/index.html)
5. [Data Source Configuration - Terraform.io](https://www.terraform.io/docs/configuration/data-sources.html)
