function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    gradient = [0;0];
    for i = 1:m
        
       gradient(1,1) = gradient(1,1) + ((X(i,2)*theta(2,1)+theta(1,1)*X(i,1))-y(i,1));
       gradient(2,1) = gradient(2,1) + ((X(i,2)*theta(2,1)+theta(1,1)*X(i,1))-y(i,1))*X(i,2);
       
    end
    
    theta(2,1) = theta(2,1) - alpha/m *gradient(2,1);
    theta(1,1) = theta(1,1) - alpha/m *gradient(1,1);

    fprintf('Cost = %f\n ', computeCost(X,y,theta));
    %fprintf('Gradient = %f\n', gradient);


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
