I = imread('1.gif');
subplot(1,3,1);
imshow(I);
A=I;
AA=I;
for i = 1:512
    for j=1:512
        I(i,j)= AA(i,512-j+1);
    end;
end;
subplot(1,3,2);
imshow(I);
for i= 1:512
   for j=1:512
        A(i,j) = AA(512-i+1,j);
   end;
end;
subplot(1,3,3);
imshow(A);




