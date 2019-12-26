function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1)); # (25 x 401)

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1)); # (10 x 26)

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%



% Part 1  -  Making a simple cost function

%% First, let predict our values

X = [ones(m, 1) X]; # (5000 x 401)
z_2 = X * Theta1';  # (5000 x 25)
a_2 = sigmoid(z_2); # (5000 x 26)

m_2 = size(a_2, 1); 
a_2 = [ones(m_2, 1) a_2]; # (5000 x 26)
z_3 = a_2 * Theta2'; # (5000 x 10)
a_3 = sigmoid(z_3);  # (5000 x 10)


%% Making a result matrix for Y to vectorize the cost

y_matrix = zeros(size(a_3,1),size(a_3,2));

for y_iter = 1:size(a_3,1)
  result = (y(y_iter));
  y_matrix(y_iter,result) = 1;
endfor

%% Then, we will make a error vector of all samples for each class

total_cost = 0;

%%% Picking the column corresponding to the class (both predicted and real), and multiplying the matrices to have the two parts.
%%% And finally to sum them all in a variable.

for class_iter = 1:size(a_3,2)
  first_matrix = -y_matrix(:,class_iter)'*log(a_3(:,class_iter));
  second_matrix = (1 - y_matrix(:,class_iter))'*log(1 - a_3(:,class_iter));
  total_cost = total_cost + sum (first_matrix - second_matrix);
endfor


%% After that, sum all class errors and divide it by the number of samples

J = (1/m) * total_cost;



% Part 2 - Regularized cost function

%% Taking the bias out
Theta1_reg = Theta1(:,2:end);
Theta2_reg = Theta2(:,2:end);

%% Calculate the reg and adding to the Cost
reg = (lambda/(2*m)) *  ( sum(sum(power(Theta1_reg,2))) ...
          + sum(sum(power(Theta2_reg,2))) );
J = J + reg;

% Part 3 - Backpropagation

%% We did the forward propagation and the y matrix, so we just need
%% to calculate the error

%delta_3 = a_3 - y_matrix;
%delta_2 = (Theta2' * delta_3') .* sigmoidGradient(z_2);

gradient_acc1 = 0;
gradient_acc2 = 0;
for iter_train = 1:m
  %% Feed Forward
  input = X(iter_train,:)'; # (401 x 1)
  
  Z2 = Theta1 * input; # (25 x 1)
  A2 = sigmoid(Z2); 
  
  input_Z3 = [1; A2]; # (26 x 1)
  
  Z3 = Theta2 * input_Z3; # (10 x 1)
  A3 = sigmoid(Z3);  # (10 x 1)
  
  %% Calculate error output
  delta_3 = (A3 - y_matrix(iter_train,:)'); # (10 x 1)
  delta_2 = Theta2' * delta_3 .* (sigmoidGradient([1;Z2])); # (26 x 1) Porque precisa de um 1 e o Z2 e não somente Z2???
  
  
  %% Calculate gradient
  delta_2 = delta_2(2:end); 
  
  gradient_acc1 = gradient_acc1 + delta_2*(input)';
  gradient_acc2 = gradient_acc2 + delta_3*(input_Z3)';
  
endfor

Theta1_grad = (1/m) * (gradient_acc1);
Theta2_grad = (1/m) * (gradient_acc2);


% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
