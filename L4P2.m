tic
A=magic(4); % what does magic command do
B=A;
B(1,1)=0;
A==B;
B=A;
B(1,1)=0;
isequal(A,B); % use of "isequal" Logical
toc