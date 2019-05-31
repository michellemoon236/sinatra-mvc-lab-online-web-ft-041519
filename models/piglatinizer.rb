class PigLatinizer 
  
  def initialize
  end
  
  def piglatinize(string)
    string.split(" ").map do |word|
      #binding.pry
      piglatinize_word(word)
    end.join(" ")
  end
  
  def piglatinize_word(word)
    first_letter = word[0]
    second_letter = word[1] if word[1]
    third_letter = word[2] if word[2]
    
    #inding.pry
    if first_letter.downcase.scan(/[aeiou]/).first
      "#{word}way"
      #starts with consonants below
    elsif second_letter.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).first
      if third_letter.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).first #first, second, third letters are consonants
        word[3..-1]+first_letter+second_letter+third_letter+"ay"        
      else #first and second letter consonants
        word[2..-1]+first_letter+second_letter+"ay"
      end
    else #first letter consonant
      word[1..-1]+first_letter+"ay"    
    end
  end
  
end
