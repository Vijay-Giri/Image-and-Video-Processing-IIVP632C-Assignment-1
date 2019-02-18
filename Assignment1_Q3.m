I = zeros(512,512);

A=127;
u=0.1;
v=0.1;
for i = 1:512
    for j=1:512
        I(i,j)= A.*(sin(u.*(i-1) + v.*(j-1)));
    end
end
I=I+A;
I = uint8(I);
imshow(I,[]);
