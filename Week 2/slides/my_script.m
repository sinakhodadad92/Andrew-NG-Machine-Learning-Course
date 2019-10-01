disp("Hello World");
A = [1 2; 3 4; 5 6]
size(A)
sz = size(A)
size(sz)
size(A,1)
size(A,2)
% pwd
% load sth OR load('')
% who
% whos : variables in current scope

v = A(1:3)

% save myfile.m A 
% save hello.txt v -ascii : for ascii format

vi = A(2,:) 
vii =A([1 3],:)
A(:,2)=[10,11,12]
A = [A, [100;101;102]]; % append another column to the right
A(:) % put all elements of A in one single vector

D = [11 12; 13 14; 15 16]
E = [7 8; 9 0; 10 11]
F = [D E]
F = [D;E] % bottom

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = [ 1 2 3; 4 5 6; 7 8 9]
D = [10 11; 11 12; 13 14]
A * D
D .* E
D .^ 2
v = [1; 2; 3]
1 ./ v
log(v)
exp(v)
abs(v)
-v
v + ones(length(v),1)
v + ones(3,1)
v + 1
A = [1 2; 3 4; 5 6]
A'
(A')'
a = [1 15 2 0.5]
val = max(a)
[val, ind] = max(a)
a < 3
find(a<3)
A = magic(3)
help magic
[r,c] = find(A>=7)
help find
sum(a)
prod(a)
floor(a)
ceil(a)
rand(3)
max(rand(3),rand(3))
max(A,[],1) % column wise max
max(A,[],2) % row wise max
A = magic(9)
sum(A,1)
sum(A,2)
pinv(A)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
v=zeros(10,1)
for i=1:10,
    v(i)=2^i;
end
indices = 1:10
i = 1
while true,
    v(i)=100;
    i=i+1;
    if i==3,
        disp(i)
        break;
    end;
end;
v
if v(1) == 100,
    disp('shit');
elseif v(1) == 222,
    disp('222');
else,
    disp('no!');
end;
    
    







