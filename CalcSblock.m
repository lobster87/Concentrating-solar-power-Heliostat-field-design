function [Sblock] = CalcSblock(Ri,Rh,Hh)
% This function calculates Sblock
%   Derives values needed to calculate Sblock then finds Sblock
    Thetai = atand(Ri/Rh);
    Di = sqrt(Rh^2 + Ri^2);
    Alphai = asind(Hh/(2*Di));
    Sblock = Hh/cosd(Thetai + Alphai);
end

