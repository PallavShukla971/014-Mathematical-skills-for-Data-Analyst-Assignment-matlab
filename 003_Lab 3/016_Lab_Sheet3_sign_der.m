% CSCM 70 ----------- LAB 03 -----------
% CSCM 70 ----------- 2154638 -----------
% ==================================================================

% ==========================================================
 
% function res =sign_der(f,x,h)
function res =sign_der()
f = @(x) sin(x);
x = .5;
h = 1;
% res = (f(x+h)-f(x-h))/(2*h);
res = (f(x+h) - f(x))/h;
i=1;
for i= 1 :20
	h = h/10;
    % disp(h)
%	res = (f(x+h)-f(x-h))/(2*h);
    res = (f(x+h) - f(x))/h;
    disp([i res]);
    i = i + 1;
    disp(res)
end
% disp(h)
end