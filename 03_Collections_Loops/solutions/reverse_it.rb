require 'pry'
require 'pry-byebug'

#this will reverse your string buddy!
def my_reverse(string)
  char_array = string.downcase.chars 
  word = "" 
  until char_array.length == 0
    word << char_array.pop
  end
  word.capitalize
end

def is_palindrome?(word)
  if word.downcase == my_reverse(word).downcase
    "Yay! A Palindrome!"
  else
    "Shucks, Not A Palindrome"
  end
end

puts "Please provide a word \n"
word = gets.chomp
puts my_reverse(word)
puts is_palindrome?(word)