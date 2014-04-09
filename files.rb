require 'color_text'

puts "Hey, there, go ahead, write  something and we´ll put it into a file for you!".neon
input = gets.chomp
#create new file hello_from_ruby
puts "Type:
'save' - to save input to file
'read' - read the current file"
command = gets.chomp

case command
	when "save" then File.open("hello_from_ruby.txt", "w"){ |content| content.write input}
	when "read" then puts File.open("hello_from_ruby.txt"){|content| content.read}
end
