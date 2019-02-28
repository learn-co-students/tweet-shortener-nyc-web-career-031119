require 'pry'

tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "For" => "4", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  dict = dictionary.keys
  words = tweet.split(" ")
  words.each_with_index do |word,index|
    if dict.include? word
      words[index] = dictionary[word]
    end
  end
words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if (tweet.chars.length) < 140
    tweet
  else
    word_substituter(tweet)
  end

end

def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
      tweet = tweet[1..140]
      tweet[-3..-1] = "..."
      tweet
    else
      word_substituter(tweet)
    end

end
