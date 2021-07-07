# Write your code here.
def dictionary
  dictionary_hash = {
    "hello" => "hi",
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
foo = string.split(" ")
i = 0
while i < foo.length
dictionary.each do |k,v|
      if k == foo[i]
foo[i] = v
end
end
  i += 1
end
foo.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
foo = tweet.split("")
if tweet.length > 140
  word_substituter(tweet)
else
  tweet
end
end

def shortened_tweet_truncator(tweet)
if word_substituter(tweet).length > 140
  "#{word_substituter(tweet)[0..136]}..."
elsif tweet.length < 140
  tweet
end
end
