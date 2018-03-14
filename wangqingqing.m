%% My Fitness Function2
function Y = wangqingqing(X)

x = X(1,1);
y = X(1,2);

Y = 20+x^2 + 2*y^2 -15*(cos(2*pi*x)+cos(2*pi*y));