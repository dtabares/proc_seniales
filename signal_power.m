function power = signal_power(signal, fs, from,tau)
to = from + tau;
signal = signal(from:to);
N = length(signal);
power = 1/(2 * N + 1) * sum(abs(signal.^2));
end