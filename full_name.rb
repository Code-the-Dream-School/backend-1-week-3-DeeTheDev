# (1) Write a program which asks for a person's first name, then middle, then last.
#  It should store each of these parts in an array. 
#  Finally, it should greet the person using their full name. 

def ask_name
    full_name_arr = Array.new #store full name

    puts "Hello there, nice to meet you!"
    print "What is your first name?"
    answer = gets.chomp.capitalize()
    full_name_arr.push(answer)
    print "What is your middle name?"
    answer = gets.chomp.capitalize()
    full_name_arr.push(answer)
    print "What is your last name?"
    answer = gets.chomp.capitalize()
    full_name_arr.push(answer)
    
    # Removes empty values in array
    final_name = full_name_arr.reject { |fn| fn.empty? }

    # Checks length of final array (with removed empty values)
    # Based on final length
    # If empty => Puts message and runs ask_name function again
    pre_string = "Your full name is "
    if final_name.length == 3
        output = "#{final_name[0]} #{final_name[1]} #{final_name[2]}"
        puts pre_string + output + "."
    elsif final_name.length == 2
        output = "#{final_name[0]} #{final_name[1]}"
        puts pre_string + output + "."
    elsif final_name.length == 1
        output = "#{final_name[0]}"
        puts pre_string + output + "."
    else
        puts "\n*" + pre_string + "empty." + "\n*Please try again..."
        return ask_name
    end
end
ask_name