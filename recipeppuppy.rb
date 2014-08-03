require 'rubygems'
require 'httparty'
require 'json'

puts "Enter the 3 ingredients :"

puts "Ingredient1"
Ingredient1 = gets.chomp

puts "Ingredient2"
Ingredient2 = gets.chomp

puts "Ingredient3"
Ingredient3 = gets.chomp

ingredients = Ingredient1 + "," + Ingredient2 + "," + Ingredient3
puts ""

# puts ingredients
response = HTTParty.get("http://www.recipepuppy.com/api/?i=#{ingredients}")

data = response.body
recipe = JSON.parse(data)['results'].map { 
	|r| 
	puts r['title']
	puts r['href']
	puts r['ingredients'] 
}


