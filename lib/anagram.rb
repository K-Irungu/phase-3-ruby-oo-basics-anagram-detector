# Your code goes here!
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        anagrams = array.filter { |each| each.chars.sort == word.chars.sort }
        anagrams[0] ? anagrams : []
    end

end

a1 = Anagram.new("listen")
pp a1.match(["enlists", "google", "inlets", "banana"])
