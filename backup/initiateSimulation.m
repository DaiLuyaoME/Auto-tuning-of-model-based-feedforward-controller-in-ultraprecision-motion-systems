% clear all;
close all;
clc;
%%
fs=5000;%采样频率
Ts=1/fs;%采样周期

%%
fn = 700;
wn = fn * 2 * pi;
zn = 0.03;
m = [5,20];
Gp = createPlantModel(m,fn,zn,2);
w = linspace(100 * 2 * pi,1500 * 2 * pi,2048);
figure;bodeplot(Gp,w);

s = tf('s');
tau = 1.5*Ts;
delayModel = exp(-tau*s);
% delayModel = pade(delayModel,2);

Gp = Gp * delayModel;
load('180HzPIDWith700HzNotchForTimeDelay.mat');

idealAccCoef = sum(m);
idealJerkCoef = sum(m) * tau;
idealSnapCoef = sum(m) * ( 1/wn.^2 + 0.5 * tau.^2);
%%
accCoef = 0;
jerkCoef = 0;
snapCoef = 0;

% % tuned acc ff
% accCoef = 25.0744;
% jerkCoef = 0;
% snapCoef = 0;

trajParameters.dis = 0.04;
trajParameters.vel = 0.25;
trajParameters.acc = 10; 
trajParameters.jerk = 800;
trajParameters.snap = 64000;

sim('main',[0 0.24]);