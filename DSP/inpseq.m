function [x,n] = inpseq(n0,n1,n2)

n = [n1:n2];
x = [(n-n0) == 0];

n = [-5:5];
x = 2*inpseq(-2,5,5) - inpseq(4,-5,5);
stem(n,x); title 'Sequence inpseq'
x = 2*inpseq(-2,-5,5) - inpseq(4,-5,5);
stem(n,x); title 'Sequence inpseq'