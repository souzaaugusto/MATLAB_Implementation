
v = [1,3,2,10, 11, 23, 50, 99, 101, 4, 16];

y = [];
limite = 20;
j = 1;
for i = 1:length(v)
    if mod(v(i), 2) == 0
        y(j) = v(i);
        j = j + 1;
    else
        continue
        disp(v(i)) % não é executado
    end    
end        

disp(y);
%for i = 1:length(v)
 %   if v(i) < limite
  %      y(i) = v(i);
   % else
    %    break
    %end
%end


%i = 1;
%while i <= length(v) && v(i) < limite
 %   y(i) = v(i);
  %  i = i + 1;
%end






