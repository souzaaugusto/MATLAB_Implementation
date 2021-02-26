function ret = isPrime(value)
    ret = true;
    if value == 2;
        ret = true;
    else
        for divisor = 2:floor(value/2)
            if mod(value, divisor) == 0
                ret = false;
                break;
            end
        end
    end
end    