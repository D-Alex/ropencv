require 'ropencv'
require 'pp'

include OpenCV

first = Vector::Point3f.new
second = Vector::Point3f.new
aff = cv::Mat.new
mask = cv::Mat.new

0.upto(5) do |i|
    first.push_back(cv::Point3f.new(10*i,10*(i%3),10))
    second.push_back(cv::Point3f.new(i,i%3,1))
end

cv::estimate_affine3d(first, second, aff,mask)
pp aff
