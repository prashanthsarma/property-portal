UI URL:
https://a7ed5a6cd31d94ebf86b32aae283b942-69471a12aa9be2af.elb.us-west-2.amazonaws.com/

API Documentation:
https://documenter.getpostman.com/view/2730865/TVK5c1FJ

Client functionalities

A property portal with following ability
1. View all properties listed by everyone
2. View all properties listed by the logged in user (Protected route)
3. Add/Update/Delete property listing of a logged in user. (Protected route)
4. Sign up as new user
5. Automatic sign in next time with cookie


For running code locally:
1. In auth folder -> npm install and npm run dev
2. In property folder -> npm install and npm run dev
3. In client folder -> yarn and yarn run start

Code in common folder is published as a npm package to @prashanthsarma@property-portal-common
Infra has commands to setup the project into AWS Kubernets with S3
