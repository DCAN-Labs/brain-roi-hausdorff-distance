# brain-roi-hausdorff-distance
Computes the maximum Hausdorff distance between pairs of ROIs in a given collection of 3D ROIs.

The MultiRegionMHD function returns a measure of how 'spread-out' or dispersed regions are.  The input
variable should be a list of lists.  Each list is a region consisting
of a list of points.  In particular, it can be a list of voxels
denoting ROIs in an MRI scan, for example.

Uses the [Modified Hausdorff Distance](https://www.mathworks.com/matlabcentral/fileexchange/29968-modified-hausdorff-distance) library.
    * Sasikanth (2022). Modified Hausdorff Distance (https://www.mathworks.com/matlabcentral/fileexchange/29968-modified-hausdorff-distance), MATLAB Central File Exchange. Retrieved June 10, 2022. 