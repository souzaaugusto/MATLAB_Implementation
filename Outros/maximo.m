%function m = maximo(a,b,c)
 %   if a > b && a > c
  %      m = a;
   % else
    %    if b > c
     %       m = b;
      %  else
       %     m = c;
        %end
   % end
%end    

function maior  = maximo(v)
    
    maior = v(1);
    for i = 1:length(v)
        if v(i) > maior
            maior = v(i);
        end
    end
end    