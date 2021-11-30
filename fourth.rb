abc = "abcdefghijklmnopqrstuvwxyz"
vowels = "aeiouy"
my_hash = Hash.new

vowels.each_char do |vowel|
  my_hash[vowels[vowel]] = (abc.index(vowels[vowel]) + 1)
end

p my_hash