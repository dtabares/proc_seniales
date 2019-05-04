function f = tp1_13()
    x_factor = pi/4;
    X = -5*pi:x_factor:5*pi;
    orig = [];
    
    for t = X
        y = myfunction(t);
        orig = [orig , y];
    end
    
    mirrored = mirror(orig);
    desplazada_der = desplazar(orig, ((2*pi)/x_factor));
    desplazada_izq = desplazar(orig, ((-2*pi)/x_factor));
    deplazada_y_espejada = desplazar(mirrored, ((-pi)/x_factor));
    agrandada = scale(orig, 4);
    reducida = scale(orig, 1/4);
    escalada_factor_negativo = scale(orig, -1/2);
    
    figure
    
    subplot(4,2,1);
    plot(X,orig)
    title('Original')
    legend({'s(t)'},'Location','southwest')
    
    subplot(4,2,2);
    plot(X,mirrored)
    title('Espejada')
    legend({'s(-t)'},'Location','southwest')
    
    subplot(4,2,3);
    plot(X,desplazada_der)
    title('Desplazada a derecha')
    legend({'s(t - 2pi)'},'Location','southwest')
    
    subplot(4,2,4);
    plot(X,desplazada_izq)
    title('Desplazada a izquierda')
    legend({'s(t + 2pi)'},'Location','southwest')

    subplot(4,2,5);
    plot(X,deplazada_y_espejada)
    title('Desplazada y Espejada')
    legend({'s(-t + pi)'},'Location','southwest')
    
    subplot(4,2,6);
    plot(X,agrandada)
    title('Escalada')
    legend({'s(4t)'},'Location','southwest')
    
    subplot(4,2,7);
    plot(X,reducida)
    title('Escalada')
    legend({'s(1/4t)'},'Location','southwest')
    
    subplot(4,2,8);
    plot(X,escalada_factor_negativo)
    title('Escalada')
    legend({'s(-1/2t)'},'Location','southwest')

end

function y = myfunction(t)
    if (t>=0 && t<=(2*pi))
        y = (2 * cos(t));
    else
        y = 0;
    end
end