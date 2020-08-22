require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  result = {}
  emoticons.each do |key, value|
      result[key.to_s] =
      {
      :english => value[0],
      :japanese => value[1]
      }
  end
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end