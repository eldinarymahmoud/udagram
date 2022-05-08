eb use udagram-api-dev && eb deploy udagram-api-dev
eb setenv aws_profile=AWS_ACCESS_KEY_ID
eb setenv aws_media_bucket=AWS_BUCKET
eb setenv aws_region=AWS_DEFAULT_REGION
eb setenv secret=AWS_SECRET_ACCESS_KEY
eb setenv port=PORT
eb setenv dbport=PORT_DB
eb setenv database=POSTGRES_DB
eb setenv host=POSTGRES_HOST
eb setenv password=POSTGRES_PASSWORD
eb setenv username=POSTGRES_USERNAME
eb setenv url=URL