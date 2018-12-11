function RobustDistance(D1,k,a,b)
    sizeD = size(D)
    rowD = sizeD[1]
    D2 = D[1,:]
    for i in 1:rowD
        D2[i] = a*D1[i,k]+b
    end
    return D2
end
