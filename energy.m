function e = energy(signal,fs,from,to)
    if (nargin > 2)
        signal = signal(from:to);
    end   
    e = sum(abs(signal.^2))/fs;
end