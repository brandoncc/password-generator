number_of_words = Integer(ARGV[0]) rescue 4

words = File.open('google-10000-english-usa.txt', 'r') do |f|
  f.readlines.map(&:strip).select { |w| w.length > 5 }
end

password = ""

number_of_words.times do
  new_word = words.sample
  new_word.capitalize! if rand(2) == 1
  password << new_word
end

password << rand(1000).to_s

puts password
