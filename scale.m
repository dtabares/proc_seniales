function scaled = scale(orig, factor)

    for i = 1:(length(orig))
        scaled(i)=orig(i) * factor;
    end
    
end