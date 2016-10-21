# Returns srai tag with defined pattern which is automatically uppercased
#
# @return [String] srai tag with uppercased pattern
def to(pattern)
	return "<srai>#{pattern.upcase}</srai>"
end

# Returns random block with list of items
#
# @return [String] list of items in the random sequence
def rand(list)
	block = "<random>"

	if list.is_a? Array
			
		list.each do |l|
			block += "<li>#{l}</li>"
		end
			
		block += "</random>"
		
	else
		raise "rand function needs to have array as parameter"
	end

	return block
end

# Returns condition block with name, value and defined result
#
# @param condition [Hash] name and value for condition (name => value)
# @param result [String] string to be written in case if condition is true
# @return [String] condition block with name, value and defined result
def cond(condition, result)
	block = ""

	if condition.is_a? Hash
		name = condition.keys[0]
		value = condition.values[0]
		block += "<condition name=\"#{name}\" value=\"#{value}\">#{result.to_s}</condition>"
	else
		raise "condition parameter needs to have hash as parameter"
	end

	return block
end

# Returns star tag (placeholder) with index parameter defined if index is higher than 1
# 
# @param index [Integer] index parameter of star tag
# @return [String] star tag with or without defined index parameter
def star(index=1)
	return "<star index=\"#{index}\"/>" unless index == 1
	return "<star/>"
end

# Returns think tag which, when used in chatbot, isn't seen by the user
#
# @param content [String] content to be written between think tags
# @return [String] think tag with defined content
def hide(content)
	return "<think>#{content}</think>"
end