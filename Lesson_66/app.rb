#!/usr/bin/ruby
# encoding: utf-8

content_path = File.dirname(__FILE__)
regim = "r:UTF-8"

time = Time.now

# file where will put random face
file_name = content_path + "/" + "face_" + time.strftime('%Y-%m-%d_%H:%M:%S') + ".txt"


# get parts of face from file
file_forehead = content_path + "/data/forehead.txt"
file_eyes     = content_path + "/data/eyes.txt"
file_nose     = content_path + "/data/nose.txt"
file_mouth    = content_path + "/data/mouth.txt"

random_face = []


if File.exist?(file_forehead)
	forehead = File.new(file_forehead, regim)
	forehead_content = forehead.readlines
	forehead.close
else
	puts "File forehead.txt not found"
end

if File.exist?(file_eyes)
	eyes = File.new(file_eyes, regim)
	eyes_content = eyes.readlines
	eyes.close
else
	puts "File eyes not found"
end

if File.exist?(file_nose)
	nose = File.new(file_nose, regim)
	nose_content = nose.readlines
	nose.close
else
	puts "File nose not found"
end

if File.exist?(file_mouth)
	mouth = File.new(file_mouth, regim)
	mouth_content = mouth.readlines
	mouth.close
else
	puts "File mouth.txt not found"
end

forehead = forehead_content.sample
eyes = eyes_content.sample
nose = nose_content.sample
mouth = mouth_content.sample

random_face << forehead
random_face << eyes
random_face << nose
random_face << mouth

# print face in console
# and put face in a file

file = File.new(file_name, "a:UTF-8")

puts "Генератор рожицы: "

for item in random_face do 
	puts item
	file.puts item
end 

file.close






