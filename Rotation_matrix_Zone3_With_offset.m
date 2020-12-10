function [d,e] = Rotation_matrix_Zone3_With_offset(No_Helio,DelTheta,DelThetaZone3,Ri)
% Rotation matrix to find new x and y cordinates around central point with off set for zone2 
%   This function begins with initializing the x and y arrays then
%   calculates the x and y cordinates starting with an offset for zone2 alternative rows.
   % initialize x and y the d and e are stand ins that represent the x and y values which will be contantinated with the global x and y values in the main script 
    d = zeros(1,No_Helio);
    e = zeros(1,No_Helio);
    d(1) = 0;
    e(1) = Ri;
    
    % shift starting point
    a = [cosd(DelTheta/4), -sind(DelTheta/4); sind(DelTheta/4), cosd(DelTheta/4)]; % rotation matrix a
    b = [d(1);e(1)]; % rotation matrix b with current x and y positions
    c = a * b; % solve matrix to find new x and y positions
    
    % offset starting point
    d(1) = c(1);
    e(1) = c(2);
    
    % Calculate x and y positions
    
    for i = 2:No_Helio
        a = [cosd(DelThetaZone3), -sind(DelThetaZone3); sind(DelThetaZone3), cosd(DelThetaZone3)]; % rotation matrix a
        b = [d(i-1);e(i-1)]; % rotation matrix b with current x and y positions
        c = a * b; % solve matrix to find new x and y positions
    
        % save position of new values for the x and y arrays
        d(i) = c(1); % save x(g) value
        e(i) = c(2); % save y(g) value
    end
     
end

