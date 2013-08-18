# arabic_to_roman.rb
#
# Converts arabic numbers into their corresponding roman numeral value
# Arabic number must be 3999 or less

arabic_num = 0
while arabic_num != 'END'
  print "Enter an arabic whole number ('end' to quit): "
  input = gets.chomp.upcase

  unless input == 'END'
    arabic_num = input.to_i
    roman_numeral = []
    until arabic_num == 0

      if arabic_num == 4
        arabic_num -= 4
        roman_numeral << 'IV'
      elsif arabic_num  == 9
        arabic_num -= 9
        roman_numeral << 'IX'
      elsif arabic_num / 10 == 4
        arabic_num -= 40
        roman_numeral << 'XL'
      elsif arabic_num / 10 == 9
        arabic_num -= 90
        roman_numeral << 'XC'
      elsif arabic_num / 100 == 4
        arabic_num -= 400
        roman_numeral << 'CD'
      elsif arabic_num / 100 == 9
        arabic_num -= 900
        roman_numeral << 'CM'


      elsif arabic_num - 1000 >= 0
        arabic_num -= 1000
        roman_numeral << 'M'
      elsif arabic_num - 500 >= 0
        arabic_num -= 500
        roman_numeral << 'D'
      elsif arabic_num - 100 >= 0
        arabic_num -= 100
        roman_numeral << 'C'
      elsif arabic_num - 50 >= 0
        arabic_num -= 50
        roman_numeral << 'L'
      elsif arabic_num - 10 >= 0
        arabic_num -= 10
        roman_numeral << 'X'
      elsif arabic_num - 5 >= 0
        arabic_num -= 5
        roman_numeral << 'V'
      elsif arabic_num - 1 >= 0
        arabic_num -= 1
        roman_numeral << 'I'
      end
    end
  end

  unless input == 'END'
    puts roman_numeral.join
  end
  puts
end
