function [power_produced, eff] = Power_produced_first_row(d,e,Rh,Altitude_median,Azimuth_median,power_produced,DNImedian,Harea,Ri)
% Calculate power produced
        % Calculate efficency
        row_eff = zeros(1,length(d));
        for i = 1:length(d)
            [row_eff(i)] = Cosine_loss(d(i),e(i),Rh,Altitude_median,Azimuth_median,Ri); 
        end
                
        % calculate power 
        power_produced = power_produced + sum((DNImedian*row_eff)*Harea);
        eff = row_eff;
end

