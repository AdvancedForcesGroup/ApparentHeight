k=0.01;   %% N/m

E=1e9;
R=10e-9;

z_To_Volts=60e-9;  

z_V=[0; 0.1; 0.2; 0.3];

z_m=z_V*z_To_Volts;   %% in nm

Force_nN=k*z_m;  %%% force N

Constant1=4/3*E*(R^(1/2));

X= Force_nN/(Constant1);

plot(X, Force_nN);

Indentation=X.^(2/3)