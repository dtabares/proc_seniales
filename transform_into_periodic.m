function periodic_values = transform_into_periodic(signal, repetitions)
    periodic_values = repmat(signal, 1, repetitions);
end