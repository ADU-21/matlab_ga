%%����Ŀ��ʱ��
%%Ŀǰ���Ϊ����Ŀ��ʱ�䣬����Ŀ�꺯����Ӧ��

function y = fitness1(numberOfProcessForSingleProject, numberOfProject) %% n = numberOfProcessForSingleProject; m = numberOfProject
allProcessTimeList = randi([3, 10], 1, numberOfProcessForSingleProject); %% ÿ�������ʱ��
numberOfProcess = numberOfProject * numberOfProcessForSingleProject; %% �����
multiProjectTime = 0;
for j = 1:numberOfProject %% ��Ŀ����
    singleProjectTime = 0;
    for i = 1:numberOfProcessForSingleProject %% �����
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