#les voielles
def isvowel(letter)
	if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" || letter == "y"
		return true
	end
	return false
end

#manipulation des voielles
def translate(word) 
	phrase = word.split
	longueur_phrase = 0
	phrase_finale = []

	while longueur_phrase < phrase.length
		if isvowel(phrase[longueur_phrase][0])
			new_word = phrase[longueur_phrase] + "ay"
		end
		if isvowel(phrase[longueur_phrase][0]) == false
			n=0
			array_provisoire = []
			while isvowel(phrase[longueur_phrase][n]) == false
				if phrase[longueur_phrase][n] == "q"
					array_provisoire << phrase[longueur_phrase][n]
					array_provisoire << phrase[longueur_phrase][n+1]
					n = n+1					
				else
					array_provisoire << phrase[longueur_phrase][n]
				end
				n = n +1
			end
			array_provisoire << "ay"
			array_provisoire_2 = []
			while n < phrase[longueur_phrase].length
				array_provisoire_2 << phrase[longueur_phrase][n]
				n = n + 1
			end
			new_word = []
			new_word << array_provisoire_2
			new_word << array_provisoire
			new_word = new_word.join
# puts  new_word
		end
		phrase_finale << new_word
		longueur_phrase = longueur_phrase + 1
	end
	return phrase_finale.join(" ")
end
