function c = calculate_complex_num_cuadrant(complex_number)
    a = rad2deg(angle(complex_number));
    if (a >= 0 && a < 90)
        c = 1;
    else
        if (a >= 90 && a < 180)
            c = 2;
        else
            if (a < 0 && a > -90)
                c = 4;
            else
                c = 3;
            end
        end
    end
end