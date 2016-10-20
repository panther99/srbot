# Not yet fully implemented: don't use for production purposes!
# Copyright: Nikola S.

# Elements are used in templates when code is translated to AIML
# to build easier formatting of the final code

def category_start
	"<category>"
end

def category_end
	"</category>"
end

def pattern(content)
	"<pattern>#{content.upcase}</category>"
end

def template_start
	"<template>"
end

def template_end
	"</template>"
end

def topic(name)
	"<topic name=\"#{name}\">"
end

def topic_end
	"</topic>"
end

def condition(var, val)
	"<condition name=\"#{var}\" value=\"#{val}\">"
end

def condition_end
	"</condition>"
end

# star
def placeholder(index=1)
	if index == 1
		"<star/>"
	else
		"<star index=\"#{index}\">"
	end
end

# topicstar
def placeholder_topic(index=1)
	if index == 1
		"<topicstar/>"
	else
		"<topicstar index=\"#{index}\>"
	end
end

# thatstar
def placeholder_context(index=1)
	if index == 1
		"<thatstar/>"
	else
		"<thatstar index=\"#{index}\">"
	end
end

# input
def user_input(index=1)
	if index == 1
		"<input/>"
	else
		"<input index=\"#{index}\">"
	end
end

# request
def user_request(index=1)
	if index == 1
		"<request/>"
	else
		"<request index=\"#{index}\">"
	end
end

# bot
def bot_response
	"<response>"
end

# person
def convert_person(pattern)
	"<person>#{pattern}</person>"
end

# person2
def convert_person2(pattern)
	"<person2>#{pattern}</person2>"
end

# gender
def convert_gender(pattern)
	"<gender>#{pattern}</gender>"
end

# date
def out_date
	"<date/>"
end

# id
def out_id
	"<id/>"
end

# size
def out_size
	"<size/>"
end

# version
def out_version
	"<version/>"
end

# uppercase
def format_uppercase(pattern)
	"<uppercase>#{pattern}</uppercase>"
end

# lowercase
def format_lowercase(pattern)
	"<lowercase>#{pattern}</lowercase>"
end

# formal
def format_formal(pattern)
	"<formal>#{pattern}</formal>"
end

# sr
def srai_star
	"<sr/>"
end

# that
def context(indexes=[], pattern)
	if !indexes.empty?
		"<that index=\"#{indexes[0]}, #{indexes[1]}\">#{pattern}</that>"
	else
		"<that>#{pattern}</that>"
	end
end

# random
def items(arr)
	@block = "<random>"
	arr.each { |item|
		@block += """<li>#{item}</li>"""
	}
	@block += "</random>"
	return @block
end

# Templates
def category_standard(pattern, template)
	"""
	#{category_start}
	#{pattern(pattern.upcase)}
	#{template_start}
	#{template}
	#{template_end}
	#{category_end}
	"""
end

def category_topic(pattern, template)
	"""
	#{category_start}
	#{pattern(pattern.upcase)}
	#{template_start}
	#{template}
	#{template_end}
	#{category_end}
	"""
end