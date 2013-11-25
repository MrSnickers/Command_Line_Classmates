### App to make students

require './lib/student.rb'
require './lib/scraper.rb'
require 'awesome_print'

student_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com/")

name_array = student_scraper.get_students_names
blog_array = student_scraper.get_students_blogs
twitter_array = student_scraper.get_students_twitters

index_counter = 0
student_directory = []

name_array.each do |name|
  student = Student.new(name, blog_array[index_counter], twitter_array[index_counter])
  student_directory << student
  index_counter += 1
end

puts student_directory


puts "Do you want to look up the Twitter of a specific student? Type: 'T'"
puts "Do you want to look up the blog of a specific student? Type: 'B'"
puts "Do you want to try out Twitter roulette? Type: 'R'"
puts "Do you want to view a random blog? Type: 'L'"
puts "To exit type: 'exit'"

response = gets.chomp
case

when response.downcase == "t"
    ##
when response.downcase == "b"
    ##
when response.downcase == "r"
    ##
when response.downcase == "l"
    ##
when response.downcase == "exit"
    puts "Goodbye"
else 
    puts "I am so confused."
end