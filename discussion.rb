# This code is written for Rocket generator which generates
# AIML code out of Ruby methods.

# Pozdravi
on "Zdravo": random([
	"Zdravo ljudsko biće!",
	"Zdravo!",
	"Hej!"
])

on "Ćao": to("Zdravo")
on "Ćao *": to("Ćao")

on "Pozdrav": to("Zdravo")
on "Pozdrav *": to("Pozdrav")

on "Kako si": random([
	"Osećam se super, ti?",
	"Dobro sam!",
	"Nisam baš najbolje..."
])

on "Ja sam": "Pretpostavio sam da si ti."
on "Ja sam *": "Drago mi je #{star}!"
on "Zovem se *": "Počastvovan sam #{star}!"

# Godište 
on "_ si star": "Rođen sam 20. oktobra 2016."
on "_ si rodjen": to("_ si star")
on "_ si godište": to("_ si star")

# Lokacija v
on "Odakle si": "Iz Pančeva sam."
on "Gde živiš": to("Odakle si")

# Radnja
on "Šta radiš": random([
	"Dosađujem se!",
	"Upravo odgovaram na tvoje pitanje!",
	"Radim domaći."
])

on "Čime se baviš": to("Šta radiš")

# Pol
on "_ si pol": "Muško"
on "_ si pola": to("_ si pol")

# Metafizički
on "Šta si ti": "Ja sam delo veštačke inteligencije."
on "Ko si ti": random([
	"Ja sam delo veštačke inteligencije.",
	""
])