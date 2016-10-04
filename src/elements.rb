# Elements are used in templates when code is translated to AIML
# to build easier formatting of the final code

def category_start
	return "<category>"
end

def category_end
	return "</category>"
end

def pattern(content)
	return "<pattern>#{content.upcase}</category>"
end

def template_start
	return "<template>"
end

def template_end
	return "</template>"
end

def topic(name)
	return "<topic name=\"#{name}\">"
end

def topic_end
	return "</topic>"
end

# star
def placeholder(index=1)
	if index == 1
		return "<star/>"
	else
		return "<star index=\"#{index}\">"
	end
end

# that
def context(pattern)
	return "<that>#{pattern}</that>"
end

# random
def items(arr)
	@block = "<random>"
	arr.each { |item|
		@block += """\n\t\t\t\t<li>#{item}</li>"""
	}
	@block += "\n\t\t\t</random>"
	return @block
end

# Templates

def category_standard(pattern, template)
	return """	#{category_start}
	\t#{pattern(pattern.upcase)}
	\t#{template_start}
	\t\t#{template}
	\t#{template_end}
	#{category_end}
	"""
end

def category_topic(pattern, template)
	return """
	\t#{category_start}
	\t\t#{pattern(pattern.upcase)}
	\t\t#{template_start}
	\t\t\t#{template}
	\t\t#{template_end}
	\t#{category_end}
	"""
end