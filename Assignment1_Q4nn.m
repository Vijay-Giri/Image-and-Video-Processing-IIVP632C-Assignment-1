a = imfinfo('lenaTest1.jpg');
compressed = a.FileSize;
actual = a.Width * a.Height * a.BitDepth/8;
ratio = actual/compressed

I1=imread('lenaTest1.jpg');
I2=imread('lenaTest2.jpg');
I3=imread('lenaTest3.jpg');
I4=imread('lenaTest4.jpg');

[M N]= size(I1);
error=I1-(I2);
MSE = sum(sum(error.*error))/(M*N);
rms1=sqrt(MSE)

error=I1-(I3);
MSE = sum(sum(error.*error))/(M*N);
rms2=sqrt(MSE)

error=I1-(I4);
MSE = sum(sum(error.*error))/(M*N);
rms3=sqrt(MSE)

