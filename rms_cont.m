function result = rms_cont(signal,fs,T)
    result = 0;
    delta = 1/fs;
    %calculo la integral como sumas de Riemann
    for value = signal
        base = delta;
        altura = value^2;
        result = result + (base * altura);
    end
    result = result * 1/T;
    result = result^(1/2);
end