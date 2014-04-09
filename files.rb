require 'color_text'

puts "Hey, there, go ahead, write something and then decide what to do with it. If you don´t want to enter any input, just press return".purple
input = gets.chomp

puts "Type:
'save' - to save input to file
'add' - add your input to the file
'read' - read the current file
'introspect' - print program out on screen".neon
command = gets.chomp

content_read = lambda {|content| content.read}

case command
	when "save" then File.open("hello_from_ruby.txt", "w"){ |content| content.write input}
	when "add" then File.open("hello_from_ruby.txt", "a"){ |content| content.write input}
	when "read" then puts File.open("hello_from_ruby.txt"){|content| content.read}
	when "introspect" then puts File.open("files.rb"){|content| content.read}.green
end
