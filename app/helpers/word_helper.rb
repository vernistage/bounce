def word_parser(string)
  word_objects = []
  word_array = string.split(', ')
  word_array.each do |word|
    word_object = BlockedWord.new(word.strip)
    word_object.user_id = current_user_id
    word_object.save
    word_objects << word_object
  end
  word_objects
end
