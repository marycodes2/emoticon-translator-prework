require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons_dict = {}
  emoticons_dict["get_meaning"] = {}
  emoticons_dict["get_emoticon"] = {}
  emoticons.each do |meaning, emoticon_array|
    emoticons_dict["get_meaning"][emoticon_array[1]] = meaning
    emoticons_dict["get_emoticon"][emoticon_array[0]] = emoticon_array[1]
  end
  emoticons_dict
end

def get_japanese_emoticon(file_path, western_emoticon)
  emoticons = load_library(file_path)
  emoticons.each do |dictionary, emoticon_hash|
    if dictionary == "get_emoticon"
      emoticon_hash.each do |english_emoticon, japanese_emoticon|
        puts western_emoticon
        puts english_emoticon
        if western_emoticon == english_emoticon
          return japanese_emoticon
        end
      end
    end
  end 
end 

get_japanese_emoticon("./lib/emoticons.yml", "(^0_0^)")

def get_english_meaning(emoticon)
  emoticons = load_library("./lib/emoticons.yml")
  emoticons.each do |meaning, emoticon_list|
    if emoticon_list[1] == emoticon
      return meaning
    end
  end
end
