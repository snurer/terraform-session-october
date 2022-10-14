<img src="https://www.vectorlogo.zone/logos/terraformio/terraformio-ar21.png" width="200" height="100">

**Welcome to Terraform!!**

This folder includes the fundementals in Terraform and a simple Terraform code to create an EC2 instance.

# Providers

A provider is a Terraform plugin that allows users to manage an external API. It makes it possible for you to connect with remote systems. Each provider adds a set of resource types and/or data sources that Terraform can manage Without providers, Terraform cannot manage any infrastructures.

You can browse providers from [Hashicorp Terraform Registry](https://registry.terraform.io/browse/providers)

To configure your provider, you need to create a [providers.tf](https://github.com/snurer/terraform-session-october/blob/main/session-2/providers.tf) file.
In my case, I added "aws" as a provider.

# Credentials

Another step you need to take before you run your Terraform codes is to provide your credentials. 

There are couple ways to provide your credentials like adding your secret & access key to a static file, to your environment, or to shared credentials file under .aws

However, the safest way is to create an [IAM Role](https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-west-2#/roles), give the required permissions and attach it to your EC2 instance.

> <sub>If you don't know how to attach the IAM Role to your instance, follow these steps: 
Choose your instance from EC2 console --> Actions --> Security --> Modify IAM Role </sub>

## Terraform Init

After adding the providers.tf file, run ```terraform init``` command to initialize the working directory.![image](https://user-images.githubusercontent.com/106627195/195887916-64387ca8-f859-46eb-80f8-16bc71243d15.png)

- Everytime after you add or modify the configuration file in your working directory, you must run ```terraform init```
- You can run this command as much as you want because it’s idempotent.
![image](https://user-images.githubusercontent.com/106627195/195887585-feec6128-5ccf-45e1-93e6-0d3ca9647b5f.png)

After initialization, you will be able to perform other commands, like ```terraform plan``` and ```terraform apply```.

If you try to run a command that relies on initialization without first initializing, the command will fail with an error and explain that you need to run init.

## Terraform Version Constraint

Version constraint strings specify a range of acceptable versions for modules, providers, and Terraform itself.

Having a version constraint is *not required* it is *optional* but it is the best practice to have this file in a place.

Because everyone can have different versions of Terraform and by having **Version Constraint** in a place, both you and others looking at your code will know which code is compatible with which version of Terraform. 

> Check out the [version.tf](https://github.com/snurer/terraform-session-october/blob/main/session-2/version.tf) to see the Version Constraint in this folder.

# Create an EC2 instance with Terraform

Use [ec2.tf](https://github.com/snurer/terraform-session-october/blob/main/session-2/ec2.tf) code to create an EC2 instance from your CLI using Terraform.

To apply your changes, simply use:

```terraform apply``` 

## Contribution

Thank you for reading! Please don't hesitate to clone, use and contribute!

