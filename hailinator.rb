require "twitter"
require "CSV"

Twitter.configure do |config|
  config.consumer_key = "R8ZdsdR5YmpGanFDZlItCg"
  config.consumer_secret = "4nZb67v4vx1n3sX9tVLrz9LI2qpJhEBwMkx0kmsR8"
  config.oauth_token = "1455072764-1YjPcw8JKU7Em1IqfDnSCFmwGSJPxPoFjUNbmll"
  config.oauth_token_secret = "Qa5tPfyya08Thcd0zlOkhuRwnSYhkW4lAG6UxqK6AE"
end

tweets = Twitter.search("#hail", options = {:count => 10}).results.map do |tweet|

	tweet.text

end

# puts tweets[0]

10.times do |x|
	CSV.open("Hail_tweets.csv","w") do |csv|
			csv << tweets[x]
		end
	end
