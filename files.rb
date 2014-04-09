require 'color_text'

puts "Hey, there, go ahead, write something and then decide what to do with it. If you don´t want to enter any input, just press return".purple
@input = gets.chomp

puts "Type:
'save' - to save input to file
'add' - add your input to the file
'read' - read the current file
'introspect' - print program out on screen".neon
command = gets.chomp

def read_file(name, reader = ->(content) {content.read})
	puts reader.call(File.open(name)).green
end

def write_input_to(name, writer = ->(content) {content.write @input})
	writer.call(File.open(name, "w"))
end

def append_input_to(name, writer = ->(content) {content.write @input})
	writer.call(File.open(name, "a"))
end

case command
	when "save" then write_input_to("hello_from_ruby.txt")
	when "add" then append_input_to("hello_from_ruby.txt")
	when "read" then read_file("hello_from_ruby.txt")
	when "introspect" then read_file("files.rb")
end
