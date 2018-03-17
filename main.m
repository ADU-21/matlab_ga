% Main function - minimization
clc, clear, close all
FitFcn = @fitness;
nvars = 3;
[x, fval] = gamultiobj(FitFcn, nvars);