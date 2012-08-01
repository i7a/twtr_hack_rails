TWITTER_CONSUMER_KEY = 'xxxx'
TWITTER_CONSUMER_SECRET = 'yyyy'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, TWITTER_CONSUMER_KEY, TWITTER_CONSUMER_SECRET
end

