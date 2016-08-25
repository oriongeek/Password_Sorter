#!/usr/bin/env ruby
=begin
require 'rainbow/ext/string'
rescue LoadError
p "Missing gem rainbow. Do gem install rainbow on terminal"
end

puts "Password File Sorter\n This will sort out all 8 character and greater\nlength words from a file and will save it as pass.txt\n\n".color(:red)
print "Enter the full path to the password file\t".color(:blue)
path = gets.chomp

a= File.readlines(path)
b = File.open("pass.txt","w")
a.each{|x|
if x.length > 8
b.write(x)
end }
b.close
puts "File pass.txt created in #{Dir.pwd}"


