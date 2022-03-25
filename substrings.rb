dictionary =["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words,dictionary)
  output = Hash.new(0)
  word_list = words.split(" ")
  
word_list.each do |word|
  dictionary.each do |dict_word| 
    output[dict_word] += 1 if word.include?(dict_word)
  end
end
  output
end
p substrings("Howdy partner, sit down! How's it going?",dictionary)