# RobustClustering
Single-linkage Robust Hierarchical Clustering in Julia 

Installation of Distances package needed before running the code

Pkg.add("Distances")

Robust Hierarchical Algorithm
This algorithm calculates pairwise distances between points with the density of cluters around the pair of points. 
Distances between points in dense clusters will be smaller than points in thin clusters.

In "findNthClosest.jl", the distances between points are calculated using Euclidean distance method in Distances packages, but the method of choice is flexible.
The distance to n-th closest point is needed to modify pairwise distances.

Every point has a robust distance paramter R calculated in "RobustDistance.jl"
R(x) = a*Distance of n-th closest point to x + b

Then a modified distance matrix will be calculated as follow(newDistance.jl):
Robust distance(x,y) = Euclidean distance(x,y)+ R(x) + R(y)
