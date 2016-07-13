#write your code here
def echo (s)
	return s
end
def shout(s)
	return s.upcase
end
def repeat(s,r=2)
	return [s]*r*' '
end
def start_of_word(s,n=1)
	x = s[0..(n-1)]
	return x
end
def first_word(s)
	return s.split.first
end
def titleize(str)
    str.capitalize!
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") 
  return phrase 
end