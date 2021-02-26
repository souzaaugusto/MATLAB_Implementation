function [y,n] = sigadd(x1,n1,x2,n2)

n = min(min(n1),min(n2)):max(max(n1),max(n2));
y1 = zeros(1,length(n));
y2 = y1;
y1(find((n>=min(n1))&(n<=max(n1)) == 1))=x1;
y1(find((n>=min(n2))&(n<=max(n2)) == 1))=x2;
y = y1 + y2;

n = -2:10;
x = [1:7,6:-1:1];
[x11,n11] = sigshift(x,n,5);
[x12,n12] = sigshift(x,n,-4);
[x1,n1] = sigadd(2*x11,n11,-3*x12,n12);
subplot(2,1,1); stem(n1,x1); title 'Sequence sigadd'
xlabel('n'); ylabel('x1(n)');
[x1,n1] = sigadd(2*x11,n11,-3*x12,n12);
subplot(2,1,1); stem(n1,x1); title 'Sequence sigadd'
xlabel('n'); ylabel('x1(n)');
