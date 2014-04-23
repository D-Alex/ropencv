require 'ropencv'
require 'pp'

include OpenCV

# values do not have to be ordered
# y = 3x^2-2x+1
x = [2.0,4.0,0.0,1.0,10]
y = x.map do |val|
    3.0*val*val-2.0*val+1
end

# only CV_32F is supported by opencv for now
x = cv::Mat.new(x)
x.convert_to(x,cv::CV_32F)
y = cv::Mat.new(y)
y.convert_to(y,cv::CV_32F)

# out has to be created by the user as well
out = cv::Mat.new(3,1,cv::CV_32FC1)

cv::polyfit(x,y,out,2)
pp out
