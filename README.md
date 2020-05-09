# CloudFormation
This is just learning repo...

## To run testcnf.yml
aws --profile devopspractice cloudformation create-stack --stack-name myfirsttest --region eu-west-2 --template-body file://testcnf.yml

## To run infrastructure.yml (create stack) cli
aws --profile devopspractice cloudformation create-stack --stack-name demo-infra --region eu-west-2 --template-body file://infrastructure.yml --parameters file://infrastructure-params.json

## To run infrastructure.yml (create stack) with shell script
./create-stack.sh demo-infra infrastructure.yml infrastructure-params.json 

## To update stack (apply changes in infrastructure.yml) cli
aws --profile devopspractice cloudformation update-stack --stack-name demo-infra --region eu-west-2 --template-body file://infrastructure.yml --parameters file://infrastructure-params.json


## To update stack (apply changes in infrastructure.yml) with shell script
./update-stack.sh demo-infra infrastructure.yml infrastructure-params.json 

## To delete stack cli
aws --profile devopspractice cloudformation delete-stack --stack-name demo-infra

## To delete stack with shell script
./delete-stack.sh demo-infra