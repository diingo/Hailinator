require "twitter"
require "CSV"

Twitter.configure do |config|
  config.consumer_key = ""
  config.consumer_secret = ""
  config.oauth_token = ""
  config.oauth_token_secret = ""
end

tweets = [] 

Twitter.search("#hail", options = {:count => 10}).results.each do |tweet|


	tweets << [tweet.user.handle, tweet.text, tweet.user.url] 


end


# puts tweets[0]
# puts " "
# puts tweets[9]

# 10.times do |x|
# 	CSV.open("Hail_tweets.csv","w") do |csv|
# 		csv << tweets[x]
# 	end
# end

CSV.open("Hail_tweets.csv", "w") do |csv|
	csv << ["handle", "text", "url"]
	10.times do |tweet|
		csv << [tweets[tweet].join(",")]
	end
end

# our_csv = CSV.generate(row_sep: "\r\n", quote_char: '"', force_quotes: true) do |csv|
# 	10.times do |tweet|
# 		csv << [tweets[tweet].join(",")]
# 	end

# end

