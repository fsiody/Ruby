def foo(x)
    ##
    # counts the number of words of different lengths
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
        w = foo <<-LINE
        1 22 4444 22 333 55555 1 1 1
        1 1 
        22
        22
        4444
        LINE
        
        p 'dlugosc  |   ilosc'
        w.each do |k, v|
            printf "    %d     |     %d", k, v
            puts
        end 
    end
end
