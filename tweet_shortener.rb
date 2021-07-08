# Write your code here.
def dictionary
  word_hash = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :four => "4",
    :for => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
end

def word_substituter(tweet)
  word_hash = dictionary
  test_words = word_hash.keys
  tweet_arr = tweet.split(" ")
  tweet_arr.each do |tweet_word|
    i = 0
    while i < test_words.length
      if tweet_word.upcase == test_words[i].to_s.upcase
        tweet_word.replace(word_hash[test_words[i]])
      end
      i += 1
    end
  end
  tweet_arr.join(" ")
end

def bulk_tweet_shortener(tweets_arr)
  tweets_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    new_tweet = word_substituter(tweet)
  else
    new_tweet = tweet
  end
  if new_tweet.size > 140
    new_tweet = "#{new_tweet[0..136]}..."
  end
  new_tweet
end
