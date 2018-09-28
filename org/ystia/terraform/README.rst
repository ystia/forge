.. _terraform_section:

*********
Terraform
*********

.. contents::
    :local:
    :depth: 3


TerraformRuntime Component
--------------------------

The TerraformRuntime component install the terraform binary

Properties
^^^^^^^^^^

- **install_dir**: Directory where Terraform binary should be installed

  - Default : /usr/local/bin

- **component_version**: Version of Terraform to install.

- **plugins_dir**: Directory where are located Terraform plugins

  - Default : /var/terraform/plugins

- **plugins_download_urls**: List of Terraform plugins download urls

  - Default :
     1. https://releases.hashicorp.com/terraform-provider-null/1.0.0/terraform-provider-null_1.0.0_linux_amd64.zip
     2. https://releases.hashicorp.com/terraform-provider-consul/2.1.0/terraform-provider-consul_2.1.0_linux_amd64.zip
     3. https://releases.hashicorp.com/terraform-provider-openstack/1.9.0/terraform-provider-openstack_1.9.0_linux_amd64.zip
     4. https://releases.hashicorp.com/terraform-provider-aws/1.36.0/terraform-provider-aws_1.36.0_linux_amd64.zip
     5. https://releases.hashicorp.com/terraform-provider-google/1.18.0/terraform-provider-google_1.18.0_linux_amd64.zip
