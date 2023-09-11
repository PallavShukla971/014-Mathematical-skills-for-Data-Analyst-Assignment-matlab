% CSCM 70 ----------- LAB 02 -----------
% CSCM 70 ----------- 2154638 -----------
% ==================================================================

% Exercise 2 ----->-> Linear Dependence <-<----- ##START## 
% calculate (A + H)x = v ; h=1 ;
% devide h/2 with each itteration of the loop
% 10 iterations
% Also calculate each solution vector x using mynorm.
% % in Command Window : You are getting output 
% % in Command Window : 
disp('---------------------Question Start---------------------');
A = [1 1 3; 1 0 2; 0 1 1];    % Given value
v = [2;2;6];                  % Given value
h = 1;                        % Given value
H = [0 0 h; 0 0 0; 0 0 0];    % Given value

                              % written to try x = A \ v
W = A\v
disp('Displaying W in an officaila way');
disp(W)
empty = [];                   % empty vector declared
disp('this is the empty set below');
disp(empty)
                              % Makinf a for loop 
for j = 1:10                  % Doing it for 10 itteration given
    R = A + H;
    disp('this is R displayed below');
    disp(R)
    S = R \ v;
    disp('this is S displayed below');
    disp(S)
    fprintf("Norm of the solution vector(S) %d = %f \n", j ,call2norm(S))
    T = S';
    H(1,3) = H(1,3)/2;        % Going to 1 row 3rd column and deviding it by 2 on each iteration
    empty(j) = call2norm(T);
    fprintf("Norm of the solution vector(T) %d = %f \n", j ,call2norm(T))
end
disp(empty)
disp('---------------------Question End---------------------');

% Exercise 2 ----->-> Linear Dependence <-<----- ##END## 