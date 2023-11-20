def substrings(string, dictionary)
  string = string.downcase
  hash = {}

  dictionary.each do |word|
    if string.include?(word.downcase)
      count = string.scan(word.downcase).length
      hash[word] = count if count >= 1
    end
  end
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)