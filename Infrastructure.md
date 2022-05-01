# UDAGRAM via Amazon Web Services

This project uses the free aws cloud account provided by Udacity with a certain limit.

## Relational Database Service
This project's database is based on postgres psql, running on the following data: 

- Port:5432.
- Networked with aws us-east-1f.
- Endpoint: database-1.cjxaflw7cmo9.us-east-1.rds.amazonaws.com.

The database structure contains 3 tables:
- FeedItem with 5 columns

    - id: integer
    - caption: varchar(255)
    - URL: varchar(255)
    - createdAt: timestampz
    - updatedAt: timestampz

- User with 4 columns

    - email: varchar(255)
    - passwordHash: varchar(255)
    - createdAt: timestampz
    - updatedAt: timestampz

- Users with 6 columns

    - id: integer
    - name: varchar(255)
    - email: varchar(22)
    - avatarURL: varchar(255)
    - createdAt: timestampz
    - updatedAt: timestampz

## Simple Storage Service
This project fronend is using the aws s3 buckets with static web hosting, you can find the link in the README.md document, it is public accessible as this project surves the educational purpose. 
Policies are modified using 

```{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::mahmoudeldinary-udagram/*"
        }
    ]
}
```

## Elastic Beanstalk
This project uses the EB environment created via the npm EB library udagram-api-dev, last deployment of code was made 28 april 2022 under the name app-220428_164351810591 and the last event was Environment health has transitioned from Severe to Ok. 

The app was developed by Node.js running on 64bit Amazon Linux/4.17.16, API endpoint can be found in this [link](http://udagram-api-dev.eba-m9ncps5h.us-east-1.elasticbeanstalk.com/)