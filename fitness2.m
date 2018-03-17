%%Ŀ�꺯�����ɱ���С��
% B Ϊ��ӳɱ�ϵ��

function y = fitness2(numberOfProject, numberOfProcessForSingleProject, B)
    multiProjectCost = 0;
    for j = 1: numberOfProject
        multiProjectCost = multiProjectCost + singleProjectCost(numberOfProcessForSingleProject, numberOfProject, B);
    end
    y = 1 / multiProjectCost;
end

function y = singleProjectCost(numberOfProcessForSingleProject, numberOfProject, B)
    singleProcessCostList = randi([3, 10], 1, numberOfProcessForSingleProject);
    directCost = sum(singleProcessCostList,2);
    totalProjectTime = fitness1(numberOfProcessForSingleProject, numberOfProject);
    y = directCost + B * totalProjectTime;
end
