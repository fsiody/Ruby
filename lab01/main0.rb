require 'scanf'

# Calculates 'arg1' + 'arg2'.
#
# @param arg1 [Integer, Float, String, Rational, Complex]
#        the first component of the sum
# @param arg2 [Integer, Float, String, Rational, Complex]
#        the second component of the sum
# @return [Integer, Float, Rational, Complex]
#        sum of two numbers
def sum(arg1, arg2)
    if(arg1.class == String)  
    arg1=arg1.chomp('\'').reverse.chomp('\'').reverse
    end
    arg1=arg1.to_r
    if(arg2.class==String)
    arg2=arg2.chomp('\'').reverse.chomp('\'').reverse
    end
    arg2=arg2.to_r
    arg1 + arg2
end


if __FILE__ == $PROGRAM_NAME
  #  print "Podaj arg1 i arg2: \n"
    argument1=gets.chomp
    argument2=gets.chomp
    suma=sum(argument1,argument2)
 #  puts suma.to_f
    if suma>suma.to_i
      printf "%f", suma.to_f
    else
      printf "%d", suma
    end
end