%%多项目总时间
%%目前求得为多项目总时间，而非目标函数适应度
function y = fitness1(n, m)
d = randi([3, 10], 1, n); %% 每个活动持续时间
numberOfProcess = m * n; %% 活动总数
multiProjectTime = 0;
for j = 1:m %% 项目迭代
    singleProjectTime = 0;
    for i = 1:n %% 活动迭代
        singleProjectTime = singleProjectTime + d(i);
    end
    multiProjectTime = multiProjectTime + singleProjectTime;
end
y = min(multiProjectTime - sd(numberOfProcess));
%%y = multiProjectTime;
end

function y = sd(numberOfProcess)
saveTime = 0;
for n = 1:numberOfProcess
    saveTime = saveTime + 2*rand();
end
y = saveTime;
end