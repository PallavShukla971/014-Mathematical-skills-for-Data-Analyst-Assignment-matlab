
% CSCM 70 ----------- LAB 04 -----------
% CSCM 70 ----------- 2154638 -----------
% ==================================================================

% ==========================================================
% PALLAV SHUKLA

% ------------ Mentioned by Sir to Mention ---------------------

filename = which(mfilename('fullpath'))
fileInfo = dir(filename)

% ---------------------------------------------------------------

function res =Newton(f,initial_est)
syms x
fprime = diff(f,x);
root_expression = x - (f/fprime);
root_func = matlabFunction(root_expression);

root = initial_est;
currentError = 1;
roots = zeros(20,1);

iterCount = 0;

while currentError > 0.0001
    if iterCount == 20
        disp(roots)
        error('20 iteration comlete with results shown as shown.')
    end
    oldroot = root;
    root = feval(root_func,oldroot);
    currentError = abs(root-oldroot);
    iterCount = iterCount + 1;
    roots(iterCount) = root;
end

res = root;

X = sprintf('The root is estimated to be %f. The value of the function is %f.',res,subs(f,x,res));
disp(X)

% ==================================================================
%  ----------- END Newton -----------
% ==========================================================