# Write your code here.
def dictionary
  dictionary = 
  {"hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"}
end 

def word_substituter(tweet)
  dictionary
  long_tweet = tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else word
  end
end
  long_tweet.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.each do |words|
    puts word_substituter(words)
  end 
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140
     word_substituter(tweet)
  else tweet
  end 
end 


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + "..."
  else word_substituter(tweet)
  end 
end 
