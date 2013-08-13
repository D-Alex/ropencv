# ffi ruby bindings for OpenCV 
Automated ffi ruby bindings for OpenCV 2.4.4 and higher. For wrapping
all marked OpenCV C++ methods the OpenCV hdr parser is used to parse the OpenCV
header files. From there rbind generates a C interface and ruby classes. The
ruby classes are using the C interface via ffi to give the user the same object
oriented experience on the ruby side like he has on the c++ side.

## State:
- All marked methods in the OpenCV C++ header are wrapped
- Memory management needs review
- Currently, no support for multi threading or GPU

## Supported OpenCV versions:
- 2.4.4
- 2.4.5
- 2.4.6
- 2.4.9

# Installation 
You have to install opencv 2.4.4 - 2.4.6 or 2.4.9 first. Afterward, you can install opencv ruby bindings via:
- gem install ropencv

# Example1

    require 'ropencv'
    include OpenCV

    mat = cv::imread("logo.png")
    cv.blur(mat,mat,cv::Size.new(10,10))

    detector = cv::FeatureDetector::create("SURF")
    keypoints = Std::Vector.new(cv::KeyPoint)
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

    features1 = Std::Vector.new(cv::KeyPoint.new)
    features2 = Std::Vector.new(cv::KeyPoint.new)
    detector.detect mat1,features1
    detector.detect mat2,features2

    descriptor1 = cv::Mat.new
    descriptor2 = cv::Mat.new
    extractor.compute(mat1,features1,descriptor1)
    extractor.compute(mat2,features2,descriptor2)

    matches = Std::Vector(cv::DMatch.new)
    matcher.match(descriptor1,descriptor2,matches)

    result = cv::Mat.new
    cv::draw_matches(mat_last,features1,mat,features2,matches,result)
    cv::imshow("result",result)
    cv::wait_key(-1)
