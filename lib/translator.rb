require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons_dict = {}
  emoticons_dict[get_meaning] = {}
  emoticons_dict[get_emoticon]
end

puts load_library("./lib/emoticons.yml")

def get_japanese_emoticon(western)
  emoticons = load_library("./lib/emoticons.yml")
  emoticons.each do |meaning, emoticon_list|
    if emoticon_list[0] == western
      emoticon_list[1]
    end
  end
end

def get_english_meaning(emoticon)
  emoticons = load_library("./lib/emoticons.yml")
  emoticons.each do |meaning, emoticon_list|
    if emoticon_list[1] == emoticon
      return meaning
    end
  end
end
