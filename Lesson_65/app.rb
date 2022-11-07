#!/usr/bin/ruby
# encoding: utf-8

# Hello, file!
# Напишите программу, 
# которая здороваеся в файл hello.txt (пишет строку "Hello, file!" в него).
time = Time.now

message_time = time.strftime("%H:%M:%S")
separator = "------------------------------"

current_path = File.dirname(__FILE__)

file_name = current_path + "/data/hello.txt"

string = "Hello, file!"

file = File.new(file_name, "a:UTF-8")

file.puts("\n\r #{message_time} \n\r")
file.puts(string)
file.puts separator

file.close