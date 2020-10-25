# (4) It will ask the user for a starting year and an ending year, 
# and it will then print out all the leap years between them, including the starting 
# or ending year if those are leap years. The rules for leap years are: A leap year is divisible by 4, 
# except for years that are divisible by 100 -- those aren't leap years 
# -- except for years that are divisible by 400, which ARE leap years.

def leap_years
    # Ask for start and end year
    print "Hello! Pick a start year: " 
    start_year = gets.chomp.to_i
    print "Pick a end year: "
    end_year = gets.chomp.to_i
    # new array
    leap_years_arr = Array.new
    # Select method creates Array and creates leap_year rules
    # .reject removes leap_years divisible by 100
    leap_years_arr = ((start_year..end_year).select { |year| year % 4 == 0 || year % 400 == 0}.reject { |year| year %100 ==0})
    for i in leap_years_arr do
        puts"Leap year: #{i}"
    end
end
leap_years