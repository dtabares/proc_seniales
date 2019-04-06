function line = create_line (m,b, from, to)
    
    line = from:1:to
    
    for i = 1:length(line)
        line(i)=line(i)*m + b;
    end
end