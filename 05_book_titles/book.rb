class Book
  attr_accessor :title

  def title=(new_title)
  	small_caps = ["and", "of", "the", "in", "a", "an"]
  	array = new_title.split(" ")
  	array.map! {|word| 
  		if small_caps.include? word
  			word
  		else
  			word.capitalize
  		end
  	}
  	array[0].capitalize!
    @title = array.join(" ")
  end

end