function res = routine(func,N)

sum  = 0;
N_random_numbers = 1 .* rand(N,1);
for i = 1:N
    sum = sum + func(N_random_numbers(i));
end

res = sum/N;