function [J,grad] = costFunction(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% =========================================================================
%compute cost function J
%X = X
%theta = theta

s = (X * theta - y).^2;
J = sum(s) / (2*m);



%compute gradience for J
h = X * theta;
grad = (1/m) * X' * (h - y);
end
