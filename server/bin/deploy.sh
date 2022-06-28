#!/usr/bin/env bash
echo "*******__ Udagram Server API  __*******"

echo "*******__ 1.Create a repository with the eb init command.....👨🏻‍💻🤌🏻  __*******"
eb init aws-circle-ci-api --platform node.js --region us-east-1

echo "*******__ 2.Sets the specified environment....👨🏻‍💻🤌🏻  __*******"
eb use aws-circle-ci-api-dev

echo "*******__ 3.Deploy the changes....👨🏻‍💻🤌🏻  __*******"
eb deploy aws-circle-ci-api-dev

echo "*******__ 4.Set Env Variables....👨🏻‍💻🤌🏻  __*******"
eb setenv AWS_BUCKET=s3://sawahe AWS_REGION=us-east-1 DB_PORT=5432 PORT=3000 POSTGRES_DB=postgres POSTGRES_HOST=database-1.cra9lcbtikon.us-east-1.rds.amazonaws.com POSTGRES_PASSWORD=postgres POSTGRES_USERNAME=postgres AWS_S3_ENDPOINT=aws-circle-ci-api-dev.eba-qcfvpf4b.us-east-1.elasticbeanstalk.com
