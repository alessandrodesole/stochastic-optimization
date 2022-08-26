% Action 2 - Emergency protocol

for i=1:(N+1) % N is the total number of clerks working in the company
    for j=1:(N+1)
        p = 0;
        for k=0:n
            p=p*(binopdf(k, (i-1), pre)); % pre = recovery prob during emergency
            p=p*(binopdf((j-1)-(i-1)+k, N-(i-1), pr)); % pr = recovery probability
        end
        action_2_transition_matrix(i,j)=p;
    end
end

for i=1:(N+1)
    for j=1:(N+1)
        if i > 1
            action_2_reward_matrix(i, j)=35*(exp((i-1)/7)-1);
        else
            action_2_reward(i, j)=0;
        end
    end
end