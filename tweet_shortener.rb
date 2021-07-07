require "pry"

def dictionary
  {
    "hello" => "hi",
    "Hello" => "hi",
    "to" => "2",
    "To" => "2",
    "two" => "2",
    "Two" => "2",
    "too" => "2",
    "Too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "Four" => "4",
    "be" => "b",
    "Be" => "b",
    "you" => "u",
    "You" => "u",
    "at" => "@",
    "At" => "@",
    "and" => "&",
    "And" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split
  keys_array = dictionary.keys
  counter = 0

  while counter < keys_array.length
    tweet_array.each do |word|
      if word == keys_array[counter]
        tweet_array[tweet_array.index(word)] = dictionary[keys_array[counter]]
      end
    end
    counter += 1
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.collect do |tweet_string|
    puts word_substituter(tweet_string)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    short_tweet = selective_tweet_shortener(tweet)[0..139]
    short_tweet[-3..-1] = "..."
    short_tweet
  else
    selective_tweet_shortener(tweet)
  end
end