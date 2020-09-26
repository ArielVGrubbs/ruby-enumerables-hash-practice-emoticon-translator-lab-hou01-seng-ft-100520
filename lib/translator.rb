# require modules here

require "yaml"

def load_library (file_path)
  # code goes here
  emote_library = YAML.load_file(file_path)
  emote_lib = {}
  emote_library.each do |key, value|
    emote_lib[key] = {}
    emote_lib[key][:english] = value[0]
    emote_lib[key][:japanese] = value[1]
  end
  emote_lib
end

def get_japanese_emoticon (file_path, emote)
  # code goes here
  load_library (file_path)
  #emote_lib.include? emote do |key, value|
    #japanese_emote = emote_lib[key][:japanese]
  #end
end

def get_english_meaning (file_path, emote)
  # code goes here
  load_library (file_path)
  emote_lib.include? emote do |key, value|
    english_emote = emote_lib[key][:english]
  end
end