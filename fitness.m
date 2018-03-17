% Fitness for all 3 fitnesses

function y = fitness(x)
numberOfProject = x(1);
numberOfProcessForSingleProject = x(2);
B = x(3);
y(1) = fitness1(numberOfProcessForSingleProject, numberOfProject);
y(2) = fitness2(numberOfProject, numberOfProcessForSingleProject, B);
y(3) = fitness3(numberOfProcessForSingleProject, numberOfProject);
end