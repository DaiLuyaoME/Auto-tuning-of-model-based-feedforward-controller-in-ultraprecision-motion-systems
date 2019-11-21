%%
accCoef = idealAccCoef;
jerkCoef = idealJerkCoef;
snapCoef = idealSnapCoef;

trajParameters.dis = 0.04;
trajParameters.vel = 0.25;
trajParameters.acc = 10; 
trajParameters.jerk = 800;
trajParameters.snap = 64000;

sim('main',[0 0.24]);