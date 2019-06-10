function y_values = generate_complex_exp_function(amplitude,theta, t_values)

    y_values = amplitude * exp(i*theta*t_values);

end