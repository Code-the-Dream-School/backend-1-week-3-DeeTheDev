# (2) It should prompt the user for words and add each to an array.
# The user should be able to add as many words as they like, until they just 
# hit enter to return a blank word. 
# Then sort the array using the sort method and print it out.

def sorted_words 
    print "Enter one or more words (sparated by space) then hit [ENTER] when done."
    answer = gets.split(" ").sort
    valid_words = /[a-zA-Z]/
    words_array = answer.keep_if { |val| val.match?(valid_words) }
    return words_array.each { |f| puts "-" + f }
end
sorted_words