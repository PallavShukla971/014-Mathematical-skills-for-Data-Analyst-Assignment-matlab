
% CSCM 70 ----------- LAB 04 -----------
% CSCM 70 ----------- 2154638 -----------
% ==============================================================

% ==============================================================
% PALLAV SHUKLA

% ------------ Mentioned by Sir to Mention ---------------------

filename = which(mfilename('fullpath'))
fileInfo = dir(filename)

% ---------------------------------------------------------------

function res=GradientDescent(f,initial_est,step_size)

syms x y

format shortG

minimizer = initial_est;
value = subs(f,[x; y],initial_est);
grad = [diff(f,x); diff(f,y)];
h = step_size;

next_step_expression = [x;y] - h*grad;
next_step_func = matlabFunction(next_step_expression); 

currentNorm = 1; 
estimates = zeros(20,3);

iterCount = 0;

while currentNorm > 0.001
    if iterCount == 20
        disp(estimates)
        error('20 iterations have been carried out without convergence. Results as shown (x, y, value).')
    end
    oldvalue = value;
    minimizer = feval(next_step_func, minimizer(1), minimizer(2));
    value = subs(f,[x;y], minimizer);
    currentNorm = norm(subs(grad,[x; y], minimizer));
    iterCount = iterCount + 1;
    estimate = [minimizer(1) minimizer(2) value];
    estimates(iterCount,:) = estimate;
end

res = minimizer;

X = sprintf('The minimizer is estimated to be (%f,%f). The value of the function there is %f.',res(1),res(2),value);
disp(X)

% ==================================================================
%  ----------- END GradientDescent -----------
% ==========================================================