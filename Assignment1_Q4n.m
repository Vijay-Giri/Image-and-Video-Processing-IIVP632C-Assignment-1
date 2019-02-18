I=imread('lena.bmp');
fileInfo = dir('*.jpg');
bytesOnDisk = [fileInfo.bytes]
% Let's list them all and also compute compression ratio.
for k = 1 : 4
  thisName = fullfile(fileInfo(k).folder, fileInfo(k).name);
  imageInfo = imfinfo(thisName);
  imageSize = imageInfo.Width * imageInfo.Height * imageInfo.BitDepth/8;
  fprintf('The size of %s in memory is %d bytes, the disk size is %d\n',...
    fileInfo(k).name, imageSize, imageInfo.FileSize);
cr=266240/imageInfo.FileSize
 
end
%for rms calculation


for k = 1 : 4
  thisName = fullfile(fileInfo(k).folder, fileInfo(k).name);
  imageInfo = imfinfo(thisName);
a_X=double(I)-double(imread(thisName));
[rows ,cols] 	= size(a_X);
N		= rows * cols;

S		= sum(sum(a_X.^2));
rms	= sqrt(S/N)
end;