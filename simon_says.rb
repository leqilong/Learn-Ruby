def echo(str)
  str
end

def shout (str)
  str.upcase
end

def repeat (str, num=2)
  ((str + ' ') * num).strip
end

def start_of_word (str, num)
  str[0...num]
end

def first_word (str)
  str1 = str.split(" ")
  str1[0]
end

def titleize (str)
  small_words = %w{a an the and or for nor of over}
  str.split(" ").each_with_index.map{|i, index| small_words.include?(i)&&index>0? i :i.capitalize}.join(" ")
end
