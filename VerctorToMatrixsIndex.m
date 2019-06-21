function c = VerctorToMatrixsIndex(s,a)
% 将向量化后的一维坐标s，结合原矩阵返回其对应二维坐标位置(x,y)
% a = [1 2 3;4 5 6;7 8 9;10 11 12];
t = a(:);
b = [0 0];
[m n] = size(a);
for i = 1 : m*n
    r = mod(i,m);
    if r == 0
        b = [b ;m ((i-m)/m+1)];
    end
    if r~=0
        b = [b ;r ((i-r)/m+1)];
    end
end
b = [b(2:m*n+1,1) b(2:m*n+1,2)];
% 记录当前元素对应的二维坐标位置并返回
c = [b(s,1) b(s,2)];
end