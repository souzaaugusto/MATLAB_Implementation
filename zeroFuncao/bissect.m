function [root, err, n] = bissect(f, a, b, errMax)

    m = (a+b)/2;
    err = (b-a)/2;
    n = 0;  

    while err > errMax
        if f(a)*f(m) > 0
            a = m;
        else
            b = m;
        end
        m = (a+b)/2;
        err = (b-a)/2;
        n = n + 1;
    end
    root = m;
end
