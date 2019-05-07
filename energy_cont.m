function e = energy_cont(signal, fs)
%     f = @(t) abs(signal(t).^2);
%     e = integral(f,-Inf,Inf);
    d = calculate_duration(length(signal),fs);
    e = integral(signal,0,d);
end