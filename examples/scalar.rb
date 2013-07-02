require 'ropencv'
include OpenCV

scalar = cv::Scalar.new(1,0,0,0)
scalar[2] = 2
puts scalar[0]
puts scalar[1]
puts scalar[2]
puts scalar[3]

