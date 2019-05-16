

def input()
    for arg in ARGV
        parse(arg)
    end
end


def show(name, cl)
    #puts name
    if(name=="all")

    else
        name1=name + "1"
        res = name.concat(" has ").concat(cl[name1].to_s).concat(" on 1 acc ")
        
        puts name
        puts name1
        puts res
    end

end

def parse(arg)
    clients=Hash.new(0)

    if arg.include?('--stan')
        x=arg.split(":")
        if x[1]==""
            show("all",clients)
        else
            i=1
            while i<x.size do 
                show(x[i],clients)
                i+=1
            end
        end
    else

        data=arg.split(':')
        name=data[0].concat(data[1])
        money=data[2].to_i
        #puts data[1]
        if (clients[name]+money>=0)
                clients[name]+=(money)
        else 
            puts "brak srodkow na subkoncie".concat() 
        end
        
    end


    clients.each do |cl, m|
        puts cl
        puts m
    end
end



if __FILE__ == $PROGRAM_NAME
   # puts ARGV
    input()
end

