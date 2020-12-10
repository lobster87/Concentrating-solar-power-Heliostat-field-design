function [d,e] = Rotation_matrix(No_Helio,DelTheta,Ri)
% Rotation matrix to find new x and y cordinates around central point
%   This function begins with initializing the x and y arrays then
%   calculates the x and y cordinates.
   % initialize x and y the d and e are stand ins that represent the x and y values which will be contantinated with the global x and y values in the main script 
    d = zeros(1,No_Helio);
    e = zeros(1,No_Helio);
    d(1) = 0;
    e(1) = Ri;
    
    % Calculate x and y positions
    
    for i = 2:No_Helio
        a = [cosd(DelTheta), -sind(DelTheta); sind(DelTheta), cosd(DelTheta)]; % rotation matrix a
        b = [d(i-1);e(i-1)]; % rotation matrix b with current x and y positions
        c = a * b; % solve matrix to find new x and y positions
    
        % save position of new values for the x and y arrays
        d(i) = c(1); % save x(g) value
        e(i) = c(2); % save y(g) value
    end
     
end

