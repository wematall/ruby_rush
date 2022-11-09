require 'net/http'

# случайная строка для пользовательской игры

def get_random_regexp_string
	patterns = ['торф', 'мотор', 'крыша', 'труба', 'крик']

	pattern = patterns.sample

	letter = pattern.split('').sample

	return pattern.gsub(letter, '.')
end

# проверяем есть ли такое слово на вики словаре?
def word_exists?(word)
	url = "https://ru.wiktionary.org/wiki/#{word}"

	wiktionary_page = Net::HTTP.get(URI.parse(URI.encode(url))).force_encoding('UTF-8')

	if wiktionary_page =~ /В настоящий момент текст на данной странице отсутствует/
		return false
	else
		return true
	end

end
