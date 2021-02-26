function [x1,x2] = bhask(a,b,c)
     delta = b^2 - 4*a*c;
     sDelta = sqrt(delta);
     x1 = (-b + sDelta)/(2*a);
     x2 = (-b - sDelta)/(2*a);
end     