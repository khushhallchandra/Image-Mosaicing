%% Hostel6
tic;
%reading the images
img1 = imread('../data/Hostel6.jpg');
img2 = imread('../data/Hostel6Rot_Trans.jpg');

% Estimating the rigid transformation between the images
[theta, tx, ty] = myEstimateTransformation(img1(:,:,1), img2(:,:,1));

% Stitching the images using transformation parameters
out = myMosaicing(img1,img2,theta,tx,ty);
imshow(img1);
figure();imshow(img2);
figure();imshow(out);
toc;

%% Wallpaper
tic;
%reading the images
img1 = imread('../data/wallpaper.jpg');
img2 = imread('../data/wallpaperRot_Trans.jpg');

% Estimating the rigid transformation between the images
[theta, tx, ty] = myEstimateTransformation(img1(:,:,1), img2(:,:,1));

% Stitching the images using transformation parameters
out = myMosaicing(img1,img2,theta,tx,ty);
figure();imshow(img1);
figure();imshow(img2);
figure();imshow(out);
toc;