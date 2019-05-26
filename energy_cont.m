function e = energy_cont(signal, fs)
    e = 0;
    delta = 1/fs;
    for value = signal
        base = delta;
        altura = value^2;
        e = e + (base * altura);
    end
end