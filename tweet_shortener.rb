
require 'pry'

# Write your code here.

def dictionary
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter (tweet)
hash = dictionary
tweet_array = tweet.split

tweet_array.each do |word|
  hash.each do |orginal, subsitute|
    if word.downcase == orginal
      word.gsub!(word, subsitute)
    end
  end
end
tweet_array.join(" ") 
end

def bulk_tweet_shortener (tweet_array)
  tweet_array.each do |x|
    puts word_substituter(x)
  end
end


def selective_tweet_shortener (tweet)
  hash = dictionary
  tweet_array = tweet.split
  
  if tweet.length > 140
    tweet_array.each do |word|
      hash.each do |orginal, subsitute|
        if word == orginal
          word.gsub!(word, subsitute)
        end
      end 
    end
  else 
    tweet
  end
tweet_array.join(" ") 
end


def shortened_tweet_truncator (tweet)
  hash = dictionary
  tweet_array = tweet.split
  
  if tweet.length > 140
    tweet_array.each do |word|
      hash.each do |orginal, subsitute|
        if word == orginal
          word.gsub!(word, subsitute)
        end
      end
    end
    maybe_still_long_tweet = tweet_array.join(" ")
    if maybe_still_long_tweet.length > 140
      shorter = maybe_still_long_tweet[0..136]
      shorter.insert(137, "...")
    end
  else
    tweet
  end
end