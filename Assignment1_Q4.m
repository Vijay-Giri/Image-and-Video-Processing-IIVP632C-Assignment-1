a = imfinfo('lenaTest1.jpg');
compressed = a.FileSize;
actual = a.Width * a.Height * a.BitDepth/8;
ratio = actual/compressed

I1=imread('lenaTest1.jpg');
I2=imread('lenaTest2.jpg');
I3=imread('lenaTest3.jpg');
I4=imread('lenaTest4.jpg');

rms1=immse(I1,I2)
rms1=sqrt(rms1)
rms2=immse(I1,I3)
rms1=sqrt(rms2)
rms3=immse(I1,I4)
rms3=sqrt(rms3)
