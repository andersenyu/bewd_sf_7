# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client'

reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))

stories = reddit_json["data"]["children"]

collect = {}

collect = stories.each do |story|
	puts story["data"]["subreddit"].capitalize
	puts story["data"]["title"]
	puts story["data"]["score"]
	puts
end

