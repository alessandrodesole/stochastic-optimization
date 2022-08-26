% Q-Value iteration

while difference >= tolerance
    k=k+1;
    Q_old=Q_new;
    Q_star_old=Q_star_new;
    for i=1:(N+1)
        ...
    end

    for i=1:(N+1)
        Q_star_new(i)=max(Q_new(i, :));
    end
        diff=max(Q_star_new - Q_star_old);
end

best_policy = zeros([N+1, 1]);
for i=1:(N+1)
    j=1;
    max_n = max(Q_new_state(i,:));
    while Q_new(i, j) < max_n
        j=j+1;
    end
    best_policy(i)=j;
end