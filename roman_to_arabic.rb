# roman_to_arabic.rb
#
# Converts roman numerals into their corresponding arabic numeral value

roman_num = ""
while roman_num != 'END'
  print "Enter a roman numeral ('end' to quit): "
  roman_num = gets.chomp.upcase

  arabic_num = 0
  last_char_value = 0
  roman_char_array = [];
  unless roman_num == 'END'
    roman_char_array = roman_num.split("")
  end

  roman_char_array.reverse.each do |n|
    case n
    when 'M'
      arabic_num += 1000
      last_char_value = 1000
    when 'D'
      if last_char_value > 500
        arabic_num -= 500
      else
        arabic_num += 500
      end
      last_char_value = 500
    when 'C'
      if last_char_value > 100
        arabic_num -= 100
      else
        arabic_num += 100
      end
      last_char_value = 100
    when 'L'
      if last_char_value > 50
        arabic_num -= 50
      else
        arabic_num += 50
      end
      last_char_value = 50
    when 'X'
      if last_char_value > 10
        arabic_num -= 10
      else
        arabic_num += 10
      end
      last_char_value = 10
    when 'V'
      if last_char_value > 5
        arabic_num -= 5
      else
        arabic_num += 5
      end
      last_char_value = 5
    when 'I'
      if last_char_value > 1
        arabic_num -= 1
      else
        arabic_num += 1
      end
      last_char_value = 1
    end
  end

  unless roman_num == 'END'
    puts arabic_num
  end
  puts
end
