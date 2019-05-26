function f = tp2_4()
    fs = 1;
    fs1 = 10;
    fs2 = 100;
    fs3 = 1000;
    %dura un segundo por el intervalo (0,1)
    duration = 1;
    t_fs = [1];
    t_fs1 = 0:duration/fs1:1;
    t_fs1(end)=[];
    t_fs2 = 0:duration/fs2:1;
    t_fs2(end)=[];
    t_fs3 = 0:duration/fs3:1;
    t_fs3(end)=[];
    y_fs = [];
    y_fs1 = [];
    y_fs2 = [];
    y_fs3 = [];
    
    i = 1;
    for value = t_fs
        y_fs(i) = 2*cos(2*pi*value);
        i = i +1;
    end
    i = 1;
    for value = t_fs1
        y_fs1(i) = 2*cos(2*pi*value);
        i = i +1;
    end
    i = 1;
    for value = t_fs2
        y_fs2(i) = 2*cos(2*pi*value);
        i = i +1;
    end
    i = 1;
    for value = t_fs3
        y_fs3(i) = 2*cos(2*pi*value);
        i = i +1;
    end
    
    energy(y_fs)
    energy_cont(y_fs1,fs1)
    energy_cont(y_fs2,fs2)
    energy_cont(y_fs3,fs3)
end