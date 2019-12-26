function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% General Useful Variables
Predictions = X * theta;
diff = Predictions - y;

% Calculating Gradient
theta_size = size(theta,1);

grad(1) = (1/m) * sum(diff.*X(:,1));

for iter_theta = 2:theta_size
  grad(iter_theta) = ((1/m) * sum(diff.*X(:,iter_theta))) ...
  + ((lambda/m) * theta(iter_theta));

endfor


% Calculating Cost Function
squared_diff = sum(power(diff ,2));
theta = theta(2:end);
squared_theta = sum(power(theta,2));
J = ((1/ (2*m)) * squared_diff) + ((lambda/(2*m))* squared_theta);











% =========================================================================

grad = grad(:);

end
