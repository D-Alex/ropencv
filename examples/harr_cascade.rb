require 'zlib'
require 'ropencv'
include OpenCV

#depends on openCV installation so copied into the directory for easier access
face_cascade_name = File.join(Dir.getwd,'data',"haarcascade_frontalface_alt.xml")
image_name = File.join(Dir.getwd,'data',"jolie.jpeg")


# unpack file
if !File.exist?(face_cascade_name)
    Zlib::GzipReader.open("#{face_cascade_name}.gz") do |gz|
        f = File.open(face_cascade_name,"w")
        f.write gz.read
        f.close
    end
end

frame_gray =  cv::Mat.new
face_cascade = cv::CascadeClassifier.new
puts face_cascade.load(face_cascade_name) ? ' loaded' : 'not loaded'

frame = cv::imread(image_name)
faces = Std::Vector.new(cv::Rect)

cv::cvt_color(frame,frame_gray, cv::COLOR_BGR2GRAY)
cv::equalizeHist( frame_gray, frame_gray );

face_cascade.detect_multi_scale( frame_gray, faces, 1.1, 2, );
puts faces.size

faces.each do |face|
  center = cv::Point.new(face.x + face.width*0.5, face.y + face.height*0.5)
  cv::ellipse( frame, center, cv::Size.new( face.width*0.5, face.height*0.5), 0, 0, 360, cv::Scalar.new( 255, 0, 255 ), 4, 8, 0 );
end
cv::imshow("key_points",frame)
cv::wait_key(-1)
