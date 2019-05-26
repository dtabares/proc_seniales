function e = energy_cont(signal, fs)
    d = calculate_duration(fs,length(signal));
    e = 0;
    delta = 1/fs;
    for value = signal
        base = delta;
        altura = value^2;
        e = e + (base * altura);
    end
end