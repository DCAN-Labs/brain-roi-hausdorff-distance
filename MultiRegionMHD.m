function [multiRegionHausdorffDistance] = MultiRegionMHD(regions)
%MultiRegionMHD This function returns a measure of how 'spread-out' regions
%are.  
%   This function returns a measure of how 'spread-out' or dispered regions are.  The input
%   variable should be a list of lists.  Each list is a region consisting
%   of a list of points.  In particular, it can be a list of voxels
%   denoting ROIs in an MRI scan, for example.
maxDist = 0.0;
m = length(regions);
for i = 1 : m - 1
    for j = i + 1 : m
        region1 = regions(i);
        region2 = regions(j);
        dist = ModHausdorffDist(region1, region2);
        if dist > maxDist
            maxDist = dist;
        end
    end
end
multiRegionHausdorffDistance = maxDist;
end

