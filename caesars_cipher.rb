#Goal: To create a method that takes a string and a shift value and shifts each individual letter with the value of the shift value.
#Example: "A B C" with a shift of 2 is "C D E"

def string_to_number(string,shift)
  new_string = string.bytes.each.map do |num|
    if num >= 97 && num <= 122
      num = num + shift
        if num > 122
          num = num - 26
          num.chr
        else
          num.chr
        end

    elsif num <= 90 && num >= 65
        num = num + shift
          
        if num > 90 && num < 97
            num = num - 26
            num.chr
        else 
          num.chr
        end
    
    else num = num.chr
    end
  end
  new_string.join("")
end
 