function f = tp1_7(amplitude, frec_hz, init_phase, fs)

% 1 segundo de duraction (pedido en el enunciado)
% duration = number_of_samples/fs;
% 1 * fs = number_of_samples;
% fs = number_of_samples;

x = 0:(1/fs):1;

y = amplitude * cos((frec_hz * x) + init_phase);
func_text = (['y = ', num2str(amplitude), ' * cos( ' , num2str(frec_hz), ' * x + ', num2str(init_phase),' )' ]);
plot(x,y), grid on
legend({func_text},'Location','southwest')


end