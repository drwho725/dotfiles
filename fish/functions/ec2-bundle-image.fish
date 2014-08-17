function ec2-bundle-image --description 'Eucatools bundle image'
	ec2-bundle-image --cert $EC2_CERT --privatekey $EC2_PRIVATE_KEY --user $EC2_ACCOUNT_NUMBER --ec2cert $EUCALYPTUS_CERT
end
