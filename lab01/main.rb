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
    if arg1.class==String
        arg1=arg1.chomp('\'').reverse.chomp('\'').reverse
        if arg1.to_r>0 
            arg1=arg1.to_r
        else  warn("\e[4m#{__FILE__}:#{__LINE__}\e[0m: \e[31mArgument funkcji 'sum()' nie jest ani liczbą, ani napisem\e[0m",uplevel:1)
        end
    else
        if arg1.class!=Numeric
            warn("\e[4m#{__FILE__}:#{__LINE__}\e[0m: \e[31mArgument funkcji 'sum()' nie jest ani liczbą, ani napisem\e[0m",uplevel:1)
        end
    end
    if arg2.class==String
        arg2=arg2.chomp('\'').reverse.chomp('\'').reverse
        if arg2.to_r>0
            arg2=arg2.to_r
        else warn("\e[4m#{__FILE__}:#{__LINE__}\e[0m: \e[31mArgument funkcji 'sum()' nie jest ani liczbą, ani napisem\e[0m",uplevel:1)
        end
    else 
        if arg2.class!=Numeric
            warn("\e[4m#{__FILE__}:#{__LINE__}\e[0m: \e[31mArgument funkcji 'sum()' nie jest ani liczbą, ani napisem\e[0m",uplevel:1)
        end
    end
    arg1 + arg2
end


if __FILE__ == $PROGRAM_NAME
  #  print "Podaj arg1 i arg2: \n"
    argument1=gets.chomp
    argument2=gets.chomp
    suma=sum(argument1,argument2)
#    puts suma.to_f
    if suma>suma.to_i
      printf "%f", suma.to_f
    else
      printf "%d", suma
    end
end