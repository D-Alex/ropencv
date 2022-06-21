# cv::CamelCase - class or constant
# cv::snake_case - function matched to snakeCase
# http://www.ropencv.aduda.eu/doc/

require 'ropencv'
include OpenCV

rgb_image = cv::imread('grabcut_fgd.jpg')
if rgb_image.data.null?
  raise "Error in reading image file"
end

# resize image for faster analysis
NEW_SIZE_WIDTH = 250
new_size = cv::Size.new(NEW_SIZE_WIDTH, rgb_image.rows * NEW_SIZE_WIDTH / rgb_image.cols)
rgb_image_resized = cv::Mat.new(new_size.width, new_size.height, cv::CV_8UC3)
cv::resize(rgb_image, rgb_image_resized, new_size)

# show resized image
cv::imshow("original image (resized)", rgb_image_resized)
cv::wait_key(-1)

# create mask of all zeros (grayscale)
mask = cv::Mat::zeros(rgb_image_resized.rows, rgb_image_resized.cols, cv::CV_8U)

# define vectors internally used by grabcut algorithm
bgd_model_tmp = cv::Mat::zeros(1, 13*5, cv::CV_64FC1)
fgd_model_tmp = cv::Mat::zeros(1, 13*5, cv::CV_64FC1)

# define rectangle of initial approximation
# everything outside is treated as probable background
PERCENTAGE_CUT_X = 0.10
PERCENTAGE_CUT_Y = 0.05
left_offset = PERCENTAGE_CUT_X * new_size.width
right_offset = (1 - PERCENTAGE_CUT_X) * new_size.width
offset_width = right_offset - left_offset

top_offset = PERCENTAGE_CUT_Y * new_size.height
bottom_offset = (1 - PERCENTAGE_CUT_Y) * new_size.height
offset_height = bottom_offset - top_offset

rectangle = cv::Rect.new(left_offset, top_offset, offset_width, offset_height)
# the same as
# rectangle = cv::Rect.new
# rectangle.set_x left_offset
# rectangle.set_y top_offset
# rectangle.set_width offset_width
# rectangle.set_height offset_height


# run grabcut algorithm
GRAB_CUT_ITERATIONS = 10
cv::grab_cut(rgb_image_resized, mask, rectangle, bgd_model_tmp, fgd_model_tmp, GRAB_CUT_ITERATIONS, cv::GC_INIT_WITH_RECT)


# set mask matrix to binary format 0 for background and 255 for foreground
cmp_elem = cv::Mat.ones(1, 1, cv::CV_8U)*cv::GC_PR_FGD # single element for comparison with Mat should be Mat too (not Scalar)
cv::compare(mask, cmp_elem, mask, cv::CMP_EQ) # 0 - false, 255 - true

# add initial rectangle to the mask (just for demo)
left_up_corner = cv::Point.new(left_offset, top_offset)
right_bottom_corner = cv::Point.new(right_offset, bottom_offset)
cv::rectangle(mask, left_up_corner, right_bottom_corner, cv::Scalar.new(255))

# show mask
cv::imshow("rectangle mask",mask)
cv::wait_key(-1)


# apply mask to image
rgb_masked_image_resized = cv::Mat::zeros(rgb_image_resized.rows, rgb_image_resized.cols, cv::CV_8UC3)
rgb_image_resized.copy_to(rgb_masked_image_resized, mask) # copy only where mask is non-zero

# show final image
cv::imshow("image with foreground only", rgb_masked_image_resized)
cv::wait_key(-1)