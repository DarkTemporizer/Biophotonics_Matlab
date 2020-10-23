t = [10^-10 : 10^-14 : 10^-8];
v = 3*10^10;
mu_a_0 = 0;
mu_s = 5;
r = 0.1;
V = 1;

for i = 0 : 1 : 4
     
    mu_a_0 = i*0.1;
    
    mu_s = 5;
    
    for j = 0 : 1 : 4
   
        mu_s = j*5;
        D = 1/3*mu_s;
        PHI_hom = (v./(4*pi*v*D*t).^(3/2)).*exp(r^2./(4*D*v*t) - mu_a_0*t*v);
        figure(1);
        p = plot(t, PHI_hom); hold on;
            
        label = "μa° = "+mu_a_0+", μs° = "+mu_s+"";
        legend(p,label);
        
        title('Fluence for completely homogenous medium');
        xlabel('time axis');
        ylabel('Φ(μa°, μs°, t)');
        grid on;
        axis([0*10^-9 5*10^-9 0 4*10^6]);

     end
end




 

