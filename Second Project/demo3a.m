%% Load data and create Graphs from Images
clear;rng(1);                   %% for kmeans
load dip_hw_2.mat;
affine2a = Image2Graph(d2a);
affine2b = Image2Graph(d2b);
[M2a,N2a,~] = size(d2a);
[M2b,N2b,~] = size(d2b);
%% Normalize-cut Clustering and Reshape of Image for:
k = 2;
clustk2a = myNCuts(affine2a,k);
clustk2a = clustk2a./k;
im2a = reshape(clustk2a,M2a,N2a);
clustk2b = myNCuts(affine2b,k);
clustk2b = clustk2b./k;
im2b = reshape(clustk2b,M2b,N2b);
k = 3;
clustk3a = myNCuts(affine2a,k);
clustk3a = clustk3a./k;
im3a = reshape(clustk3a,M2a,N2a);
clustk3b = myNCuts(affine2b,k);
clustk3b = clustk3b./k;
im3b = reshape(clustk3b,M2b,N2b);
k = 4;
clustk4a = myNCuts(affine2a,k);
clustk4a = clustk4a./k;
im4a = reshape(clustk4a,M2a,N2a);
clustk4b = myNCuts(affine2b,k);
clustk4b = clustk4b./k;
im4b = reshape(clustk4b,M2b,N2b);
%% Show Original and Clustered Images
figure;
subplot(2,2,1);
imshow(d2a);
title('Original Image');
subplot(2,2,2);
imshow(im2a);
title('Image with 2 clusters');
subplot(2,2,3);
imshow(im3a);
title('Image with 3 clusters');
subplot(2,2,4);
imshow(im4a);
title('Image with 4 clusters');
figure;
subplot(2,2,1);
imshow(d2b);
title('Original Image');
subplot(2,2,2);
imshow(im2b);
title('Image with 2 clusters');
subplot(2,2,3);
imshow(im3b);
title('Image with 3 clusters');
subplot(2,2,4);
imshow(im4b);
title('Image with 4 clusters');