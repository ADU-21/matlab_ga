%%多项目总时间
%%目前求得为多项目总时间，而非目标函数适应度

function y = fitness1(numberOfProcessForSingleProject, numberOfProject) %% n = numberOfProcessForSingleProject; m = numberOfProject
allProcessTimeList = randi([3, 10], 1, numberOfProcessForSingleProject); %% 每个活动持续时间
numberOfProcess = numberOfProject * numberOfProcessForSingleProject; %% 活动总数
multiProjectTime = 0;
for j = 1:numberOfProject %% 项目迭代
    singleProjectTime = 0;
    for i = 1:numberOfProcessForSingleProject %% 活动迭代
        singleProjectTime = singleProjectTime + allProcessTimeList(i);
    end
    multiProjectTime = multiProjectTime + singleProjectTime;
end
y = min(multiProjectTime - sd(numberOfProcess) - dj(numberOfProject, numberOfProcessForSingleProject));
%%y = multiProjectTime;
end

function y = sd(numberOfProcess)
saveTime = 0;
for n = 1:numberOfProcess
    saveTime = saveTime + 2*rand();
end
y = saveTime;
end

function y = dj(numberOfProject, numberOfProcessForSingleProject)
saveTime = 0;
for m = 1:numberOfProject
    saveTime = saveTime + djTime(numberOfProcessForSingleProject);
end
y = saveTime;
end

function y = djTime(numberOfProcessForSingleProject)
y = ( numberOfProcessForSingleProject - 1 ) * 3 *rand();
end