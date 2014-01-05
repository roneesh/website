Twitter.configure do |config|
	config.consumer_key = ENV["CONSUMER_KEY"]
	config.consumer_secret = ENV["CONSUMER_SECRET"]
	config.oauth_token = ENV["ACCESS_TOKEN"]
	config.oauth_token_secret = ENV["ACCESS_TOKEN_SECRET"]
end


# AWS::S3::Base.establish_connection!(  
#   :access_key_id => ENV["AMAZON_ACCESS_KEY_ID"],
#   :secret_access_key => ENV["AMAZON_SECRET_ACCESS_KEY"])

# BUCKET = 'roneeshwebsite-lessons'