#renvoi le mots entré
def echo (word)
    "#{word}"
end

#renvoi le mot entré en majuscule
def shout (words)
    "#{words.upcase}"
end

#le mot input deux fois
def repeat (word, n=2)
    words = []
    n.times { words.push word }
    words.join(' ')
end

##secmenter le input
def start_of_word (word, n)
    n -= 1
    "#{word[0..n]}"
end

#le premier mot seulement
def first_word (sentence)
    sentence.split.first
end

#met en majuscule le premier mot des elements du tableau
def titleize (string)
    title = []
    little_words = ["the", "and", "over"]
    words = string.split
    title.push words[0].capitalize
    words[1..-1].each do |word|
        if little_words.include? word
            title.push word
        else
            title.push word.capitalize
        end
    end

    title.join " "
end