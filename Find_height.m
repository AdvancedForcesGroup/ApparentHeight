
clear all;
clc

k=0.1;   %% N/m
E=1e9;
R=10e-9;

z_To_Volts=60e-9;  


z_V=[0; 0; 0; 0.05; 0.166; 0.3];  % I assume I go down in -1nm

z_m=z_V*z_To_Volts;   %% in nm

Force_nN=k*z_m;  %%% force N

Constant1=4/3*E*(R^(1/2));

X= Force_nN/(Constant1);

plot(X, Force_nN);

Indentation=X.^(2/3);

distance_in=wrev(Indentation);

count=0;

for ii=1:length(distance_in-1)
    
    
    if distance_in(ii)==0&&count>0
        distance_in(ii)=distance_in(ii-1)+1e-9;
    end
    if distance_in(ii)==0
        count=1;
    end
    
    
end

distance=wrev(distance_in);

zc=distance-z_m

z_m

