n = 10;
roi_1 = zeros(n, 3);
roi_1(:,1)= randi(128, n, 1);
roi_1(:,2)= randi(128, n, 1);
roi_1(:, 3) = randi(128, n, 1);

n = 8;
roi_2 = zeros(n, 3);
roi_2(:,1)= randi(128, n, 1);
roi_2(:,2)= randi(128, n, 1);
roi_2(:, 3) = randi(128, n, 1);

% Note that the "spread-outness" of a single region is 0.0 as you would
% expect.
dist = MultiRegionMHD({roi_1; roi_2});
fprintf('Result of first example: %f\n', dist)

% Note that regions can have different number of 'voxels' but each point
% must have the same dimension (3, in this case).
dist = MultiRegionMHD([roi_1]);
fprintf('Result of second example: %f\n', dist)
