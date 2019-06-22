function y_values = demodular(modulada,fc_portadora)
    y_values = demod(modulada, fc_portadora,3 *fc_portadora, 'am');
end