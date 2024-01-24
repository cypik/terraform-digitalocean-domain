# Terraform-digitalocean-domain
# Terraform digitalocean Cloud domain Module.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Examples](#examples)
- [Author](#author)
- [License](#license)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Introduction
This Terraform configuration is designed to create and manage a DigitalOcean DOMAIN.

## Usage
To use this module, you should have Terraform installed and configured for DIGITALOCEAN. This module provides the necessary Terraform configuration for creating DIGITALOCEAN resources, and you can customize the inputs as needed. Below is an example of how to use this module:

# Example:
You can use this module in your Terraform configuration like this:

```hcl
module "domain" {
  source = "cypik/domain/digitalocean"
  version = "1.0.1"
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




## Examples
For detailed examples on how to use this module, please refer to the [examples](https://github.com/cypik/terraform-digitalocean-domain/blob/master/example) directory within this repository.

## License
This Terraform module is provided under the **MIT** License. Please see the [LICENSE](https://github.com/cypik/terraform-digitalocean-domain/blob/master/LICENSE) file for more details.

## Author
Your Name Replace **MIT** and **cypik** with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.6 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.34.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_domain.default](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain) | resource |
| [digitalocean_record.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | The IP address of the domain. If specified, this IP is used to created an initial A record for the domain. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the domain | `string` | `"mycustomdomain.com"` | no |
| <a name="input_records"></a> [records](#input\_records) | n/a | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The name of the domain |
| <a name="output_ttl"></a> [ttl](#output\_ttl) | The TTL value of the domain |
| <a name="output_urn"></a> [urn](#output\_urn) | The uniform resource name of the domain |
<!-- END_TF_DOCS -->