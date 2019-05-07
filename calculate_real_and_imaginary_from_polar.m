function [p_real, p_im] = calculate_real_and_imaginary_from_polar(r, theta)
    p_real = abs(r) * cos(theta);
    p_im = abs(r) * sin(theta);
end