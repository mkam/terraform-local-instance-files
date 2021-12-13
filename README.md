## Consul-Terraform-Sync Test Module - Instance Files

This Terraform module creates a text file for each instance of each Consul service. This is used to test [Consul Terraform Sync](https://www.consul.io/docs/nia). It is a copy of a [local module](https://github.com/hashicorp/consul-terraform-sync/tree/main/e2e/test_modules/local_instances_file) used for end-to-end tests.

## Feature

This module uses the `local` Terraform provider to create a file for each instance of each Consul service where the file content is the IP address of the instance.

## Requirements

### Ecosystem Requirements

| Ecosystem | Version |
|-----------|---------|
| [consul](https://www.consul.io/downloads) | >= 1.7 |
| [consul-terraform-sync](https://www.consul.io/docs/nia) | >= 0.1.0 |
| [terraform](https://www.terraform.io) | >= 0.13 |

### Terraform Providers

| Name | Version |
|------|---------|
| local | >= 2.1.0 |

## Setup
There are no setup requirements for automating this module with Consul Terraform Sync.

## Usage

**User Config for Consul Terraform Sync**

example.hcl
```hcl
task {
  name           = "test"
  source         = "mkam/instance-files/local"
  version        = "0.1.0"
  services       = ["web", "app"]
}
```
