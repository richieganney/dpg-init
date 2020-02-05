# Sample Terraform Project: 2048

Based on Dockerised 2048 game by blackicebird.  
https://hub.docker.com/r/blackicebird/2048

## Providers

| Name | Version |
|------|---------|
| aws | 2.47.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| animal | A unique identifier for each DPG guest. Set as a variable in Terraform Cloud. | `string` | n/a | yes |
| env | The environment ('prod' or 'staging'). Set as a variable in Terraform Cloud. | `string` | n/a | yes |
| r53-zone | The (existing) Route 53 hosted zone in which to create A-records. (Omit trailing dot.) | `string` | `"february.ldn.devopsplayground.com"` | no |

## Outputs

| Name | Description |
|------|-------------|
| url | URL under which the web app is reachable. |
