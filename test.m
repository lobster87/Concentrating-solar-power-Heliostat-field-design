xopt = zeros(length(AvgDNI),length(x));
i = 10;
[efficency] = Cosine_loss(x,y,Rh,AvgAltitude(i),AvgAzimuth(i))

% DNI during ith period
    DNIith = AvgDNI(i);
    
    % create optimized field for particular ith time and save positions
    power = 0;
    numberHelio = 0;
    
    [Maxeff, idx] = max(efficency);
    xopt(i,idx) = xopt(idx) + 1; % create marker to show where heliostat position is
     power = power + (DNIith*Maxeff*Harea);
     efficency(idx) = 0;
     
     thing = efficency(idx)
     