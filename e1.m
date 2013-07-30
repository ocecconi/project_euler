% Project Euler 
% Problem 1
%
% If we list all the natural numbers below 10 that are multiples of 3 or 5,
% we get 3, 5, 6 and 9. The sum of these multiples is 23.
%
% Find the sum of all the multiples of 3 or 5 below 1000.

% Define array of all multiples of 3
threes = 3:3:999;

% Define array of all multiples of 5
fives = 5:5:999;

% Define array of all multiples of both 3 and 5
fifteens = 15:15:999;

% Sum arrays individually, subtract sum of fifteens
sum_mult = sum(threes) + sum(fives) - sum(fifteens);

% Output answer
sum_mult


% NOTES
%
% Sum each array individually to get the sum of all multiples of 3, 5 and
% 15 under 1000. These will be 3 numbers, not arrays.
%
% Subtract the sum of multiples of 15 to not have a double count.