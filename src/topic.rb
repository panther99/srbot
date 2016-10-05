require_relative "elements.rb"

class Topic

	def initialize(name)
		@name = name
		@block = topic(@name)
	end

	def get_name
		return @name
	end

	def on(hash)
		if hash.is_a?(Hash)
			@block += category_topic(hash.keys[0], hash.values[0])
		else
			raise "hash parameter for get function is not of Hash type"
		end
	end

	def end
		@block += "</topic>"
		puts @block
	end

end