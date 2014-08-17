function eucarc --description 'Eucatools settings'
	set -x EUCA_KEY_DIR /cloud/CREDENTIALS
	set -x EC2_URL "http://<ip:port>/services/Eucalyptus"
	set -x S3_URL "http://<ip:port>/services/Walrus"
	set -x EUARE_URL "http://<ip:port>/services/Euare"
	set -x TOKEN_URL "http://<ip:port>/services/Tokens"
	set -x AWS_AUTO_SCALING_URL "http://<ip:port>/services/AutoScaling"
	set -x AWS_CLOUDWATCH_URL "http://<ip:port>/services/CloudWatch"
	set -x AWS_ELB_URL "http://<ip:port>/services/LoadBalancing"
	set -x EUSTORE_URL "http://emis.eucalyptus.com/"
	set -x EC2_PRIVATE_KEY $EUCA_KEY_DIR/private_key
	set -x EC2_CERT $EUCA_KEY_DIR/private_certificate
	set -x EC2_JVM_ARGS "-Djavax.net.ssl.trustStore=$EUCA_KEY_DIR/jssecacerts"
	set -x EUCALYPTUS_CERT $EUCA_KEY_DIR/cloud-cert.pem
	set -x EC2_ACCOUNT_NUMBER '<EC2_account_number>'
	set -x EC2_ACCESS_KEY '<EC2_access_key>'
	set -x EC2_SECRET_KEY '<E2_secret_key>'
	set -x AWS_ACCESS_KEY '<EC2_access_key>'
	set -x AWS_SECRET_KEY '<E2_secret_key>'
	set -x AWS_CREDENTIAL_FILE $EUCA_KEY_DIR/iamrc
	set -x EC2_USER_ID '<EC2_account_number>'
end
