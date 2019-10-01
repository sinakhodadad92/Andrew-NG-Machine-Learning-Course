function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
% size(X)
% size(theta)
% size(y)


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    % error = ( X * theta ) - y ;
    % temp0 = theta(1) - (alpha * sum(error .* X(:,1)))/m;
    % temp1 = theta(2) - (alpha * sum(error .* X(:,2)))/m;
    % temp2 = theta(3) - (alpha * sum(error .* X(:,3)))/m;
    
    % theta = [temp0; temp1; temp2];
    
    % STRAIGHT VECTORIZED FORM
    temp = X * theta;
    error = temp - y;
    newX = error' * X;
    theta = theta - ((alpha/m) * newX');







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
