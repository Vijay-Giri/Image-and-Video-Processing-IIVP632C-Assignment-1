prompt = 'Input The Length Of White Block \n';
x = input(prompt);
x=uint16(x);
l = 512;
I = imread('1.gif');
whos I
I(max(1,l/2-x/2+1):min(l,l/2-x/2+x),max(1,l/2-x/2+1) : min(l,l/2-x/2+x))=255;
imshow(I);
imwrite(I,'ans1.tif');


