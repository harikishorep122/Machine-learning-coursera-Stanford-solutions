function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
sum = 0;
for i = 1:m
    sum = sum + ((X(i,2)*theta(2,1)+theta(1,1)*X(i,1))-y(i,1))^2;
    
end

J= sum/(2*m);

% =========================================================================

end
