%%����Ŀ��ʱ��
%%Ŀǰ���Ϊ����Ŀ��ʱ�䣬����Ŀ�꺯����Ӧ��
function y = fitness1(n, m)
d = randi([3, 10], 1, n); %% ÿ�������ʱ��
numberOfProcess = m * n; %% �����
multiProjectTime = 0;
for j = 1:m %% ��Ŀ����
    singleProjectTime = 0;
    for i = 1:n %% �����
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