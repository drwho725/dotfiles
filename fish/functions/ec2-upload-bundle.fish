function ec2-upload-bundle --description 'Upload Eucatools bundle'
	ec2-upload-bundle -a $EC2_ACCESS_KEY -s $EC2_SECRET_KEY --url $S3_URL
end
