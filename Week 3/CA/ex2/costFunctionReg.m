function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
J_norm = 0;
J_reg = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


for i=1:m
	J_norm = J_norm + (-y(i) * log(sigmoid(X(i,:) * theta)) - (1 - y(i)) * log(1 - sigmoid(X(i,:) * theta))) ;
end
J_norm = J_norm / m;

for j=1:size(theta,2)
	J_reg = J_reg + (theta(j) .^ 2);
end
J_reg = (lambda/(2*m)) * J_reg;

J = J_norm + J_reg;

for j=1:size(theta)
	for i=1:m
		grad(j) = grad(j) + (sigmoid(X(i,:) * theta) - y(i)) * (X(i,j));
	end
end

for j=2:size(theta)
	grad(j) = grad(j) + (theta(j) * lambda);
end 
	
grad = grad / m;

% =============================================================

end
