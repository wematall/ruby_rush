#!/usr/bin/ruby
# encoding: utf-8

content_path = File.dirname(__FILE__)
regim = "r:UTF-8"

file_questions = content_path + "/data/questions.txt"
file_answers   = content_path + "/data/answers.txt"

if File.exist?(file_questions)
	questions = File.new(file_questions, regim)
	content_questions = questions.readlines
	questions.close
else
	puts "File questions.txt not found"
end


if File.exist?(file_answers)
	answers = File.new(file_answers, regim)
	content_answers = answers.readlines
	answers.close
else
	puts "File answers.txt not found"
end


# logical part
puts "Мини-викторина. Ответьте на вопросы."

n = content_questions.length
question_number = 0
right_answers_counter = 0

n.times do

	puts content_questions[question_number].to_s
	user_answer = STDIN.gets.encode("UTF-8").chomp

	if (user_answer + "\n") == content_answers[question_number].to_s
		puts "Верный ответ!"
		right_answers_counter += 1
	else
		puts "Неправильно. Правильный ответ: #{content_answers[question_number]}"
	end

	question_number += 1

end

puts "Викторина закончена"
puts "У вас #{right_answers_counter} правильных ответов из #{content_questions.length}"

