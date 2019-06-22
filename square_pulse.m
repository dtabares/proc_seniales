function [x_values, y_values] = square_pulse(sampling_frecuency,duration, amplitude)
    fs = sampling_frecuency;
    d = duration;
    %x_values = -d/2:d/fs:d/2;
    x_values = 1:d/fs:d+1;
    y_values = zeros(1,length(x_values));
    for i = 1:length(x_values)
        x_value = x_values(i);
        %if (x_value > (-1 *amplitude/2)  && x_value < amplitude/2)
        if (x_value > 1  && x_value < amplitude + 1)
            y_values(i) = 1;
        end
    end
end