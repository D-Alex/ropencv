# ffi ruby wrapper for opencv 2.4.4 and 2.4.9
This is the first draft for automated ffi ruby bindings using rbind for opencv 2.4.4 and 2.4.9

# Installation 
You have to install opencv 2.4.4 or 2.4.9 first. After this you can install the opencv ruby bindings via:
- gem install ropencv

# Additional methods 
The following methods not available for python or java are automatically wrapped by this package:
- drawMatches
- findEssentialMat (OpenCV 2.4.9)
- recoverPose (OpenCV 2.4.9)

# Example1

    require 'ropencv'
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

# Example2

    require 'ropencv'
    include OpenCV

    mat1 = cv::imread("image1.png")
    mat2 = cv::imread("image2.png")

    detector = cv::FeatureDetector::create("SURF")
    extractor = cv::DescriptorExtractor::create("SURF")
    matcher = cv::DescriptorMatcher::create("BruteForce")

    features1 = Vector::KeyPoint.new
    features2 = Vector::KeyPoint.new
    detector.detect mat1,features1
    detector.detect mat2,features2

    descriptor1 = cv::Mat.new
    descriptor2 = cv::Mat.new
    extractor.compute(mat1,features1,descriptor1)
    extractor.compute(mat2,features2,descriptor2)

    matches = Vector::DMatch.new
    matcher.match(descriptor1,descriptor2,matches)

    result = cv::Mat.new
    cv::draw_matches(mat_last,features1,mat,features2,matches,result)
    cv::imshow("result",result)
    cv::wait_key(-1)
