
% CSCM 70 ----------- LAB 03 -----------
% CSCM 70 ----------- 2154638 -----------
% ==================================================================

% ==========================================================

% function res = first_diff(f,x,tolerance,h)
function res = first_diff()
f = @(x) abs(x) ;
x = 0;
tolerance = 0.0001;
h = 0.01;
err_rhs = 1000;
err_lhs = 1000;


% res = (f(x+h)-f(x-h))/(2*h);
res_rhs = (f(x+h) - f(x))/h;
res_lhs = (f(x) - f(x-h))/h;

tolerance = 0.0001;
h = 0.01;
% RHS
while err_rhs > tolerance
main_res_rhs = res_rhs;
res_rhs = (f(x+h) - f(x))/h;
err_rhs = (res_rhs - main_res_rhs);
res_err_rhs = err_rhs;

end

tolerance = 0.0001;
h = 0.01;
% LHS
while err_lhs > tolerance
main_res_lhs = res_lhs;
res_lhs = (f(x) - f(x-h))/h;
err_lhs = (res_lhs - main_res_lhs);
res_err_lhs = err_lhs;

end
% res = res_err_rhs - res_err_lhs;
 disp(res_err_rhs)
 disp(res_err_lhs)
end