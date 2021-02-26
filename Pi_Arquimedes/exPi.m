
r = 1;
k = 0;
l = r;
errMax = 1e-4;
err = 1;
while err > errMax
    
    d = 2 * r;
    n = 6 * 2^k;
    a = sqrt(r^2-((l/2)^2));
    
    pInterno = n * 1;
    pExterno = pInterno * r/a;
    
    l = sqrt((r-a)^2 + ((l/2)^2));
    k = k + 1;
    m_pi = mean([pInterno, pExterno])/ d;
    err = 1/2 * (pExterno - pInterno) / d;
end    

m_pi
