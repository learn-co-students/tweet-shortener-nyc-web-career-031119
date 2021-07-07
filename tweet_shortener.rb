# Write your code here.
require 'pry'

def dictionary
  dictionary ={
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    'four' => '4',
    'For' => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array_tweet = tweet.split
  i = 0
  array_tweet.each do |word|
    
    if dictionary.keys.include?(word)
      
      array_tweet[i] = dictionary[word]
    end
    i+=1
  end
  return array_tweet.join(" ")
end

def bulk_tweet_shortener(bulk_tweets)
  bulk_tweets.each do |tweet|
    array_tweet = tweet.split
  i = 0
  array_tweet.each do |word|
    
    if dictionary.keys.include?(word)
      
      array_tweet[i] = dictionary[word]
    end
    i+=1
  end
  puts array_tweet.join(" ")
  end
end

def selective_tweet_shortener(tweet)
  if tweet[140] != NIL
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
    if tweet.length > 140
      return tweet[0..136] + "..."
    else
      return tweet
    end
  
end