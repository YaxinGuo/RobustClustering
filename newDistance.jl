function newDistance(M, R, N)
    D3=pairwise(Euclidean(),M)
    for i in 1:N
        for j in 1:N
            D3[i,j]+=(R[i]+R[j])
        end
    end
    return D3
end
