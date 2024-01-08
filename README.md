# RDS Service Task

I was tasked with setting up an RDS service on AWs using Terraform. The service was required to have sufficient performance and also be highly available. 


Instructions for running the code: 

1. You first need to set up your AWS credentials by running the following command - 

``` aws configure``` 

This will prompt you to enter your AWS Access and Secret Access tokens which you can create on the AWS management console.

2. You then need to run the following Terraform comands in order to run the code - 

``` 
terraform init

terraform plan

terraform apply

``` 

3. Make sure once you have finished running the code and no longer need the RDS service you run the following command

``` terraform destroy ```

This will prevent you from incurring any hidden/unnecessary charges for having any AWS service running for longer than you need it