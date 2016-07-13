#write your code here
def translate (s)
	vowels_array = %w{a e i o u}
	consonants_array =('a'..'z').to_a - vowels_array
	string_array= s.split
	string_array.map! do |word|
		if vowels_array.include?(word[0])
			word + 'ay'
		elsif word[0..1]=='qu'
			word = word[2..-1]+ "quay"
		elsif consonants_array.include?(word[0]) && word[1..2]=="qu"
			word=word[3..-1] + word[0..2] + 'ay'
		elsif consonants_array.include?(word[0]) && consonants_array.include?(word[1]) && consonants_array.include?(word[2])
			word =word[3..-1] + word[0..2] +'ay'
		elsif consonants_array.include?(word[0]) && consonants_array.include?(word[1])
			word=word[2..-1]+ word[0..1] + 'ay'
		elsif consonants_array.include?(word[0])
			word=word[1..-1] + word[0] + 'ay'

		end
	end
	return string_array.join(" ")
end