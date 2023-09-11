% simulating monty hall problem
function res = monty_hall_v1(Ntrial)
% tracking choice of player
stick = 0;
change = 0;
% Number of trials

for i = 1:Ntrial
    %assumption  is player chooses door 1
    player_chooses = 1;
    % using rand for the door with car
    car_door = ceil(3*rand);
    if car_door == 1
        % Host will choose a door at random to open
        host_opens = ceil(2*rand)+1;
    elseif car_door == 2
        host_opens = 3;
    else 
        host_opens = 2;
    end

    % if stucking is th best choice, add 1 to stick 
    % otherwise add one to change
    if player_chooses == car_door
        stick = stick + 1;
    else
        change = change + 1;
    end
end

fprintf('Number of times it was best stick with intitial choice: %d.',stick);
fprintf('\nNumber of times it was best to change intitial choice: %d.',change);

if stick > change
    res = 'Player should stick';
else 
    res = 'Player should change initial choice';
end