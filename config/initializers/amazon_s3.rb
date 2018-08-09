require 'aws-sdk-s3'

# Aws.config.update({
#                     region: 'us-west-2',
#                     credentials: Aws::Credentials.new('akid', 'secret')
#                   })

creds = Minskrb::Application.credentials.aws
Aws.config[:credentials] = Aws::Credentials.new(creds[:access_key_id], creds[:secret_access_key])
Aws.config[:region] = 'eu-central-1'
