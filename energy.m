function e = energy(signal,from,to)
    if (nargin > 2)
        signal = signal(from:to);
    end   
    e = sum(signal.^2);
end