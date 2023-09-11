% CSCM 70 ----------- LAB 05 -----------
% CSCM 70 ----------- 2154638 -----------
% ==============================================================
% ==============================================================
% PALLAV SHUKLA

% ------------ Random Perturbations ---------------------
% ---------------------------------------------------------------
% fIRST Created the Matrix
>> F = [1 1; 2 2; 3 3; 4 4; 5 5; 6 6; 7  7; 8 8; 9 9; 10 10;]
% Defined Xi and Yi where Xi and Yi have a difference of .1(either side) and i has a
% range of 1 to 10
% >> Xi = 0.1*rand(1,10); as it is mentioned from both the side.
% >> Yi = 0.1*rand(1,10);

>> Xi = (0.1 + 0.1)*rand(1,10) - 0.1
>> Yi = (0.1 + 0.1)*rand(1,10) - 0.1
% Reshaped Xi and Yi
>> Xi_reshape = reshape(Xi,size(Xi,2),1)
>> Yi_reshape = reshape(Yi,size(Yi,2),1)
>> new_mat = [Xi_reshape Yi_reshape]
% Adding up with F 
Ultimate_mat = new_mat + F
% finding cov
>> cov(Ultimate_mat)
>> Ultimate_mat_new = cov(Ultimate_mat)
% Finding eigen
>> [V,D] = eig(Ultimate_mat_new)
% ==================================================================
%  ----------- END Random Perturbations -----------
% ==================================================================