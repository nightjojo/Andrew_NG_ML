function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%J = (y'*log(sigmoid(X*theta)) + (1-y)'*log(1-sigmoid(X*theta)))/(-m) + lambda*sum(theta(2:end).^2)/(2*m);
%grad1 = (X(:,1)'*(sigmoid(X(:,1)*theta(1)) - y))/m;
%grad2 = (X(:,2:end)'*((sigmoid(X(:,2:end)*theta(2:end))) - y) + lambda*theta(2:end))/m;
%grad = [grad1;grad2];

thetaAbove2 = [0; theta(2:end)];
[J, grad] = costFunction(theta, X, y);
J = J + lambda*sum(thetaAbove2.^2)/(2*m);
grad = grad .+ (lambda / m) * thetaAbove2;

% =============================================================

end
