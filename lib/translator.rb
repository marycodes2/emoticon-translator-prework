require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons
end

load_library("./lib/emoticons.yml")

def get_japanese_emoticon(western)
  
  
end

def get_english_meaning(emoticon)
  
end