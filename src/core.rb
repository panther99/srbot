require_relative "elements.rb"
require_relative "topic.rb"

def on(hash)
	if hash.is_a? Hash
		puts category_standard(hash.keys[0], hash.values[0])
	else
		raise "hash parameter for get function is not of Hash type"
	end
end

def to(pattern)
	"<srai>#{pattern.upcase}</srai>"
end

def think(pattern)
	"<think>#{pattern}</think>"
end

def star(index=1)
	placeholder(index)
end

def topicstar(index=1)
	placeholder_topic(index)
end

def thatstar(index=1)
	placeholder_context(index)
end

def input(index=1)
	user_input(index)
end

def request(index=1)
	user_request(index)
end

def response
	bot_response
end

def that(indexes=[], pattern)
	if indexes.empty?
		context(pattern)
	elsif !indexes.is_a? Array
		raise "indexes for 'that' tag should be put in an array (like this: [2, 1])"
	else
		indexes.each { |index|
			raise "index in array of indexes for 'that' tag needs to be Integer" unless index.is_a? Integer
		}
		context(indexes, pattern)
	end
end

def person(pattern)
	convert_person(pattern)
end

def person2(pattern)
	convert_person2(pattern)
end

def gender(pattern)
	convert_gender(pattern)
end

def date
	out_date
end

def id
	out_id
end

def size
	out_size
end

def version
	out_version
end

def uppercase(pattern)
	format_uppercase(pattern)
end

def lowercase(pattern)
	format_lowercase(pattern)
end

def formal(pattern)
	format_formal(pattern)
end

def sr
	srai_star
end

def random(arr)
	if arr.is_a? Array
		items(arr)
	else
		raise "arr parameter for random function is not of Array type"
	end
end

def check(var, val)
	@array = []
	@block = "#{condition(var, val)}"
	if block_given?
		yield(@array)
		if !@array.empty?
			@array.each {|item|
				@block += "#{item.to_s}\n"
			}
		end
	end
	@block += "#{condition_end}"
	@block
end
