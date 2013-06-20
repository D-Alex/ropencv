require './../lib/opencv'
include OpenCV

mat = cv::imread("logo.png")
cv.blur(mat,mat,cv::Size.new(10,10))

detector = cv::FeatureDetector::create("SURF")
keypoints = Vector::KeyPoint.new
detector.detect(mat,keypoints)

puts "found #{keypoints.size} keypoints"
puts "first keypoint is at #{keypoints[0].pt.x}/#{keypoints[0].pt.y}"

cv::draw_keypoints(mat,keypoints,mat)
cv::imshow("key_points",mat)
cv::wait_key(-1)
