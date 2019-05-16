# encoding: UTF-8

def foo(x)
    line = x.split
    for i in 0..line.length-1 do 
        puts(line[i])
    end 
end


path="E:\\agh\\4s\\ruby\\lab2\\zad3.rb"
x=""
File.open(path).each do |text|
    x.concat(text)
end
foo(x)
