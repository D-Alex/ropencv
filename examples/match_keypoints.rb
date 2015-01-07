require 'ropencv'
include OpenCV

img1 = cv::imread(File.join('data','tsukuba_l.png'),cv::IMREAD_GRAYSCALE)
img2 = cv::imread(File.join('data','tsukuba_r.png'),cv::IMREAD_GRAYSCALE)
if (img1.empty() || img2.empty())
    puts("Can't read one of the images\n")
    return -1
end

keypoints1=Vector.new(cv::KeyPoint)
keypoints2=Vector.new(cv::KeyPoint)
detector = cv::FastFeatureDetector::create
detector.detect(img1, keypoints1)
detector.detect(img2, keypoints2)

# computing descriptors
extractor = cv::ORB.create
descriptors2=cv::Mat.new(3, 4, cv::CV_64FC1)
descriptors1=cv::Mat.new(3, 4, cv::CV_64FC1)
extractor.compute(img1, keypoints1, descriptors1)
extractor.compute(img2, keypoints2, descriptors2)

# matching descriptors
matcher= cv::BFMatcher::create('BruteForce-L1')
matches= Vector.new(cv::DMatch)
matcher.match(descriptors1, descriptors2, matches)

# drawing the results
img_matches=cv::Mat.new(3, 4, cv::CV_64FC1)
cv::draw_matches(img1, keypoints1, img2, keypoints2, matches, img_matches)
cv::imshow("matches", img_matches)
cv::waitKey(0)
