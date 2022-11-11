#!/usr/bin/ruby
# encoding: utf-8

# send e-mail from application

require "pony"
require "io/console"

puts "Enter your e-mail at mail.ru: "
my_mail = STDIN.gets.chomp

puts "Enter password from you e-mail address #{my_mail} to send e-mail"
password = STDIN.noecho(&:gets).chomp

puts "where send mail? Enter e-mail: "
send_to = STDIN.gets.chomp

puts "Enter e-mail subject: "
subject = STDIN.gets.chomp.encode("UTF-8")

puts "content of your letter: "
body = STDIN.gets.chomp.encode("UTF-8")

begin

Pony.mail(
{
	:subject => subject,
	:body => body,
	:to => send_to,
	:from => my_mail,
	:via => :smtp,
	:via_options => {
		:address => 'smtp.mail.ru',
		:port => '465',
		:tls => true,
		:user_name => my_mail,
		:password => password,
		:authentication => :plain
	}
}
)

puts "Письмо успешно отправлено"

rescue SocketError # можно не сохранять ошибку в переменную
	puts "не могу соединиться с сервером"

rescue Net::SMTPSyntaxError => error
	puts "Вы некорректно задали параметры письма: " + error.message

rescue Net::SMTPAuthenticationError => error
	puts "вы неправильно указали пароль: " + error.message

end

