class ResultPrinter

  def initialize
    @status_image = []

    current_path = File.dirname(__FILE__)
    counter = 0

    while counter <= 7 do 
      file_name = current_path + "/data/images/#{counter}.txt"

      if File.exist?(file_name)
        file = File.new(file_name, 'r:UTF-8')
        @status_image << file.read 
        file.close
      else
        @status_image << "\n [Изображение не найдено]\n"
      end

      counter += 1
    end
  end

	def print_status(game)
		cls 

		puts "Слово: #{get_word_for_print(game.letters, game.good_letters)}"
		puts "Ошибки: #{game.bad_letters.join(", ").to_s}"

		print_viselitsa(game.errors)

		if game.status == -1
			puts "Вы проиграли :("
			puts "Загаданное слово было: " + game.letters.join("")
		elsif game.status == 1
			puts "Поздравляем, вы выиграли!"
		else
			puts "У вас осталось ошибок: " + (7 - game.errors).to_s
		end
	end

	def cls
		system "clear" or system "cls"
	end


	def get_word_for_print(letters, good_letters)
		result = ""

		for item in letters do 
			if good_letters.include?(item)
				result += item + " "
			else
				result += "_ "
			end
		end

		return result 
	end


	# метод с графикой

	def print_viselitsa(errors)
    puts @status_image[errors]
  end

end