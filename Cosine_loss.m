function [row_eff] = Cosine_loss(x,y,Rh,Altitude,Azimuth,Ri)
% This function calculates cosine losses from the average sun position for
% the hour as well as the atmospheric losses.

% formula taken from Power from the sun book (link:
% http://powerfromthesun.net/Book/chapter10/chapter10.html#10.2.1%20%20%20Energy%20Losses
% taken from equastion 10.1

% set data points
z0 = Rh; % hight of the resiver compared to heliostat
z1 = 0; % hight of heliostat set to datum
alpha = Altitude;
A = Azimuth;
n = y;
e = x;

% calculate cosine loss derived from double angle formula
row_eff = (((z0-z1)*sind(alpha)*sind(A)-n.*cosd(alpha).*cosd(A))./(sqrt((z0-z1)^2+e.^2+n.^2))+1).*0.5;

% calculate atmospheric loss
effatm = exp(Ri/10150);

row_eff = row_eff .* effatm .*0.92;
end

