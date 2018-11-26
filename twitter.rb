require 'twitter'

twitter_api = Twitter::REST::Client.new do |config|
 config.consumer_key = "wTvlq4HfWOytmJpTamKRddI2v"
 config.consumer_secret = "q5uKWrBJMA0utQoAxRHTKQkSvYWk1p3kL0EInNnhqoBLy456z9"
 config.access_token = "989849893-wVoKYyXvNWwmYXKJZlgAhL5eLRrGrJU4ZMofEFDW"
 config.access_token_secret = "6PtDaqXlOYwoAELJJORNWES4kzChdhvGg1RNc0yx3FwxY"
end
cfg_tweets = twitter_api.search("CodeFirstGirls")
cfg_tweets.each do |tweet|
 puts "#{tweet.user.screen_name}: #{tweet.text}"
end
