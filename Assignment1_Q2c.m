I = imread('1.gif');

prompt = 'input vertices of first coordinate of diagonal in the  form "[ x1 y1 ]" \n';
x1 = input(prompt);
prompt = 'input vertices of second coordinate of diagonals in the  form "[ x2 y2]" \n';
x2 = input(prompt);

I =I(min(x1(1),x2(1)):max(x1(1),x2(1)),min(x1(2),x2(2)):max(x1(2),x2(2)));

imshow(I);





