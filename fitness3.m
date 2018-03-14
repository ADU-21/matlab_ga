%%fitness3 for stable
function y = fitness3(T)
C1 = 2;   %% 可更改
C2 = 3;   %%可更改
R = randi([30, 40], 1, T);
R1 = 1:T;
for t = 1:T
    R1(t) = R(t) + rid(t, R, T); %% 
end
y = 1/min(RFC_rrh(C2, T, R), RFC_rid(C1, C2, T, R, R1));
end

function y = RFC_rrh(C2, T, R)
y = C2 * RF_rrh(T, R);
end

function y = RF_rrh(T, R)
%%syms t
%%y = R(1) + symsum(abs(R(t+1)-R(t)), t, 1, (T - 1)) + R(T); 
sum = 0;
for t = 1:(T-1)
    sum = sum + abs(R(t+1)-R(t));
end
y = R(1) + sum + R(T);
end

function y = RFC_rid(C1, C2, T, R, R1)
y = C1 * RID(T, R) + C2 * RF_rid(R1, T);
end

function y = RID(T, R)
%%syms t
%%y = symsum(rid(t, R, T), 1 , T);
sum = 0;
for t = 1:T
    sum = sum + rid(t, R, T); 
end
y = sum;
end

function y = rid(t, R, T)
y = min(max(R(1:t), max(R(t:T)))) - R(t);
end

function y = RF_rid(R1, T)
%%sym t
%%y = R1(1) + symsum(R1(t + 1) - R1(t), t, 1, (T-1)) + R1(T);
sum = 0;
for t = 1:(T-1)
    sum = sum + R1(t+1)-R1(t);
end
y = R1(1) + sum + R1(T);
end