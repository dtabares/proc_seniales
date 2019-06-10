function y_values = senoid_generator(sampling_frecuency,duration, phase, frecuency)
fs = sampling_frecuency;
d = duration;
x_values = 0:d/fs:d;
y_values = sin(frecuency * x_values + phase);
end