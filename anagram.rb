# simple anagram check (returns true or false)

def anagrams(string1, string2)
  string1.chars.sort.join == string2.chars.sort.join  
end

p anagrams("regal", "lager")
p anagrams("taming", "mating")
p anagrams("hello", "dolly")
p anagrams("Marat", "marat")

