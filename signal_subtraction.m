function result = signal_subtraction(signal_1, signal_2)
    signal_1_length = length(signal_1);
    signal_2_length = length(signal_2);
    
    if signal_1_length == signal_2_length
        result = signal_1 - signal_2;
    elseif signal_1_length > signal_2_length
        signal_2 = [signal_2, zeros(1, signal_1_length - signal_2_length)];
        result = signal_1 - signal_2;
    else
        signal_1 = [signal_1, zeros(1, signal_2_length - signal_1_length)];
        result = signal_1 - signal_2;
    end
end