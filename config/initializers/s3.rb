if Rails.env.production?
  Aws.config = Rails.application.credentials.aws
end
