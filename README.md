# CloudFormation
This is just learning repo...

## To run testcnf.yml
aws --profile devopspractice cloudformation create-stack --stack-name myfirsttest --region eu-west-2 --template-body file://testcnf.yml

## To run infrastructure.yml (create stack) cli
### Infrastructure
aws --profile devopspractice cloudformation create-stack --stack-name demo-infra --region eu-west-2 --template-body file://infrastructure.yml --parameters file://infrastructure-params.json

### Servers
aws --profile devopspractice cloudformation create-stack --stack-name demo-servers --region eu-west-2 --template-body file://servers.yml --parameters file://servers-params.json

## To run infrastructure.yml/servers.yml (create stack) with shell script
* Infrastructure: ./create-stack.sh demo-infra infrastructure.yml infrastructure-params.json 
* Servers: ./create-stack.sh demo-servers server.yml servers-params.json 

## To update stack (apply changes in infrastructure.yml/servers.yml) cli
### Infrastructure
aws --profile devopspractice cloudformation update-stack --stack-name demo-infra --region eu-west-2 --template-body file://infrastructure.yml --parameters file://infrastructure-params.json

### Servers
aws --profile devopspractice cloudformation update-stack --stack-name demo-servers --region eu-west-2 --template-body file://servers.yml --parameters file://servers-params.json

## To update stack (apply changes in infrastructure.yml/servers.yml) with shell script
* Infrastructure: ./update-stack.sh demo-infra infrastructure.yml infrastructure-params.json 
* servers: ./update-stack.sh demo-servers servers.yml servers-params.json 

## To delete stack cli
### Infrastructure
aws --profile devopspractice cloudformation delete-stack --stack-name demo-infra
### Servers
aws --profile devopspractice cloudformation delete-stack --stack-name demo-servers

## To delete stack with shell script
* Infrastructure: ./delete-stack.sh demo-infra
* Servers: ./delete-stack.sh demo-servers
