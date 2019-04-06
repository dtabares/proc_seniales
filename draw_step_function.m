function f = draw_step_function(step_content)
    i = 1;

    while (i < length(step_content))
        if(step_content(i) == 1)
            first_one_pos = i;
            break;
        end
        i = i +1;
    end
    
    left_half = step_content(1:first_one_pos-1);
    right_half = step_content(first_one_pos:length(step_content));
    x_left = linspace(-2.5, 0, length(left_half));
    x_right = linspace(0, 2.5, length(right_half));
    
    plot(x_left,left_half, x_right,right_half);
end
