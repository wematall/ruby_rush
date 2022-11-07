class WordReader

	def read_from_file(path)
		if File.exist?(path)
			file = File.new(path, 'r:UTF-8')
			file_content = file.readlines
			file.close

			return file_content.sample.chomp
		else
			return nil
		end
	end

end