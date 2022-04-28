# UDAGRAM via CircleCi

This app was deployes using CircleCi.

When pushing to github repo any modifications, the elasticbeanstalk talk to circleCi automatically and redeploy.

The build flow goes as below:
- Sign up environment
- Preparing environment variables from project settings
    - AWS_ACCESS_KEY_ID=**REDACTED**
    - AWS_DEFAULT_REGION=**REDACTED**
    - AWS_SECRET_ACCESS_KEY=**REDACTED**
- Install Node.js
- Check out code
- Installing yarn
- Install AWS CLI
- Disable AWS pager
- Configure:
    - AWS access key id
    - AWS secret access key
    - AWS default region
- Install dependencies from package.json for the front end
- Install dependencies from package.json for the API
- Building the front end
- Building the back end
- Deploying the front end via the command
```aws s3 cp --recursive ./www s3://mahmoudeldinary-udagram/``` presented in udagram-frontend/bin/deploy.sh.