% CSCM 70 ----------- LAB 02 -----------
% CSCM 70 ----------- 2154638 -----------
% ==================================================================

% Exercise 1 ----->-> FOR LOOPS Task 1<-<----- ##START## 
% calculate the L2 norm of  v = [ 3; 2; -1; -2] using for loop
% Call this -> w = [ 2; 9; -4; -6; 7; 0; 1]
% in Command Window : You are getting output as a result of v,p & norm of v

v = [ 3; 2; -1; -2]       % given the value as said in quest
p = v                     % assigned the value to another variable so it can be used again
k=0;                      % variable initiated
x=length(p);              % till length of p
for i=1:x                 % starting from 1 till length of p can be said x
    k = k + p(i)^2;       % Taking the initated variable and appending it with a sqare of p

end
res=sqrt(k)               % at the end sqrt of l2 norm as taught in class
% Exercise 1 ----->-> FOR LOOPS Task 1<-<----- ##END## 