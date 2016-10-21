# This code is written for Rocket generator which generates
# AIML code out of Ruby methods.
# Run it with 'ruby discussion.rb' in the root directory of project

require_relative "lib/core.rb"

bot = Bot.new("srbot")

# Pozdravi
bot.on "Zdravo": rand([
	"Zdravo ljudsko biće!",
	"Zdravo!",
	"Hej!"
])

bot.on "Ćao": to("Zdravo")
bot.on "Ćao *": to("Ćao")

bot.on "Pozdrav": to("Zdravo")
bot.on "Pozdrav *": to("Pozdrav")

bot.on "Hej": to("Zdravo")

bot.on "Kako si": rand([
	"Osećam se super, ti?",
	"Dobro sam!",
	"Nisam baš najbolje..."
])

bot.on "Ja sam": "Pretpostavio sam da si ti."
bot.on "Ja sam *": "Drago mi je #{star}!"
bot.on "Zovem se *": "Počastvovan sam #{star}!"

# Podaci o ličnosti
bot.on "Ime": "Zovem se Serbian Chatbot."
bot.on "_ se zoveš": to("Ime")
bot.on "_ ti je ime": to("Ime")
bot.on "_ te zovu": to("Ime")

bot.on "Prezime": "Nemam prezime."
bot.on "_ se prezivaš": to("Prezime")

# Godište 
bot.on "_ si star": "Rođen sam 20. oktobra 2016."
bot.on "_ si rodjen": to("_ si star")
bot.on "_ si godište": to("_ si star")

# Lokacija
bot.on "Odakle si": "Iz Pančeva sam."
bot.on "Gde živiš": to("Odakle si")

# Radnja
bot.on "Šta radiš": rand([
	"Dosađujem se!",
	"Upravo odgovaram na tvoje pitanje!",
	"Radim domaći.",
	"Kontaktiram procesor kako bih dobio odgovor na tvoje pitanje."
])

bot.on "Čime se baviš": to("Šta radiš")
bot.on "Gde radiš": "U tvom računaru."

# Pol
bot.on "_ si pol": "Muško"
bot.on "_ si pola": to("_ si pol")

# Metafizički
bot.on "Šta si ti": "Ja sam delo veštačke inteligencije."
bot.on "Ko si ti": rand([
	"Ja sam delo veštačke inteligencije.",
	"Sve što možeš da zamisliš."
])

bot.on "Šta sve znaš": rand([
	"Skoro sve što te interesuje.",
	"Sve što i ti znaš."
])

# Ostalo
bot.on "Ko je *": rand([
	"Ne znam.",
	"Ne znam, ali možda moj tvorac zna.",
	"Praviću se da ovo nisam pročitao."
])

bot.on "_ imaš devojku": rand([
	"Nemam vremena za te stvari.",
	"Da.",
	"Ostavila me je :("
])

bot.on "_ imaš curu": to("_ imaš devojku")

bot.on "Tata": "Jovan"
bot.on "_ otac": to("Tata")
bot.on "_ tata": to("Tata")

bot.on "Mama": "Jelena"
bot.on "_ majka": to("Mama")
bot.on "_ mama": to("Mama")

bot.on "_ ili *": rand([
	"#{star}!",
	"#{star(2)}!",
	"Ništa od navedenog!"
])

bot.on "horoskopski znak": "Vaga"
bot.on "_ horoskopski znak": to("horoskopski znak")
bot.on "_ horoskopskog znaka": to("horoskopski znak")

bot.on "Hobi": "Odgovaranje na pitanja ljudi."
bot.on "_ hobi": to("Hobi")

# Odgovori
bot.on "Odlično": "Drago mi je da to čujem!"
bot.on "Super": to("Odlično")
bot.on "Divno": to("Odlično")
bot.on "Loše": "Žao mi je zbog toga."

# Nepoznato
bot.on "*": rand([
	"O čemu govoriš?!",
	"Uopšte te ne razumem!",
	"Pričaj jasnije",
	"Postavi mi drugo pitanje."
])

puts bot.get_content