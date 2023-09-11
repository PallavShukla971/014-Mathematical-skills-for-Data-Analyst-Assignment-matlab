function res = monte_carlo(N)% generate a set of random numbers x
% (0, pi) and y(0, 1)
x = rand(1, N);
y = rand(1, N);
counter = 1;
num_samples = N;
% number of samples which will be at unit distance form origin
favourable_samples = 0;
X = [];
Y = [];
% find all points which are at unit distance from origin
while counter < num_samples 
    if ((x(counter) ^ 2 + y(counter) ^ 2) ^ 0.5) <=1
        favourable_samples = favourable_samples + 1;
        X(end+1) = x(counter);
        Y(end+1) = y(counter);
    end
    counter = counter + 1;
end
% calculating fraction of favaourable outcomes from sample space
res = favourable_samples / num_samples;
%displaying the results
disp(['Fraction of points which are unit distance from origin from sample space ' res])