function [multiRegionHausdorffDistance] = MultiRegionMHD(regions)
%MultiRegionMHD This function returns a measure of how 'spread-out' regions
%are.  
%   This function returns a measure of how 'spread-out' regions are.  The input
%   variable should be a list of lists.  Each list is a region consisting
%   of a list of points.  In particular, it can be a list of voxels
%   denoting ROIs in an MRI scan, for example.
maxDist = 0.0;
for i = 1 : length(regions) - 1
    for j = i + 1 : length(regions)
        region1 = regions{i};
        region2 = regions{j};
        dist = ModHausdorffDist(region1, region2);
        if dist > maxDist
            maxDist = dist;
        end
    end
end
multiRegionHausdorffDistance = maxDist;
end

