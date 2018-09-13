require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons
end

load_library("./lib/emoticons.yml")

def get_japanese_emoticon(western)
  # code goes here
end

def get_english_meaning
  # code goes here
end