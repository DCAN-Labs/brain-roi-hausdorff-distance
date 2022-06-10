MAXI=128;       
n = 10;
c=3;
roi_1=randi(MAXI,n,c);
n = 8;
roi_2=randi(MAXI,n,c);

% Note that regions can have different number of 'voxels' but each point
% must have the same dimension (3, in this case).
dist = MultiRegionMHD({roi_1; roi_2});
fprintf('Result of first example: %f\n', dist)

% Note that the "spread-outness" of a single region is 0.0 as you would
% expect.
dist = MultiRegionMHD([roi_1]);
fprintf('Result of second example: %f\n', dist)
