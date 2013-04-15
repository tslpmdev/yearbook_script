require 'open-uri'
require 'json'
require './student.rb'

url = "http://yearbook-api.herokuapp.com/2013/Spring/36.json"

raw_response_string = open(url).read
ruby_response_object = JSON.parse(raw_response_string)

list_from_api = ruby_response_object["students"]

students = Array.new

list_from_api.each do |student_hash|
  s = Student.new
  s.name = student_hash["first_name"] + " " + student_hash["last_name"]
  s.photo_url = student_hash["avatar"]
  s.section = "AM"
  s.twitter = student_hash["twitter"]

  students << s
end

puts "<html>"
puts "  <head>"
puts "    <title>AM Dev Students</title>"
puts "    <link rel='stylesheet' href='styles.css' type='text/css'>"
puts "  </head>"
puts "  <body>"
puts "    <ul>"
students.each do |stud|
  puts stud.introduce
end
puts "    </ul>"
puts "  </body>"
puts "</html>"
