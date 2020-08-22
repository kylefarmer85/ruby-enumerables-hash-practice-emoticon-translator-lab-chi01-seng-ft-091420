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

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  result = ''
  emoticons.each do |key, value|
    value.each do |lang, emot|
      if emoticon == emot
        result = key
    end
  end
end
if result == NIL
  return "Sorry, that emoticon was not found"
else
result
end

# def get_japanese_emoticon(path, emoticon)
#   emoticons = load_library(path)
#   result = ''
#   emoticons.each do |key, value|
#     if emoticon == value[0]
#       result = value[1]
#     end
#   end
#   result
# end

