def wyraz(line)
    w=line.delete "0-9"
    return w
end


def liczba(line)
    l=line.delete "^0-9" 
    return l
end


if __FILE__ == $PROGRAM_NAME 
    
    line="LenaCatsStars"

    while ($_ = gets) do
        break if ($_.chomp("")=="^Z")
        line=$_



        w=wyraz(line).chomp("")
        if(w.length>0) 
            printf "  Wyraz: ".concat(w).concat("\n")
        end
    
        l=liczba(line)
        if(l.length>0) 
            printf "  Liczba: ".concat(l).concat("\n")
        end
        puts

    end


    


end
