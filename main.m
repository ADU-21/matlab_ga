%% Main function - minimization
clc, clear, close all
FitFcn = @yidong;
nvars = 2;
[c, fval] = ga(FitFcn, nvars);