% Reinforcement learning

while i < n_it
    current_state = next_state;
    simulation = rand;
    counter = 0;
    for j=1:(N+1)
        counter=counter+transition(current_state, j, a);
        if simulation<counter
            next_state = j;
            break
        else
            % DO NOTHING
        end
    end
    reinforcement(current_state, a) = ((1-alfa(it+1))* reinforcement(current_state,a)) + alfa(it+1)*(reward(current_state, next_state,a)+(lambda*max(reinforcement)));
    it = it + 1;
end

Q_reinforcement = zeros(N+1, 1);

for i=1:(N+1)
    Q_reinforcement(i)=max(reinforcement(i, :));
end

for i=1:(N+1)
    j=1;
    max_nums=max(reinforcement(i, :));
    while reinforcement(i, j)<max_nums
        j=j+1;
    end
    optimal_policy_reinforcement(i)=j;
end