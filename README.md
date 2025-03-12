##############################################
### create a environmet of ec2 instance using terraform

- First install Terrafom in windows.\
https://developer.hashicorp.com/terraform/install?product_intent=terraform
check ---> Terrafom --version

- Second install AWS CLI in windows to interract with AWS\
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html 
check ---> aws --version

- Create the IAM user with access & secreat ket with minimum required permissions necessary.\
Go to IAM--> users-->create user---> security_credentials--> give mininmum permissions and create. download the CSV file.
In user permission policies apply "AdministratorAccess" policy


