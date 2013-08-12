require 'minitest/spec'
require 'ropencv'
require 'pp'
include OpenCV

MiniTest::Unit.autorun
describe Cv::Mat do
    before do
    end

    after do
    end

    describe "initialize" do
        it "can be created with the right type and size" do
            mat = cv::Mat.new(3,4,cv::CV_64FC1)
            assert mat
            assert_equal 3, mat.rows
            assert_equal 4, mat.cols
            assert_equal cv::CV_64FC1, mat.type
        end

        it "can be created from a ruby array" do
            mat = cv::Mat.new([1,2,3])
            assert mat
            assert_equal [1,2,3], mat.t.to_a.flatten
        end

        it "can be created from multiple ruby arrays" do
            mat = cv::Mat.new([1,2,3],[3,3,3],[5,6,7])
            assert_equal [[1,2,3],[3,3,3],[5,6,7]], mat.to_a

            mat = cv::Mat.new([[1,2,3],[3,3,3],[5,6,7]])
            assert_equal [[1,2,3],[3,3,3],[5,6,7]], mat.to_a
        end

        it "can be created from std::vector" do
            vec = Std::Vector.new(cv::Point)
            vec << cv::Point.new(2,3)
            vec << cv::Point.new(4,5)
            mat = cv::Mat.new(vec)
            assert_equal [[2,3],[4,5]], mat.to_a

            vec = Std::Vector.new(cv::Point2f)
            vec << cv::Point2f.new(2,3)
            vec << cv::Point2f.new(4,5)
            mat = cv::Mat.new(vec)
            assert_equal [[2,3],[4,5]], mat.to_a
        end
    end

    describe "[]" do
        it "can return a specific value" do
            mat = cv::Mat.new([1,2,3],[3,3,3],[5,6,7])
            assert_equal 6, mat[2,1]
        end
    end

    describe "[]=" do
        it "can cange a specific value" do
            mat = cv::Mat.new([1,2,3],[3,3,3],[5,6,7])
            assert_equal [[1,2,3],[3,3,3],[5,6,7]], mat.to_a
            mat[1,2] = 4
            assert_equal [[1,2,3],[3,3,4],[5,6,7]], mat.to_a
        end
    end
end
