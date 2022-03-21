# substring.rb

def find_substrings(text, dictionary)
  text_array = text.split(" ")
  hash_results = text_array.reduce(Hash.new(0)) do |result, word|
    if dictionary.include?(word.downcase)
      result[word.downcase] += 1
    end
    result
  end
  hash_results
end

def main
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","norma","own","part","partner","sit"]
  puts "Please enter a message"
  message = gets.chomp
  p find_substrings(message, dictionary)
end

main()