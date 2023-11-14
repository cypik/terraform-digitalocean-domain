# terraform-digitalocean-domain
# DigitalOcean Terraform Configuration

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Examples](#examples)
- [License](#license)

## Introduction
This Terraform configuration is designed to create and manage a DigitalOcean DOMAIN.

## Usage
To use this module, you should have Terraform installed and configured for DIGITALOCEAN. This module provides the necessary Terraform configuration for creating DIGITALOCEAN resources, and you can customize the inputs as needed. Below is an example of how to use this module:

#  Example:
You can use this module in your Terraform configuration like this:

```hcl
module "domain" {
  source = "git::https://github.com/opz0/terraform-digitalocean-domain.git?ref=v1.0.0"
  name   = "test.shello.com"

  records = {
    record1 = {
      type  = "A"
      name  = "class"
      value = "192.168.0.12"
    },
    record2 = {
      type  = "A"
      name  = "class2"
      value = "192.168.0.13"
    },
  }

}
```
This example demonstrates how to create various DIGITALOCEAN resources using the provided modules. Adjust the input values to suit your specific requirements.


## Module Inputs

- 'name': The name of the domain
- 'ip_address' :  The IP address of the domain. If specified, this IP is used to created an initial A record for the domain.


## Module Outputs

This module does not produce any outputs. It is primarily used for labeling resources within your Terraform configuration.

- 'id' : The name of the domain
- 'urn': The uniform resource name of the domain
- 'ttl':  The TTL value of the domain

## Examples
For detailed examples on how to use this module, please refer to the 'examples' directory within this repository.

## License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/opz0/terraform-digitalocean-domain/blob/master/LICENSE) file for more details.

## Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.