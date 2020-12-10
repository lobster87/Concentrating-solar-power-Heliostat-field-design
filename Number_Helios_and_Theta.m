function [No_Helio,DelTheta] = Number_Helios_and_Theta(Ri,Cmin)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
No_Helio = floor((2*pi*Ri)/Cmin);
DelTheta = 360/No_Helio;
end

