tempPD = pid(C);
kp = tempPD.Kp;
kd = tempPD.Kd;
ki = tempPD.Ki;
%%
a1 = kd * kp / (ki * ki);
a2 = 1/ki;
a3 = kp^3 / (3*ki^3);
%%
tempMag = squeeze(freqresp(IOTransfer_dy2y,w));
max(abs(tempMag));
%%
den = [ 1.000000000000, -1.620310200285, 0.713864305169, -0.093554104884 ];
num = [ 3.317148316240, -8.879887673303, 7.923413626761, -2.356564115411 ];
GcDis = tf(num,den,1/5000);