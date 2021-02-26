
try
    load('a.dat');
catch
    a = 0;
end
b = 2*a;

c = 0;
try
    c = teste(4);
catch
    c = -1;
end    

c