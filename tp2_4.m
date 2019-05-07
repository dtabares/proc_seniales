function f = tp2_4()
    my_func =  @(t) 2*cos(2 * pi * t);
    fs1 = 10;
    fs2 = 100;
    fs3 = 1000;
    %dura un segundo por el intervalo (0,1)
    duration = 1;
    
    t_fs1 = 0:duration/fs1:1;
    t_fs1(end)=[];
    t_fs2 = 0:duration/fs2:1;
    t_fs2(end)=[];
    t_fs3 = 0:duration/fs3:1;
    t_fs3(end)=[];
    y_fs1 = [];
    y_fs2 = [];
    y_fs3 = [];
    
    i = 1;
    for t = t_fs1
        y_fs1(i) = my_func(t);
        i = i +1;
    end
    
    i = 1;
        
    for t = t_fs2
        y_fs2(i) = my_func(t);
        i = i +1;
    end
    
    i = 1;
        
    for t = t_fs3
        y_fs3(i) = my_func(t);
        i = i +1;
    end
    
    e_fs10 = energy(y_fs1,fs1)
    e_fs100 = energy(y_fs2,fs2)
    e_fs1000 = energy(y_fs3,fs3)
    figure
    
    subplot(3,1,1);
    plot(t_fs1,y_fs1)
    title('fs = 10')
    l = (['E = ',num2str(e_fs10)]);
    legend({ l },'Location','southwest')
    
    subplot(3,1,2);
    plot(t_fs2,y_fs2)
    title('fs = 100')
    l = (['E = ',num2str(e_fs100)]);
    legend({ l },'Location','southwest')
    
    subplot(3,1,3);
    plot(t_fs3,y_fs3)
    title('fs = 1000')
    l = (['E = ',num2str(e_fs1000)]);
    legend({ l },'Location','southwest')
end