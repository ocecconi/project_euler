% Project Euler
% Problem 2
%
% Each new term in the Fibonacci sequence is generated by adding the 
% previous two terms. By starting with 1 and 2, the first 10 terms will be:
%
% 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
%
% By considering the terms in the Fibonacci sequence whose values do not 
% exceed four million, find the sum of the even-valued terms.

% Create Fibonacci generator
F = [1 2]';
n = 3;

while F(n-1) < 4000000
    F(n) = F(n-2) + F(n-1);
    n = n + 1;
end

% Find even value terms and sum
E = [];
r = 1;
sum = 0;

for ii=1:(length(F))
   if mod(F(ii),2) == 0
       sum = sum + F(ii);
   else
       sum = sum;
   end
end

% Output sum
sum