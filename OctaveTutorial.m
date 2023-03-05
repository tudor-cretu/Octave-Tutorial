% I'm a comment

% ---- USER INPUT & OUTPUT ----

name = input("Your name: ", 's');
if ~isempty(name)
  fprintf("Hello %s\n", name);
endif  

vInput = input("Enter a Vector: ");
disp(vInput);

% ---- VARIABLES ---- 

%{
Data types are classes which also have associated methods for working with that data.
Types include int8, int16, int32, int64, char, logical, double, single(generic int),
and unsinged uint8, ...
%}

c1 = 'A'
class(c1)
s1 = "A string"
b1 = 1

intmin('int8')
intmax('int64')

realmax

v1 = 1 + 2 + 3 ...
+ 4

% ---- CASTING ----

v2 = 8 
class(v2)
v2 = int8(v2)
class(v2)

v3 = double('A')
v4 = char(64)

% ---- MATH OPERATORS & SPRINTF ----

% %d: Int
% %f: Float
% %e: Exponential Equation
% %c: Char
% %s: String

fprintf('5 + 4 = %d\n', 5 + 4);
% and -, *
fprintf('5 / 4 = %0.2f\n', 5 / 4);
fprintf('5 ^ 4 = %d\n', 5 ^ 4);
fprintf('5 %% 4 = %d\n', mod(5, 4));

randi([10, 20]) % random integer in the interval

bF1 = 1.1111111111111111;
bF2 = bF1 + 0.1111111111111111;
fprintf("bF2 = %0.16f\n", bF2);

fprintf('abs(-1) = %d\n', abs(-1)); 
fprintf('floor(2.45) = %d\n', floor(2.45));
fprintf('ceil(2.45) = %d\n', ceil(2.45));
fprintf('exp(1) = %d\n', exp(1)); % e^1
fprintf('log(100) = %d\n', log(100)); % ln
fprintf('log10(100) = %d\n', log10(100));
fprintf('sqrt(100) = %d\n', sqrt(100));
fprintf('Deg to Rads = %f\n', deg2rad(90)); % degrees to radians

% ---- CONDITIONALS ----

% Relational Operators: >, <, >=, <=, == and ~=
% Logical Operators: ||, &&. ~ (Not)

age = input("Enter your age: ");
if age >= 3 && age <= 6
  disp("You're in kindergarten");
elseif age >= 7 && age <= 13
  disp("You're in Middle School");
elseif age >= 14 && age <= 18
  disp("You're in High School"); 
else 
  disp("Stay Home");
endif

switch age
  case num2cell(3:6)
    disp("You're in kindergarten");
  case num2cell(7:13)
    disp("You're in Middle School");
  case {14, 15, 16, 17, 18}
    disp("You're in High School");
  otherwise
    disp("Stay Home");
endswitch

% ---- VECTORS ---- 

vt1 = [5 3 2 1] % row vector
vL = length(vt1)
vt1 = sort(vt1)
vt2 = 5:10
vt3 = 2:2:10
vt4 =  [vt1 vt2] % concatenate vectors
vt4(4) % 4th index of vector vt4
vtEnd = vt4(end) % last element of vector
vt4(4) = 12 % assigns 12 to the 4th index of the vector
vt4(11) = 33 % creates a new element at the end of the vector 
vt4(1:3) % first 3 elements of vt4
vt4([2 4 6]); % 2nd 4th and 6th values 

vt5 =  [2;3;4] % semicolons for column vector
vt6 = [1 2 3]
vtMult = vt5 * vt6 % basically matrix multiplication 

vt7 = [4 5 6]
vt7' % transpose 

vtDotP1 = vt6 * vt7' % (1*4) + (5*2) + (3 * 6)
% the number of columns of the 1st matrix needs to be equal to the number of rows of the 2nd matrix
% eg: 1 x 3 * 3 x 1 = a matrix with 1 row and 1 column
vtDotP2 = dot(vt6, vt7) % the dot product, same as vtDotP1

% Cross Product
% [a1, a2, a3] [b1, b2, b3]
% (1, 1) = (a2 * b3) - (a3 * b2)
% (2, 1) = (a3 * b1) - (a1 * b3)
% (3, 1) = (a1 * b2) - (a2 * b1)
vtCross = cross(vt6, vt7)

vt8 = linspace(1,20,4) % 4 values between 1 and 20, equally spaced

vt9 = logspace(1,3,3) % prints 10, 100, 1000 

% ---- MATRICES ----

m1 = [2 3 4; 5 6 7; 8 9 10] % 3x3 matrix
mNRV = length(m1) % number of values in a row
mNV = numel(m1) % number of all elements in the matrix
mS = size(m1) % number of rows & cols
[nRows, nCols] = size(m1)
m2 = randi([10, 20], 3) % random generated matrix with 2 rows & 2 cols

m2(1, 2) % element from row 1 and col 2 
m2(1,:) = 25 % changes all the elements of the 1st row to 25
m2(:,1) = 25 % changes all the elements of the 1st column to 25
mR1Last = m2(end, 1) % last value of the 1st colummn
mR2Last = m2(2, end) % last value of the 2nd row

% ---- LOOPING ----


