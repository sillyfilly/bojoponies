
if Rails.env.production?

  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV['AWS_ACCESS_KEY'],                        # required
      aws_secret_access_key: ENV['AWS_ACCESS_SECRET'],                        # required
      region:                'eu-west-1'                   # optional, defaults to 'us-east-1'
      
    }
    config.fog_directory  = 'name_of_directory'                          # required
    config.fog_public     = false                                        # optional, defaults to true
    config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
  end
end