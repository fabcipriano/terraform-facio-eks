
#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 437139062267.dkr.ecr.us-east-1.amazonaws.com
