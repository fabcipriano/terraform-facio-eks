## Finding ECR Login Username and Password for AWS Account

To find the ECR login username and password for your AWS account, you can use the AWS CLI to retrieve a Docker login command that includes the username and password. Follow these steps:

### 1. Install and Configure AWS CLI

Ensure you have the AWS CLI installed and configured with the necessary permissions to access ECR.

### 2. Retrieve Docker Login Command

Use the following AWS CLI command to get the Docker login command, which includes the username and password.

```bash
aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-account-id>.dkr.ecr.<your-region>.amazonaws.com
```

### 3. Create a ECR Repository

```bash
aws ecr create-repository --repository-name nginx-hello-world
```

### 4. TAG the Docker Image

```bash
docker tag nginx-hello-world:v1.0.0 <your-account-id>.dkr.ecr.<your-region>.amazonaws.com/nginx-hello-world:v1.0.0
```

### 5. Push the Docker Image to ECR:

```bash
docker push <your-account-id>.dkr.ecr.<your-region>.amazonaws.com/nginx-hello-world:v1.0.0
```

