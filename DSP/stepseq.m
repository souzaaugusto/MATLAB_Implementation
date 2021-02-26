function [x,n] = stepseq(n0,n1,n2)

n = [n1:n2];
x = [(n-n0) >= 0];

n = [0:20];
x1 = n.*(stepseq(0,0,20) -stepseq(10,0,20));
x2 = 10*exp(-0.3*(n-10)).*(stepseq(10,0,20)-stepseq(20,0,20));
x = x1+x2;
subplot(2,2,3); stem(n,x); title 'Sequence stepseq'
xlabel('n'); ylabel('x(n)');

n = [0:50];
x = cos(0.04*pi*n) + 0.2*randn(size(n));
subplot(2,2,2); stem(n,x); title 'Sequence 2.1'
xlabel('n'); ylabel('x(n)');

n = [-10:9];
x = [5,4,3,2,1];
xtilde = x' * ones(1,4);
xtilde = (xtilde(:))';
subplot(2,2,4); stem(n,xtilde); title 'Sequence 2.1'
xlabel('n'); ylabel('xtilde(n)');