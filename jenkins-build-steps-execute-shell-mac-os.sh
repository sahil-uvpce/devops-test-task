ls -la
pwd
whoami
echo $GIT_COMMIT
export PATH="/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
echo $PATH

#Install homebrew.
echo Install homebrew.
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

# Install python.
echo Install python.
brew install python3
python3 --version

whereis python3
which aws
aws --version
docker --version

#Configure AWS account credentials.
echo Setup AWS credentials.
aws configure set aws_access_key_id $AWS_AK_SECRET
aws configure set aws_secret_key_id $AWS_SK_SECRET
aws configure set default.region us-east-1

aws s3 ls
# Build java app using mavn build using Docker CLI.
echo Build application image through Docker.
docker build -t java-maven-test:$GIT_COMMIT .

#Retrieve an authentication token and authentic docker client to your repo.
echo Authenticate Docker and AWS.
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 487268246017.dkr.ecr.us-east-1.amazonaws.com

#After the build completes, tag image so you can push image to the repo.
echo Tag an image, after build.
docker tag java-maven-test:testv1 487268246017.dkr.ecr.us-east-1.amazonaws.com/devops-test:$GIT_COMMIT

#Run the following command to push this image to your new AWS ECR.
echo Push an image to AWS ECR.
docker push 487268246017.dkr.ecr.us-east-1.amazonaws.com/devops-test:$GIT_COMMIT
