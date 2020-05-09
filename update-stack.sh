aws --profile devopspractice \
cloudformation update-stack \
--stack-name $1 \
--region eu-west-2 \
--template-body file://$2 \
--parameters file://$3