def substrings(word, dictionary)
  # Convert the word to lowercase for case insensitivity
  word.downcase!

  # Initialize an empty hash to store the substring counts
  substring_counts = Hash.new(0)

  # Iterate over each substring in the dictionary
  dictionary.each do |substring|
    # Count the occurrences of the substring in the word
    count = word.scan(substring.downcase).length
    puts "#{substring}: #{count}" # Adding puts to check the count of each substring

    # Add the substring and its count to the hash
    substring_counts[substring] += count if count > 0
  end

  # Return the hash of substring counts
  substring_counts
end

# Add this code at the end of main.rb
dictionary = ['below', 'down', 'go', 'going', 'horn', 'how', 'howdy', 'it', 'i', 'low', 'own', 'part', 'partner', 'sit']
word = "Howdy partner, sit down! How's it going?"
result = substrings(word, dictionary)
puts "Substring Counts:"
result.each do |substring, count|
  puts "#{substring}: #{count}"
end
