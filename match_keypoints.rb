module Imaging

  require 'RMagick'
  include Magick
  require 'ropencv'
  include OpenCV

  # implemented for Ruby on Rails.

  def key_points
    image_path = Rails.root.join('public/g/images')
    image="#{image_path}/bull1.png"
    mat = cv::imread(image)
    detector = cv::FeatureDetector::create('SURF')
    keypoints = Vector.new(cv::KeyPoint)
    detector.detect(mat, keypoints)

    puts "found #{keypoints.size} keypoints"
    puts "first keypoint is at #{keypoints[0].pt.x}/#{keypoints[0].pt.y}"

    cv::draw_keypoints(mat, keypoints, mat)
    cv::imshow('key_points', mat)
    cv::wait_key(10)
  end
  def test_code
    image_path = Rails.root.join('public/g/images')
    match_up("#{image_path}/bull1.png", "#{image_path}/bull2.png")
  end

  def match_up(frame1, frame2)

    img1 = cv::imread(frame1, CV_LOAD_IMAGE_GRAYSCALE)
    img2 = cv::imread(frame2, CV_LOAD_IMAGE_GRAYSCALE)
    if (img1.empty() || img2.empty())
      puts("Can't read one of the images\n")
      return -1
    end
    # detecting keypoints
    #cv::SurfFeatureDetector.detector(400)
    keypoints1=Vector.new(cv::KeyPoint)
    keypoints2=Vector.new(cv::KeyPoint)
    detector = cv::FeatureDetector::create('SURF')
    detector.detect(img1, keypoints1)
    detector.detect(img2, keypoints2)

    # computing descriptors
    extractor=cv::DescriptorExtractor::create('SURF')
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
    cv::drawMatches(img1, keypoints1, img2, keypoints2, matches, img_matches)
    cv::imshow("matches", img_matches)
    cv::waitKey(0)
  end
end
