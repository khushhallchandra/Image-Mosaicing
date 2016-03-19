%This function calculates the Matching scores for POC and Bandlimited POC

function [theta,tx,ty]=myEstimateTransformation(img1,img2)
a=zeros(1,41);
for k=(-20:20)
    f=imrotate(img2,k,'bilinear','crop');
    [a(k+21),~,~]=myPOC(f,img1);
end

%Take the image 'f' that has the Maximum POC value with 'img2' to select the rotation
%normalized image.

[~,theta]=max(a);
theta=theta-21;
f=imrotate(img2,theta,'bilinear','crop');


% Estimate the Image Displacement between f and g from the peak
% location 

[~,ty,tx]=myPOC(f,img1);

end
