function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
%COFICOSTFUNC Collaborative filtering cost function
%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering problem.
%

% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

            
% You need to return the following values correctly
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost function and gradient for collaborative
%               filtering. Concretely, you should first implement the cost
%               function (without regularization) and make sure it is
%               matches our costs. After that, you should implement the 
%               gradient and use the checkCostFunction routine to check
%               that the gradient is correct. Finally, you should implement
%               regularization.
%
% Notes: X - num_movies  x num_features matrix of movie features
%        Theta - num_users  x num_features matrix of user features
%        Y - num_movies x num_users matrix of user ratings of movies
%        R - num_movies x num_users matrix, where R(i, j) = 1 if the 
%            i-th movie was rated by the j-th user
%
% You should set the following variables correctly:
%
%        X_grad - num_movies x num_features matrix, containing the 
%                 partial derivatives w.r.t. to each element of X
%        Theta_grad - num_users x num_features matrix, containing the 
%                     partial derivatives w.r.t. to each element of Theta
%


M = (X*Theta' - Y).^2;
J = (1/2) * sum(sum(R.*M));

for iter_movie = 1:num_movies
  
  idx = find(R(iter_movie, : ) == 1);
  
  Theta_temp = Theta(idx,:);
  
  Y_temp = Y(iter_movie, idx);
  
  X_grad(iter_movie,:) = (X(iter_movie,:) * Theta_temp' - Y_temp) * Theta_temp;
  
endfor


for iter_user = 1:num_users
  sum = 0;
  for iter_movie = 1:num_movies
    if(R(iter_movie,iter_user) == 1)
      sum = sum + ((X(iter_movie,:) * Theta(iter_user,:)' - Y(iter_movie, iter_user)) * X(iter_movie,:));
    endif
  endfor
  
  Theta_grad(iter_user,:) = sum;
  
  %idy = find(R(: , iter_user) == 1); %list of movies rated by user
  %Y_temp = Y(idy,iter_user); %Y to get the matrix with the ratings of each movie by user
  %X_temp = X(idy,:); %Select each feature of movie by user
  %Theta_grad(iter_user,:) = (X_temp * Theta(iter_user,:)' - Y_temp) * X_temp;
  %Y_temp = Y(idy,iter_user);
  %Theta_grad(iter_user,:) = (X_temp*Theta'(iter_user,:) - Y_temp) * X_temp;
  
endfor


% =============================================================

grad = [X_grad(:); Theta_grad(:)];

end
