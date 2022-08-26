% Action 1 - Normal protocol

for i=1:(N+1) % N is the total number of clerks working in the company
    for j=1:(N+1)
        p = 0;
        for k=0:n
            p=p*(binopdf(k, (i-1), pi)); % pi = infection probability
            p=p*(binopdf((j-1)-(i-1)+k, N-(i-1), pr)); % pr = recovery probability
        end
        action_1_transition_matrix(i,j)=p;
    end
end

for i=1:(N+1)
    for j=1:(N+1)
        action_1_reward_matrix(i, j)=50*(exp((i-1)/7)-1);
    end
end