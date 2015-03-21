require File.expand_path('../test_helper.rb', __FILE__)

# opencv FaceRecognizer is optional and part of opencv_contrib
if defined? OpenCV::Cv::FaceRecognizer
describe 'cv::createlbph_face_recognizer' do
  describe 'initialization' do
    it 'creates a recognizer instance' do
      recognizer = cv::createlbph_face_recognizer
      assert_kind_of OpenCV::Cv::Ptr::Cv_FaceRecognizer, recognizer
    end
  end

  describe 'prediction' do
    before do
      @recognizer  = cv::createlbph_face_recognizer
      @images_path = File.join(GEM_ROOT, 'examples', 'data')
      @images      = Std::Vector.new(cv::Mat)
      @labels      = [0, 1]

      [ 'sample.jpg', 'jolie.jpeg' ].each do |filename|
        @images << cv::imread(File.join(@images_path, filename), cv::IMREAD_GRAYSCALE)
      end
    end

    it 'can be trained against given labels and images' do
      @recognizer.train(@images, @labels)

      image = cv::imread(File.join(@images_path, 'jolie.jpeg'), cv::IMREAD_GRAYSCALE)
      label = FFI::MemoryPointer.new(:int, 16)
      conf  = FFI::MemoryPointer.new(:float, 32)

      @recognizer.predict(image, label, conf)

      assert_operator label.read_int, :>=, 0
      refute conf.read_float.nan?
    end
  end
end
end
