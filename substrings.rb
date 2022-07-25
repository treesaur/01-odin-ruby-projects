# def substrings(str, dict)
#     count = Hash.new(0)
#     words = str.downcase.split(" ")

#     words.each do |word|
#         len = word.length

#         (0..len-1).each do |n|
#             substr_one = word[0..n] unless n == len - 1 || n == 0
#             substr_two = word[n..-1] unless n == len - 1
#             substr_single = word[n..n]
            
#             count[substr_one] += 1 if dict.include?(substr_one) 
#             count[substr_two] += 1 if dict.include?(substr_two)
#             count[substr_single] += 1 if dict.include?(substr_single)
#         end
#     end

#     count
# end


# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# p substrings("below", dictionary)
# p substrings("Howdy partner, sit down! How's it going?", dictionary)

def substrings(text, dictionary)
  result = Hash.new(0)
  lowered_text = text.downcase

  dictionary.each do |word|
    puts "#{lowered_text.scan(word)}"
    matches = lowered_text.scan(word).length
    result[word] = matches unless matches == 0
  end

  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)