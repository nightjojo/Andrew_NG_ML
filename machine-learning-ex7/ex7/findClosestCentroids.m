function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
m = size(X,1);
for i = 1 : m
	errors = sum((X(i,:) - centroids).^2, 2);
	%debugvec = find(errors == min(errors));
	%if length(debugvec) > 1
	%	fprintf('debugvec:');
	%	fprintf(' %d \n' , debugvec');
	%end
	%It turns out that sometimes there can be more than 1 centroid with a minimum error.
	%Is it really a good idea to manually choose one of them???
	%The image processed looks just fine. Does this mean it is okay?
	idx(i) = find(errors == min(errors))(1);%manually picked the 1st centroid with min(errors)
end

% =============================================================

end

