function [modulo, fase] = calculate_complex_num_module_and_phase(complex_number)
    cuadrant = calculate_complex_num_cuadrant(complex_number);
    modulo = abs(complex_number);
    fase = rad2deg(angle(complex_number));
    if (cuadrant > 2 )
        fase = fase + 360;
    end
end