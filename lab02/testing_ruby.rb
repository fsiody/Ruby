
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