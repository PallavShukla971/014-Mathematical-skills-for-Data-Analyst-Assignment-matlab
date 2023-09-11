% CSCM 70 ----------- LAB 02 -----------
% CSCM 70 ----------- 2154638 -----------
% ==================================================================

% Exercise 1 ----->-> FOR LOOPS Task 2 <-<----- ##START## 
% calculate the L2 norm of  v = [ 3; 2; -1; -2] using for loop
% Call this -> w = [ 2; 9; -4; -6; 7; 0; 1]
% in Command Window write : call2norm([ 3; 2; -1; -2])
% in Command Window write : call2norm([ 2; 9; -4; -6; 7; 0; 1])

function res=call2norm(p) % Fxn created
k=0;                      % variable initiated
x=length(p);              % till length of p
for i=1:x                 % starting from 1 till length of p can be said x
    k = k + p(i)^2;       % Taking the initated variable and appending it with a sqare of p

end
res=sqrt(k);              % at the end sqrt of l2 norm as taught in class
end
% Exercise 1 ----->-> FOR LOOPS Task 2 <-<----- ##END## 