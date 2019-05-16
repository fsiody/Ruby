

def input()
    for arg in ARGV
        parse(arg)
    end
end

def parse(arg)
    clients=Hash.new(0)



    if arg.include?('--stan')
        x=arg.split(":")
        puts x[1]
    else

        data=arg.split(':')
        name=data[0]
        konto=data[1]
        money=data[2]
        if ((clients[name].size < konto.to_i) and (money>=0))
            clients[name].append(money)
        else 
            puts "brak srodkow na subkoncie".concat() 
        end
        
    end


    clients.each do |cl, m|
        for i in 0..m.size do
            puts cl.append(m[i])
        end
    end
end



if __FILE__ == $PROGRAM_NAME

    
    
    
    puts ARGV
    input()

    


end

