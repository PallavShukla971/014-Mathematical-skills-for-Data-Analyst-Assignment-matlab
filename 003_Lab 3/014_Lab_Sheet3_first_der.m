
% first_der.m file 
% CSCM 70 ----------- LAB 03 -----------
% CSCM 70 ----------- 2154638 -----------
% ==================================================================

% ==========================================================

function res = first_der(f,x,tolerance,h)
err = 1000;
% res = (f(x+h)-f(x-h))/(2*h);
 res = (f(x+h) - f(x))/h;
while err > tolerance
	h = h/10;
	end_res = res;
% 	res = (f(x+h)-f(x-h))/(2*h);
  	res = (f(x+h) - f(x))/h;
	err = abs(res - end_res);
end
end



