# Your job is to write a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Examples:

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100 

def increment_string(input) 
    numbers = [*"0".."9"]  
    in_string = [] 
    string = [] 
    zeros = []
     
    input.split(//).each { |v| 
    if numbers.include?(v) 
        in_string.push(v)  
    else  
        string.push(v) 
    end 
    }  
    
    in_string.each_with_index { |v,i|    
        break if v != "0" or i == 1
          zeros.push(v)     
    } 
    
    # if string.last == "0" then dont push to zeros
    
    p string.join + zeros.join + (in_string.join.to_i + 1).to_s

    
end

increment_string("foo00")  


