#Launch new instance. In the step of “Configure Instance”, select the role created in previous blog for IAM roles. Copy the following script. This shell script will install httpd service(Apache Server) and start it, then create an html page. Later, create an S3 bucket and copy the html file into the bucket.
#
#!/bin/bash  
yum update -y  
yum install httpd -y  
service httpd start  
chkconfig httpd on  
cd /var/www/html  
echo 'Hello Johnny, Welcome To My Webpage' > index.html  
aws s3 mb s3://johnny-aws-guru-s3-bootstrap-01  
aws s3 cp index.html s3://johnny-aws-guru-s3-bootstrap-01  

