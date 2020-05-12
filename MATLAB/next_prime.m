function k = next_prime(n)
i = 1;
while isprime(n+i) == 0
    i = i + 1;
end
k= n+i;