def dictionary
  dictionary = {:hello => "hi",
  :to => "2",
  :two => "2",
  :too => "2",
  :for => "4",
  :four => "4",
  :you => "u",
  :at => "@",
  :and => "&"
  }
end

def word_substituter(string)
  array = string.split(" ")
  array.map do |word|
    dictionary.map do |key, value|
      if word == key
        word = value
      end
    end
    end
    array.join(" ")
end
