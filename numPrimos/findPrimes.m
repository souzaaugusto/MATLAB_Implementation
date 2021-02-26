function primes = findPrimes(n)
    primes = [];
    
    if n >= 2
        primes = [2];
    end
    
    for value = 3:2:n
        if isPrime(value)
             primes(end+1) = value;
        end
    end    
end    
