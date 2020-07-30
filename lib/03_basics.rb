#test si nul et comparaison
def who_is_bigger(a,b,c)
	if (a == nil || b == nil || c == nil)
		return "nil detected"
	elsif (a > b && a > c)
		return "a is bigger"
	elsif (b > a && b > c)
		return "b is bigger"
	else
		return "c is bigger"
	end
end

#fonction reverse et met en majuscule
def reverse_upcase_noLTA(str)
	return str.reverse!.upcase.tr('TLA','')
end

# array_42 prend un tableau comme paramètre et renvoie:
  # - vrai s'il y a un 42 dans les éléments du tableau
  # - faux sinon
  
def array_42(arr)
	arr.to_a.include? (42)
end

# La fonction magic_array prend un tableau de nombres ou un tableau de
  # tableau de nombre comme paramètre et retourne le même tableau:
  # - aplati (c'est-à-dire plus de tableaux dans le tableau)
  # - trié
  # - avec chaque nombre multiplié par 2
  # - avec chaque multiple de 3 supprimé
  # - avec chaque numéro en double supprimé (tout numéro ne doit apparaître qu'une seule fois)
  # - trié
def magic_array(arr)
	return arr.flatten.sort!.uniq.map { |x| if (x%3 != 0) then x*2 end}.compact
end