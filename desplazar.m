function d = desplazar(orig, tau)

    if(tau >= 0)
        d = [zeros(1,tau),orig];
        d = d(1:end - tau);
    else
        d = orig(1+abs(tau):end);
        d = [d,zeros(1, abs(tau))];
    end
end