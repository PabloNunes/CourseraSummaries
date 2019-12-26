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

matrix_prediction = -1 * X * theta;

for iter=1:length(matrix_prediction)
  predictions(iter) = 1 / (1 + exp(matrix_prediction(iter)));
endfor
sum_cost = sum((-y.*log(predictions)')-((1-y).*log(1-predictions)'));

theta_squared = 0;
for iter=2:length(theta)
  theta_squared = theta_squared + power(theta(iter), 2);
endfor
regularization = (lambda/(2*m)) * theta_squared;

J = ((1/m) * sum_cost) + regularization;


diff = predictions' - y;
for iter=1:length(theta)
  diff_sum = sum(diff' * X(:,iter));
  if iter == 1
    grad(iter) = (1/m) * diff_sum;
  else
    grad(iter) = ( (1/m) * diff_sum ) +  ( lambda/m * theta(iter) );
  endif
endfor




% =============================================================

end
