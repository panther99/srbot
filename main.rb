require_relative "src/core.rb"

get "How are you": "I'm fine, thanks!"
get "How do you feel": to("How are you")
#get "*": random([
#	"I don't understand you!",
#	"What you just said?",
#	"Talk clearly!"
#])

movies = Topic.new("movies")
movies.get "_ favorite movie": "Titanic"
movies.end

puts "#{movies.method(:get).owner}"

#get "My name is *": "Glad to meet you #{star}!"