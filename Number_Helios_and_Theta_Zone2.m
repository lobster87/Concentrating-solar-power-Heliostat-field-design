function [No_Helio,DelTheta] = Number_Helios_and_Theta_Zone2(Rzone2,Hw)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
No_Helio = floor((2*pi*Rzone2)/(2*Hw));
DelTheta = 360/No_Helio;
end

