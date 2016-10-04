require_relative "elements.rb"

class Topic

	def initialize(name)
		@name = name
		@block = "\t" + topic(@name)
	end

	def get_name
		return @name
	end

	def get(hash)
		if hash.is_a?(Hash)
			@block += category_topic(hash.keys[0], hash.values[0])
		else
			raise "hash parameter for get function is not of Hash type"
		end
	end

	def end
		@block += "</topic>\n\n"
		puts @block
	end

end