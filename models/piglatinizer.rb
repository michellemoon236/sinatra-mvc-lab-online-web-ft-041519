class PigLatinizer 
  
  def initialize

  end
  
  def piglatinize(string)
    PigLatinizer.new.piglatinize(string).split(" ").map do |word|
      #binding.pry
      piglatinize_word(word)
    end.join(" ")
  end
  
  def piglatinize_word(word)
    first_letter = word[0].downcase
    second_letter = word[1].downcase if word[1]
    third_letter = word[2].downcase if word[2]
    
    #inding.pry
    if first_letter.scan(/[aeiou]/).first
      "#{word}way"
      #starts with consonants below
    elsif second_letter.scan(/[bcdfghjklmnpqrstvwxyz]/).first
      if third_letter.scan(/[bcdfghjklmnpqrstvwxyz]/).first #first, second, third letters are consonants
        word[3..-1]+first_letter+second_letter+third_letter+"ay"        
      else #first and second letter consonants
        word[2..-1]+first_letter+second_letter+"ay"
      end
    else #first letter consonant
      word[1..-1]+first_letter+"ay"    
    end
  end
  
end
