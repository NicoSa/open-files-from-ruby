require 'color_text'

puts "Hey, there, go ahead, write  something and we´ll put it into a file for you!".neon
input = gets.chomp
#create new file hello_from_ruby
File.open("hello_from_ruby.txt", "w"){ |content| content.write input}
