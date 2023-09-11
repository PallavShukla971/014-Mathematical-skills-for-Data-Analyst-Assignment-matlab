
% CSCM 70 ----------- LAB 05 -----------
% CSCM 70 ----------- 2154638 -----------
% ==============================================================
% ==============================================================
% PALLAV SHUKLA

% ------------ Covariance Matrix ---------------------
% ---------------------------------------------------------------
% This function returns covariance of a matrix F in the variable res
function res = cov_manual(F)
% N denotes the size of the Matrix
N = size(F,1); 
% finding the mean of data 
Xmean = [sum(F,1)] / N;
%Calculating co-variance
covariance = ...
    (1/(N-1))*(transpose(F - ones(N) .* Xmean)*(F - ones(N) .* Xmean));
% Return value of the function
res = covariance;
% ==================================================================
%  ----------- END Covariance Matrix -----------
% ==================================================================