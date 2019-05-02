function f = draw_lines_tp1_6()
    x = -5:1:5;

    line_1 = create_line(2,1,-5,5);
    line_2 = create_line(-1,0,-5,5);
    [intersection_x intersection_y] = polyxpoly(x,line_1,x,line_2);
    plot(x,line_1,x,line_2,intersection_x, intersection_y,'o','LineWidth',2);
    legend({'y = 2x +1','y = -x'},'Location','southwest')
end