def dictionary
  dictionary = {"hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(string)
  array = string.split(" ")
  array.map do |word|
    dictionary.map do |key, value|
      if word == key
        word.replace(value)
      end
    end
    end
    array.join(" ")
end

def bulk_tweet_shortener(array)
  array.map { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  shortened = word_substituter(tweet)
  if shortened.length > 140
    shortened[0..136] << "..."
  else
    shortened
  end
end
