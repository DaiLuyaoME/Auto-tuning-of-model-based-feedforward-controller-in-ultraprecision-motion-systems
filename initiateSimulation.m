% clear all;
close all;
clc;
%%
fs=5000; % sampling frequency 
Ts=1/fs; % sampling period

%%
fn = 700; % resonant frequency
wn = fn * 2 * pi;
zn = 0.03; % damping ratio
m = [5,20];
Gp = createPlantModel(m,fn,zn,2); % non-colocated double-mass-block model

s = tf('s');
tau = 1.5*Ts;
delayModel = exp(-tau*s); % time delay model, the 0.5 sampling time delay is used to approxiamte zero order hold effect
% delayModel = pade(delayModel,2);

Gp = Gp * delayModel; % plant model with time delay considered
% w = linspace(100 * 2 * pi,1500 * 2 * pi,2048);
% figure;bodeplot(Gp,w); % plot Bode diagram of plant model

load('180HzPIDWith700HzNotchForTimeDelay.mat'); % load feedback controller, the control bandwidth is 180Hz

% ideal feedforward coefficients 
idealAccCoef = sum(m);
idealJerkCoef = sum(m) * tau;
idealSnapCoef = sum(m) * ( 1/wn.^2 + 0.5 * tau.^2);