require 'ropencv'
include OpenCV

frame = cv::imread("sample.jpg")
detector = cv::HOGDescriptor.new
people_detector_vec = cv::HOGDescriptor.get_default_people_detector
default_people_detector_mat = cv::Mat.new(people_detector_vec.size, 1, cv::CV_32FC1, people_detector_vec.data, cv::Mat::AUTO_STEP)
detector.setsvm_detector(default_people_detector_mat)
founds = Std::Vector.new(cv::Rect)
founds_filtered = Std::Vector.new(cv::Rect)
window = Std::Vector::Double.new()

detector.detect_multi_scale(frame, founds, window)

founds.each do |found|

  r = cv::Rect.new(found)
  r.x += (r.width*0.1).to_i
  r.width = (r.width*0.8).to_i
  r.y += (r.height*0.07).to_i
  r.height = (r.height*0.8).to_i
  cv::rectangle(frame, r.tl, r.br, cv::Scalar.new(0,255,0), 3)

end
cv::imshow("hog_descriptor",frame)
cv::wait_key(-1)