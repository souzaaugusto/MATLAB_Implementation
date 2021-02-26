function y = fact(x)
    if x == 1 || x == 0
        y = 1;
    else
        y = x * fact(x-1);
    end
end    