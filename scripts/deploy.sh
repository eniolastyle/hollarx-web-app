BUCKET_NAME=$1
DISTRIBUTION_ID=$2
# PROFILE=$3

echo "-- Install --"
npm install --production

echo "-- Build --"
npm run build

echo "-- Deploy --"
aws s3 sync build s3://$BUCKET_NAME 
aws cloudfront create-invalidation --distribution-id $DISTRIBUTION_ID --paths "/*" --no-cli-pager