%%目标函数：利润最大化

function y = fitness2(numberOfProject)
 multiProjectProfit = 0;
 for j = 1: numberOfProject
    multiProjectProfit = multiProjectProfit + singleProjectProfit();
 end
 y = nultiProjectProfit;
end

function y = singleProjectProfit(payForContract)
prePay = 0.5 * rand() * payForContract;
k = randi(9) + 1;  %% 付款次数
y = prePay + 
end