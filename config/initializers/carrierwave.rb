CarrierWave.configure do |config|

  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['TND_GO_S3_ACCESS_KEY'],
    aws_secret_access_key: ENV['TND_GO_S3_SECRET_KEY'],
    region: 'ap-northeast-1'
  }

  config.fog_public = false
  config.fog_authenticated_url_expiration = 60

  case Rails.env
  when 'production'
    config.fog_directory = ENV['TND_GO_S3_BUCKET']

  when 'development'
    config.fog_directory = ENV['TND_GO_S3_BUCKET_DEV']

  when 'test'
    config.fog_directory = ENV['TND_GO_S3_BUCKET_DEV']

  end

end

