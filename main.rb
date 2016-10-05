require_relative "src/core.rb"

on "How are you": "I'm fine, thanks!"
on "How do you feel": to("How are you")
on "*": random([
	"I don't understand you! #{think(star)}",
	"What you just said?",
	"Talk clearly!"
])

movies = Topic.new("movies")
movies.on "_ favorite movie": "Titanic"
movies.end

on "My name is *": "Glad to meet you #{star}!"

# You can make multiple condition tags chained
# with + operator

on "My name is *" => 
check("name", "Gordon") { |items|
	items.push "Glad to meet you Gordon! #{sr}"
} + 
check("name", "Ema") { |items|
	items.push "Glad to meet you Ema! #{date}"
} + 
check("name", "John") { |items|
	items.push "Glad to meet you John! #{version}"
}