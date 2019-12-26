function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

size_dataset = size(X, 1);

for iter_dataset = 1:size_dataset
  for iter_vect = 1:K
  
    x = X(iter_dataset, :)';
    projection_k = x' * U(:, iter_vect);
    Z(iter_dataset, iter_vect) = projection_k;
  
  endfor

endfor


% =============================================================

end
