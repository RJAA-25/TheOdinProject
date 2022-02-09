def substrings(sample, dictionary)
    dictionary.reduce(Hash.new(0)) do |hash,word|
        hash[word] += sample.downcase.scan(word).length if sample.downcase.include?(word)
        hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)