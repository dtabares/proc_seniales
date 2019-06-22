function y_values = modular(orig, fc_portadora)
    y_values = modulate(orig, fc_portadora,3 *fc_portadora , 'am');
end