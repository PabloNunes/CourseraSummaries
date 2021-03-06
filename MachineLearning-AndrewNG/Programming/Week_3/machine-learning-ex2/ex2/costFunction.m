function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%
matrix_prediction = -1 * X * theta;

for iter=1:length(matrix_prediction)
  predictions(iter) = 1 / (1 + exp(matrix_prediction(iter)));
endfor
sum_cost = sum((-y.*log(predictions)')-((1-y).*log(1-predictions)'));
J = (1/m) * sum_cost;


diff = predictions' - y;
for iter=1:length(theta)
  diff_sum = sum(diff' * X(:,iter));
  grad(iter) = (1/m) * diff_sum;
endfor
% =============================================================

end
