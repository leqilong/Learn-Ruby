def translate (str)
  alpha = ("a" .. "z").to_a
  vowel = ["a", "e", "i", "o", "u"]
  consonants = alpha - vowel
  result = ""

  words = str.split(" ")

  words.each do |word|
    if vowel.include?(word[0])
      result << "#{word}"+ "ay"
    elsif word[0]=="q" && word[1] == "u"
      result << "#{word[2..-1]}" + "#{word[0..1]}" + "ay"
    elsif word[0]=="s" && word[1] == "c" && word[2] == "h"
      result << "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
    elsif consonants.include?(word[0]) && word[1..2] == "qu"
      result << "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      result << "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      result << "#{word[2..-1]}"+ "#{word[0..1]}" + "ay"
    elsif consonants.include?(word[0])
      result << "#{word[1..-1]}" + "#{word[0]}" + "ay"
    end
    result << " "
  end
  return result.strip
end
