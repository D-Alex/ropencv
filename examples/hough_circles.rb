require 'ropencv'
include OpenCV

img = cv::imread("logo.png")
gray = cv::Mat.new
cv::cvtColor(img,gray,CV_BGR2GRAY)

circles = cv::Mat.new
cv::HoughCircles(gray, circles, CV_HOUGH_GRADIENT, 1, gray.rows/10, 10, 20 );
circles = circles.reshape(1,circles.cols)

circles.each_row do |circle|
    center = cv::Point.new(circle[0].round, circle[1].round)
    radius = circle[2].round
    # draw the circle center
    cv::circle( img, center, 3, cv::Scalar.new(0,255,0),-1,8,0)
    # draw the circle outline
    cv::circle( img, center, radius, cv::Scalar.new(0,0,255),3, 8,0)
end

cv::imshow("Circles",img)
cv::wait_key(-1)
