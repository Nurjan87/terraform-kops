#!/bin/bash
echo $0
if [ "$0" = "$BASH_SOURCE" ]
then
   echo "$O: Please source this file."
   echo "e.g" source ./setenv configurations/data-rnd-us-vet1-v1"
   return 1
fi

if [ -z "$1" ]
then 
   ehco "setenv: you must provide the name of the configuration file."
   ehco "e.g. cource ./setenv configuration/data-rnd-us-vet1-v1"
   return 1
fi




# Get directory we are running from
DIR=$(pwd)
DATAFILE="DIR/1"
if [ ! -d "$DIR/configuration" ]; then
    echo "setenv: Must be run from the root directory of the terraform project."
    return 1
fi
if [ ! -f "DATAFILE" ]; then
    echo "setenv: Configuration file not found: $DATAFILE"
    return 1
fi



# Get inv from DATAFILE
ENVIRONMENT=$(sed -nr 's/^\s*environment\s*=\s*"([^"]*)".*$/\1p' "$DATAFILE")
S3BUCKET=$(sed -nr 's/^\s*s3_backet\s*=\s*"([^"]*)".*$/\1p' "$DATAFILE")
S3BUCKETPROJ=$(sed -nr 's/^\s*s3_folder_project\s*=\s*"([^"]*)".*$/\1p' "$DATAFILE")
S3BUCKETREGION=$(sed -nr 's/^\s*s3_folder_region\s*=\s*"([^"]*)".*$/\1p' "$DATAFILE"))
S3BUCKETTYPE=$(sed -nr 's/^\s*s3_folder_type\s*=\s*"([^"]*)".*$/\1p' "$DATAFILE"))
S3BUCKETFILE=$(sed -nr 's/^\s*s3_tfstate_file\s*=\s*"([^"]*)".*$/\1p' "$DATAFILE"))
BASE_DOMAIN=$(sed -nr 's/^\s*base_domain\s*=\s*"([^"]*)".*$/\1p' "$DATAFILE"))
if [ -z "$ENVIRONMENT" ]
then
   echo "setenv: 'environment' variable not set in configuration file."
   return 1
fi
if [ -z "$S3BUCKET" ]
then
   echo "setenv: 's3_bucket' varable not set in configuration file."
   return 1
fi
if [ -z "$S3BUCKETPROJ" ]
then
   echo "setenv: 's3_folder_project' varable not set in configuration file."
   return 1
fi
if [ -z "$S3BUCKETREGION" ]
then
   echo "setenv: 's3_folder_region' variable not set in configuration file."
   return 1
fi
if [ -z "$S3BUCKETTYPE" ]    
then
   echo "setenv: 's3_folder_type' variable not set in configuration file."
   return 1
fi
if [ -z "$S3TFSTATEFILE" ]
then
   echo "setenv: 's3_tfstate_file' variable not set in configuration file."
   echo "e.g. s3_tfstate_file=\"infrastructure.tfstate\""
return 1
fi
cat << EOF > "$DIR/backend.tf"
terrafom {
backend "s3" {
bucket = "${S3BUCKET}"
key = "${S3BUCKETPROJ}/${S3BUCKETREGION}/${S3BUCKETTYPE}/${ENVIRONMENT}/${S3TFSTATEFILE}"
region = "${S3BUCKETREGION}"
  } 
}
EOF
cat backend.tf
rm -rf .terraform/terraform.tfstate
terraform init