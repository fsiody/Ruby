##
# parsing information fron input till we gor CTRL + D
# example result:
# "dlugosc  |   ilosc"
#     2     |     3
#     4     |     5
#     5     |     1
#     6     |     2



require 'rdoc'

##
# counts the number of words of different lengths

def foo(x)
    
    line = x.split
    words = Hash.new(0)
    for i in 0..line.length-1 do
        words[line[i].chomp("").length]+=1
    end  
    words=words.sort_by {|key, _val| key}.to_h
    return words
end



if __FILE__ == $PROGRAM_NAME
    if ARGV[0] == '-h'
        manual = DATA.read
        ansi = RDoc::Markup::ToAnsi.new
        puts ansi.convert(manual)        
    else
        x=""


        while ($_ = gets) do
            break if ($_.chomp("")=="^Z")
            x.concat($_).concat(" ")
        end
        w=foo(x)
        p 'dlugosc  |   ilosc'
        w.each do |k, v|
            printf "    %d     |     %d", k, v
            puts
        end 
    end
end



__END__


== Help

ruby zad1.1.rb  + Enter
Write some words 
Separate them with " " or Enter 
When you finished press Ctrl+Z  

== Examples

ruby zad1.1.rb
Lena bardzo lubi kotow 
Ella bardzo lubi psow
mi mi mi
^Z
=> 

"dlugosc  |   ilosc"
    2     |     3
    4     |     5
    5     |     1
    6     |     2

    
Author :: Lena Onertynska ( mailto : h.obertynska@gmail.com)