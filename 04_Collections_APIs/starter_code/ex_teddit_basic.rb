require 'pry'
require 'pry-byebug'

#TEDDIT:  Strings - Student's File
# Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
# This exercise will be used throughout the ruby portion of this course. 
# Each lesson we will incrementally build a news aggregator. 
# We will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
# But until then we will hard code stories.

#Goals 
#1 -  Get the story title, category from user from the command line 
#2 -  Write a conditional that determine upvotes based on the category
#3 -  Save every story in a collection 
#4 -  Print each stories title, category and upvotes to the screen

#use hashes

def gets_story
	puts "What is the title of your story? \n" #\n adds a line
	title = gets.strip.capitalize
	puts "What category do you want to put your story in? \n"
	category = gets.strip.capitalize
	determine_upvotes(title, category)
end

#food * 5, cats * 7, cars * 4, everything else = 1

def determine_upvotes(title, category) 
	puts "How many points do you want to give this category?"
	upvotes = gets.strip.to_i
	if category.downcase == "food"
		upvotes *= 5 #this is a shortcut for upvotes = upvotes * 5
	elsif category.downcase == "cats"
		upvotes *= 7
	elsif category.downcase == "cars"
		upvotes *= 4
	else
		upvotes *= 1
	end
	create_story(title, category, upvotes)
end

def create_story(title, category, upvotes) #you can strip story here and 
	{Title: title, Category: category, Score: upvotes}
end

def get_the_stories
	stories = [] #create container for all stories
	story = gets_story #get one story & create hash
	stories.push(story) #push every story into the stories array can also use <<
	puts "Do you have more stories?"
	more_stories = gets.strip.downcase
	if more_stories == "yes"
		get_the_stories
	else
		puts "Awesome! Here is a list of your stories:"
	end
	print_news_feed(stories)
	#another method that prints all stories after someone says no
end

def print_news_feed(stories)
	stories.each do |story|
		puts "Title: #{story[:Title]}, Category: #{story[:Category]}, Score: #{story[:Score]}"
	end
end

get_the_stories



