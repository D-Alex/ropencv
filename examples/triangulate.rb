require 'ropencv'
require 'pp'

include OpenCV

p1 = cv::Mat.eye(3,4,cv::CV_32FC1)
p2 = cv::Mat.eye(3,4,cv::CV_32FC1)
p2[0,3] = 0.1

points1 = Vector::Point2f.new
points2 = Vector::Point2f.new

points1 << cv::Point2f.new(0.5,0.1)
points2 << cv::Point2f.new(0.7,0.1)

points1 << cv::Point2f.new(0.4,0.1)
points2 << cv::Point2f.new(0.2,0.1)

points1 << cv::Point2f.new(0,0.1)
points2 << cv::Point2f.new(0.1,0.1)

points3d = cv::Mat.new
cv::triangulate_points(p1,p2,cv::Mat.new(points1).t,cv::Mat.new(points2).t,points3d)

pp points3d
