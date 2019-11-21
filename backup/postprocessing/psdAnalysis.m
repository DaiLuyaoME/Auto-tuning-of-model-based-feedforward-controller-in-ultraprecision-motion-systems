close all;
%%
errData = Err;
time = Err.time;
fs = 5000;
startTime = 0.025;
endTime = 0.04;
dataIndex = time > startTime & time < endTime;
data =errData.signals.values(dataIndex);
dataTime = time(dataIndex);
%%
figure;
plot(dataTime,data);
%%
figure;
powerSpectralAnalysis(data,5000,1);
figure;
cumulativePowerSpectral(data,5000,1,1);


