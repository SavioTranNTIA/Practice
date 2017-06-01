function [ azim ] = Azimuth(viewer, object)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x = object(1) - viewer(1);
y = viewer(2) - object(2); 

if x>0 && y>0
    azim = 180 * atan(y/x) / pi;
elseif x>0 && y<0
    theta = 180 * atan(x/y) / pi;
    azim = theta + 90;
elseif x<0 && y<0
    theta = 180 * atan(y/x) / pi;
    azim = theta + 180;
elseif x<0 && y>0
    theta = 180 * atan(x/y) / pi;
    azim = 270 + theta;
end

end

