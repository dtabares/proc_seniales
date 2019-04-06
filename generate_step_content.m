function step_content = generate_step_content(duration, fs)
    number_of_samples = fs * duration;
    step_content = 1:1:number_of_samples;
    half_point = floor(number_of_samples / 2);
    
    for i = 1:(half_point - 1)
        step_content(i)=0;
    end
    
    for i = half_point:number_of_samples
        step_content(i)=1;
    end
end
