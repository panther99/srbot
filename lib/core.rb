require 'pretty-xml'
include PrettyXML

require_relative "helpers.rb"

class Bot

	# Creates new AIML constructor with defined bot name and version
	#
	# @param name [String] name of AIML document
	# @param version [String] version of AIML used in document
	def initialize(name, version="2.0")
		@name = name
		@content = @content.to_s + "<aiml version=\"#{version}\">"
		@debug = false
		@pretty = true
	end

	# Defines category with pattern and template in it
	#
	# @param hash [Hash] content for pattern and template (pattern => template)
	def on(hash)
		if hash.is_a? Hash
			@content += "<category><pattern>#{hash.keys[0].upcase}</pattern><template>#{hash.values[0]}</template></category>"
		else
			raise "on function needs to have hash as parameter"
		end
	end

	# Defines options for current bot
	#
	# @note Debug option can be changed manually throughout the program (see {#verbose_on} and {#verbose_off})!
	# @param conf [Hash] options for current bot
	def options(conf = {
		:debug => false,
		:pretty => true
	})

		@debug = conf[:debug]
		@pretty = conf[:pretty]
	end

	# Builds current AIML document
	def build
		if !@content.empty?
			@content += "</aiml>"
		else
			raise "build function needs to be called when specification is finished"
		end
	end

	# Turns on debugging
	def verbose_on
		@debug = true
	end

	# Turns off debugging
	def verbose_off
		@debug = false
	end

	# Returns the name of AIML document
	#
	# @return [String] name of current AIML document
	def get_name
		return @name
	end

	# Returns the AIML content of the current instance
	#
	# @note If pretty option is turned on returned code will be formatted
	# @return [String] content of the current instance
	def get_content
		if @pretty
			return write @content
		else
			return @content
		end
	end

end