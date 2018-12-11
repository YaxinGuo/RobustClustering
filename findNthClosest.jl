function findNthClosest(M, N)
    D1=pairwise(Euclidean(),M)
    for i in 1:N
        D1[i,:] = sort(D1[i,:])
    end
    return D1
end
