# CloudFormation
This is just learning repo...

## To run testcnf.yml
aws --profile devopspractice cloudformation create-stack --stack-name myfirsttest --region eu-west-2 --template-body file://testcnf.yml

## To run infrastructure.yml

aws --profile devopspractice \\
cloudformation create-stack \\
--stack-name demo-infra \\
--region eu-west-2 \\
--template-body file://infrastructure.yml \\
--parameters file://infrastructure-params.json

## To run with shell script
./create-stack.sh demo-infra infrastructure.yml infrastructure-params.json 
