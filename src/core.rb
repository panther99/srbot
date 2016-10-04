require_relative "elements.rb"
require_relative "topic.rb"

def get(hash)
	if hash.is_a? Hash
		puts category_standard(hash.keys[0], hash.values[0])
	else
		raise "hash parameter for get function is not of Hash type"
	end
end

def to(pattern)
	return "<srai>#{pattern.upcase}</srai>"
end

def star(index=1)
	return placeholder(index)
end

def that(pattern)
	return context(pattern)
end

def random(arr)
	if arr.is_a? Array
		return items(arr)
	else
		raise "arr parameter for random function is not of Array type"
	end
end
