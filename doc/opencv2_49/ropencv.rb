require 'ffi'
require File.join(File.dirname(__FILE__),'ropencv_types.rb')


module OpenCV2_49
    # low level accessors the wrapped library 
    module Rbind
        extend FFI::Library

        #load library rbind_opencv
        path = Dir.chdir(File.join(File.dirname(__FILE__)),"..","..","lib" do
            path = Dir.glob("librbind_opencv.*").first
            File.absolute_path(path) if path
        end
        ffi_lib ["rbind_opencv", path]

        #add error checking
        #rbindCreateMatrix -> create_matrix
        def self.attach_function(ruby_name,c_name, args, returns,error_checking=true)
            return super(ruby_name,c_name,args,returns) unless error_checking || !returns

            #add accessor for c function
            super("orig_#{ruby_name}", c_name, args, returns)

            #add ruby method that does error checking after the c
            #function was called
            line_no = __LINE__; str = %Q{
                        def #{ruby_name}(*args, &block)
                            val = orig_#{ruby_name}(*args,&block)
                            if has_error
                                except = RuntimeError.new(last_error)
                                except.set_backtrace(caller)
                                clear_error
                                raise except
                            end
                            val
                        rescue
                            $@.delete_if{|s| %r"#{Regexp.quote(__FILE__)}"o =~ s}
                            Kernel.raise
                        end
            }
            instance_eval(str,__FILE__,line_no)
            self
        end

        # add basic rbind functions which must not get error checking
        attach_function :has_error,:rbindHasError,[],:bool,false
        attach_function :last_error,:rbindGetLastError,[],:string,false
        attach_function :clear_error,:rbindClearError,[],:void,false

        # add accessor for wrapped methods
        
        #methods for cv
        attach_function :cv_border_interpolate,:rbind_cv_borderInterpolate,[:int,:int,:int],:int
        attach_function :cv_copy_make_border,:rbind_cv_copyMakeBorder,[Cv::Mat,Cv::Mat,:int,:int,:int,:int,:int,Cv::Scalar],:void
        attach_function :cv_add,:rbind_cv_add,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_subtract,:rbind_cv_subtract,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_multiply,:rbind_cv_multiply,[Cv::Mat,Cv::Mat,Cv::Mat,:double,:int],:void
        attach_function :cv_divide,:rbind_cv_divide,[Cv::Mat,Cv::Mat,Cv::Mat,:double,:int],:void
        attach_function :cv_divide2,:rbind_cv_divide2,[:double,Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_scale_add,:rbind_cv_scaleAdd,[Cv::Mat,:double,Cv::Mat,Cv::Mat],:void
        attach_function :cv_add_weighted,:rbind_cv_addWeighted,[Cv::Mat,:double,Cv::Mat,:double,:double,Cv::Mat,:int],:void
        attach_function :cv_convert_scale_abs,:rbind_cv_convertScaleAbs,[Cv::Mat,Cv::Mat,:double,:double],:void
        attach_function :cv_lut,:rbind_cv_LUT,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_sum_elems,:rbind_cv_sumElems,[Cv::Mat],Cv::Scalar
        attach_function :cv_count_non_zero,:rbind_cv_countNonZero,[Cv::Mat],:int
        attach_function :cv_find_non_zero,:rbind_cv_findNonZero,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_mean,:rbind_cv_mean,[Cv::Mat,Cv::Mat],Cv::Scalar
        attach_function :cv_mean_std_dev,:rbind_cv_meanStdDev,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_norm,:rbind_cv_norm,[Cv::Mat,:int,Cv::Mat],:double
        attach_function :cv_norm2,:rbind_cv_norm2,[Cv::Mat,Cv::Mat,:int,Cv::Mat],:double
        attach_function :cv_psnr,:rbind_cv_PSNR,[Cv::Mat,Cv::Mat],:double
        attach_function :cv_batch_distance,:rbind_cv_batchDistance,[Cv::Mat,Cv::Mat,Cv::Mat,:int,Cv::Mat,:int,:int,Cv::Mat,:int,:bool],:void
        attach_function :cv_normalize,:rbind_cv_normalize,[Cv::Mat,Cv::Mat,:double,:double,:int,:int,Cv::Mat],:void
        attach_function :cv_min_max_loc,:rbind_cv_minMaxLoc,[Cv::Mat,:pointer,:pointer,Cv::Point,Cv::Point,Cv::Mat],:void
        attach_function :cv_reduce,:rbind_cv_reduce,[Cv::Mat,Cv::Mat,:int,:int,:int],:void
        attach_function :cv_merge,:rbind_cv_merge,[VectorMat,Cv::Mat],:void
        attach_function :cv_split,:rbind_cv_split,[Cv::Mat,VectorMat],:void
        attach_function :cv_mix_channels,:rbind_cv_mixChannels,[VectorMat,VectorMat,VectorInt],:void
        attach_function :cv_extract_channel,:rbind_cv_extractChannel,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_insert_channel,:rbind_cv_insertChannel,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_flip,:rbind_cv_flip,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_repeat,:rbind_cv_repeat,[Cv::Mat,:int,:int,Cv::Mat],:void
        attach_function :cv_hconcat,:rbind_cv_hconcat,[VectorMat,Cv::Mat],:void
        attach_function :cv_vconcat,:rbind_cv_vconcat,[VectorMat,Cv::Mat],:void
        attach_function :cv_bitwise_and,:rbind_cv_bitwise_and,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_bitwise_or,:rbind_cv_bitwise_or,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_bitwise_xor,:rbind_cv_bitwise_xor,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_bitwise_not,:rbind_cv_bitwise_not,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_absdiff,:rbind_cv_absdiff,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_in_range,:rbind_cv_inRange,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_compare,:rbind_cv_compare,[Cv::Mat,Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_min,:rbind_cv_min,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_max,:rbind_cv_max,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_sqrt,:rbind_cv_sqrt,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_pow,:rbind_cv_pow,[Cv::Mat,:double,Cv::Mat],:void
        attach_function :cv_exp,:rbind_cv_exp,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_log,:rbind_cv_log,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_polar_to_cart,:rbind_cv_polarToCart,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:bool],:void
        attach_function :cv_cart_to_polar,:rbind_cv_cartToPolar,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:bool],:void
        attach_function :cv_phase,:rbind_cv_phase,[Cv::Mat,Cv::Mat,Cv::Mat,:bool],:void
        attach_function :cv_magnitude,:rbind_cv_magnitude,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_check_range,:rbind_cv_checkRange,[Cv::Mat,:bool,Cv::Point,:double,:double],:bool
        attach_function :cv_patch_na_ns,:rbind_cv_patchNaNs,[Cv::Mat,:double],:void
        attach_function :cv_gemm,:rbind_cv_gemm,[Cv::Mat,Cv::Mat,:double,Cv::Mat,:double,Cv::Mat,:int],:void
        attach_function :cv_mul_transposed,:rbind_cv_mulTransposed,[Cv::Mat,Cv::Mat,:bool,Cv::Mat,:double,:int],:void
        attach_function :cv_transpose,:rbind_cv_transpose,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_transform,:rbind_cv_transform,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_perspective_transform,:rbind_cv_perspectiveTransform,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_complete_symm,:rbind_cv_completeSymm,[Cv::Mat,:bool],:void
        attach_function :cv_set_identity,:rbind_cv_setIdentity,[Cv::Mat,Cv::Scalar],:void
        attach_function :cv_determinant,:rbind_cv_determinant,[Cv::Mat],:double
        attach_function :cv_trace,:rbind_cv_trace,[Cv::Mat],Cv::Scalar
        attach_function :cv_invert,:rbind_cv_invert,[Cv::Mat,Cv::Mat,:int],:double
        attach_function :cv_solve,:rbind_cv_solve,[Cv::Mat,Cv::Mat,Cv::Mat,:int],:bool
        attach_function :cv_sort,:rbind_cv_sort,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_sort_idx,:rbind_cv_sortIdx,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_solve_cubic,:rbind_cv_solveCubic,[Cv::Mat,Cv::Mat],:int
        attach_function :cv_solve_poly,:rbind_cv_solvePoly,[Cv::Mat,Cv::Mat,:int],:double
        attach_function :cv_eigen,:rbind_cv_eigen,[Cv::Mat,Cv::Mat,Cv::Mat],:bool
        attach_function :cv_calc_covar_matrix,:rbind_cv_calcCovarMatrix,[Cv::Mat,Cv::Mat,Cv::Mat,:int,:int],:void
        attach_function :cv_pca_compute,:rbind_cv_PCACompute,[Cv::Mat,Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_pca_compute2,:rbind_cv_PCACompute2,[Cv::Mat,Cv::Mat,Cv::Mat,:double],:void
        attach_function :cv_pca_project,:rbind_cv_PCAProject,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_pca_back_project,:rbind_cv_PCABackProject,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_sv_decomp,:rbind_cv_SVDecomp,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_sv_back_subst,:rbind_cv_SVBackSubst,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_mahalanobis,:rbind_cv_Mahalanobis,[Cv::Mat,Cv::Mat,Cv::Mat],:double
        attach_function :cv_dft,:rbind_cv_dft,[Cv::Mat,Cv::Mat,:int,:int],:void
        attach_function :cv_idft,:rbind_cv_idft,[Cv::Mat,Cv::Mat,:int,:int],:void
        attach_function :cv_dct,:rbind_cv_dct,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_idct,:rbind_cv_idct,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_mul_spectrums,:rbind_cv_mulSpectrums,[Cv::Mat,Cv::Mat,Cv::Mat,:int,:bool],:void
        attach_function :cv_get_optimaldft_size,:rbind_cv_getOptimalDFTSize,[:int],:int
        attach_function :cv_kmeans,:rbind_cv_kmeans,[Cv::Mat,:int,Cv::Mat,Cv::TermCriteria,:int,:int,Cv::Mat],:double
        attach_function :cv_randu,:rbind_cv_randu,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_randn,:rbind_cv_randn,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_rand_shuffle,:rbind_cv_randShuffle,[Cv::Mat,:double,Cv::RNG],:void
        attach_function :cv_line,:rbind_cv_line,[Cv::Mat,Cv::Point,Cv::Point,Cv::Scalar,:int,:int,:int],:void
        attach_function :cv_rectangle,:rbind_cv_rectangle,[Cv::Mat,Cv::Point,Cv::Point,Cv::Scalar,:int,:int,:int],:void
        attach_function :cv_circle,:rbind_cv_circle,[Cv::Mat,Cv::Point,:int,Cv::Scalar,:int,:int,:int],:void
        attach_function :cv_ellipse,:rbind_cv_ellipse,[Cv::Mat,Cv::Point,Cv::Size,:double,:double,:double,Cv::Scalar,:int,:int,:int],:void
        attach_function :cv_ellipse2,:rbind_cv_ellipse2,[Cv::Mat,Cv::RotatedRect,Cv::Scalar,:int,:int],:void
        attach_function :cv_fill_convex_poly,:rbind_cv_fillConvexPoly,[Cv::Mat,Cv::Mat,Cv::Scalar,:int,:int],:void
        attach_function :cv_fill_poly,:rbind_cv_fillPoly,[Cv::Mat,VectorMat,Cv::Scalar,:int,:int,Cv::Point],:void
        attach_function :cv_polylines,:rbind_cv_polylines,[Cv::Mat,VectorMat,:bool,Cv::Scalar,:int,:int,:int],:void
        attach_function :cv_draw_contours,:rbind_cv_drawContours,[Cv::Mat,VectorMat,:int,Cv::Scalar,:int,:int,Cv::Mat,:int,Cv::Point],:void
        attach_function :cv_clip_line,:rbind_cv_clipLine,[Cv::Rect,Cv::Point,Cv::Point],:bool
        attach_function :cv_ellipse2_poly,:rbind_cv_ellipse2Poly,[Cv::Point,Cv::Size,:int,:int,:int,:int,VectorPoint],:void
        attach_function :cv_put_text,:rbind_cv_putText,[Cv::Mat,Cv::String,Cv::Point,:int,:double,Cv::Scalar,:int,:int,:bool],:void
        attach_function :cv_get_text_size,:rbind_cv_getTextSize,[Cv::String,:int,:double,:int,:pointer],Cv::Size
        attach_function :cv_get_build_information,:rbind_cv_getBuildInformation,[],Cv::String
        attach_function :cv_get_tick_count,:rbind_cv_getTickCount,[],:int64
        attach_function :cv_get_tick_frequency,:rbind_cv_getTickFrequency,[],:double
        attach_function :cv_getcpu_tick_count,:rbind_cv_getCPUTickCount,[],:int64
        attach_function :cv_check_hardware_support,:rbind_cv_checkHardwareSupport,[:int],:bool
        attach_function :cv_get_number_ofcp_us,:rbind_cv_getNumberOfCPUs,[],:int
        attach_function :cv_set_use_optimized,:rbind_cv_setUseOptimized,[:bool],:void
        attach_function :cv_use_optimized,:rbind_cv_useOptimized,[],:bool
        attach_function :cv_cube_root,:rbind_cv_cubeRoot,[:float],:float
        attach_function :cv_fast_atan2,:rbind_cv_fastAtan2,[:float,:float],:float
        attach_function :cv_chamer_matching,:rbind_cv_chamerMatching,[Cv::Mat,Cv::Mat,VectorVectorPoint,VectorFloat,:double,:int,:double,:int,:int,:int,:double,:double,:double,:double],:int
        attach_function :cv_create_eigen_face_recognizer,:rbind_cv_createEigenFaceRecognizer,[:int,:double],PtrFaceRecognizer
        attach_function :cv_create_fisher_face_recognizer,:rbind_cv_createFisherFaceRecognizer,[:int,:double],PtrFaceRecognizer
        attach_function :cv_createlbph_face_recognizer,:rbind_cv_createLBPHFaceRecognizer,[:int,:int,:int,:int,:double],PtrFaceRecognizer
        attach_function :cv_apply_color_map,:rbind_cv_applyColorMap,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_rodrigues,:rbind_cv_Rodrigues,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_find_homography,:rbind_cv_findHomography,[Cv::Mat,Cv::Mat,:int,:double,Cv::Mat],Cv::Mat
        attach_function :cv_rq_decomp_3x3,:rbind_cv_RQDecomp3x3,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],Cv::Vec3d
        attach_function :cv_decompose_projection_matrix,:rbind_cv_decomposeProjectionMatrix,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_mat_mul_deriv,:rbind_cv_matMulDeriv,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_composert,:rbind_cv_composeRT,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_project_points,:rbind_cv_projectPoints,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:double],:void
        attach_function :cv_solve_pnp,:rbind_cv_solvePnP,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:bool,:int],:bool
        attach_function :cv_solve_pnp_ransac,:rbind_cv_solvePnPRansac,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:bool,:int,:float,:int,Cv::Mat,:int],:void
        attach_function :cv_init_camera_matrix2d,:rbind_cv_initCameraMatrix2D,[VectorMat,VectorMat,Cv::Size,:double],Cv::Mat
        attach_function :cv_find_chessboard_corners,:rbind_cv_findChessboardCorners,[Cv::Mat,Cv::Size,Cv::Mat,:int],:bool
        attach_function :cv_draw_chessboard_corners,:rbind_cv_drawChessboardCorners,[Cv::Mat,Cv::Size,Cv::Mat,:bool],:void
        attach_function :cv_find_circles_grid,:rbind_cv_findCirclesGrid,[Cv::Mat,Cv::Size,Cv::Mat,:int,PtrFeatureDetector],:bool
        attach_function :cv_calibrate_camera,:rbind_cv_calibrateCamera,[VectorMat,VectorMat,Cv::Size,Cv::Mat,Cv::Mat,VectorMat,VectorMat,:int,Cv::TermCriteria],:double
        attach_function :cv_calibration_matrix_values,:rbind_cv_calibrationMatrixValues,[Cv::Mat,Cv::Size,:double,:double,:double,:double,:double,Cv::Point2d,:double],:void
        attach_function :cv_stereo_calibrate,:rbind_cv_stereoCalibrate,[VectorMat,VectorMat,VectorMat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Size,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::TermCriteria,:int],:double
        attach_function :cv_stereo_rectify,:rbind_cv_stereoRectify,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Size,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:int,:double,Cv::Size,Cv::Rect,Cv::Rect],:void
        attach_function :cv_stereo_rectify_uncalibrated,:rbind_cv_stereoRectifyUncalibrated,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Size,Cv::Mat,Cv::Mat,:double],:bool
        attach_function :cv_rectify3_collinear,:rbind_cv_rectify3Collinear,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,VectorMat,VectorMat,Cv::Size,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:double,Cv::Size,Cv::Rect,Cv::Rect,:int],:float
        attach_function :cv_get_optimal_new_camera_matrix,:rbind_cv_getOptimalNewCameraMatrix,[Cv::Mat,Cv::Mat,Cv::Size,:double,Cv::Size,Cv::Rect,:bool],Cv::Mat
        attach_function :cv_convert_points_to_homogeneous,:rbind_cv_convertPointsToHomogeneous,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_convert_points_from_homogeneous,:rbind_cv_convertPointsFromHomogeneous,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_find_fundamental_mat,:rbind_cv_findFundamentalMat,[Cv::Mat,Cv::Mat,:int,:double,:double,Cv::Mat],Cv::Mat
        attach_function :cv_triangulate_points,:rbind_cv_triangulatePoints,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_correct_matches,:rbind_cv_correctMatches,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_filter_speckles,:rbind_cv_filterSpeckles,[Cv::Mat,:double,:int,:double,Cv::Mat],:void
        attach_function :cv_get_valid_disparityroi,:rbind_cv_getValidDisparityROI,[Cv::Rect,Cv::Rect,:int,:int,:int],Cv::Rect
        attach_function :cv_validate_disparity,:rbind_cv_validateDisparity,[Cv::Mat,Cv::Mat,:int,:int,:int],:void
        attach_function :cv_reproject_image_to3d,:rbind_cv_reprojectImageTo3D,[Cv::Mat,Cv::Mat,Cv::Mat,:bool,:int],:void
        attach_function :cv_estimate_affine3d,:rbind_cv_estimateAffine3D,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:double,:double],:int
        attach_function :cv_create_stereobm,:rbind_cv_createStereoBM,[:int,:int],PtrStereoBM
        attach_function :cv_create_stereosgbm,:rbind_cv_createStereoSGBM,[:int,:int,:int,:int,:int,:int,:int,:int,:int,:int,:int],PtrStereoSGBM
        attach_function :cv_draw_keypoints,:rbind_cv_drawKeypoints,[Cv::Mat,VectorKeyPoint,Cv::Mat,Cv::Scalar,:int],:void
        attach_function :cv_named_window,:rbind_cv_namedWindow,[Cv::String,:int],:void
        attach_function :cv_destroy_window,:rbind_cv_destroyWindow,[Cv::String],:void
        attach_function :cv_destroy_all_windows,:rbind_cv_destroyAllWindows,[],:void
        attach_function :cv_start_window_thread,:rbind_cv_startWindowThread,[],:int
        attach_function :cv_wait_key,:rbind_cv_waitKey,[:int],:int
        attach_function :cv_imshow,:rbind_cv_imshow,[Cv::String,Cv::Mat],:void
        attach_function :cv_resize_window,:rbind_cv_resizeWindow,[Cv::String,:int,:int],:void
        attach_function :cv_move_window,:rbind_cv_moveWindow,[Cv::String,:int,:int],:void
        attach_function :cv_set_window_property,:rbind_cv_setWindowProperty,[Cv::String,:int,:double],:void
        attach_function :cv_get_window_property,:rbind_cv_getWindowProperty,[Cv::String,:int],:double
        attach_function :cv_get_trackbar_pos,:rbind_cv_getTrackbarPos,[Cv::String,Cv::String],:int
        attach_function :cv_set_trackbar_pos,:rbind_cv_setTrackbarPos,[Cv::String,Cv::String,:int],:void
        attach_function :cv_imread,:rbind_cv_imread,[Cv::String,:int],Cv::Mat
        attach_function :cv_imwrite,:rbind_cv_imwrite,[Cv::String,Cv::Mat,VectorInt],:bool
        attach_function :cv_imdecode,:rbind_cv_imdecode,[Cv::Mat,:int],Cv::Mat
        attach_function :cv_imencode,:rbind_cv_imencode,[Cv::String,Cv::Mat,VectorUchar,VectorInt],:bool
        attach_function :cv_get_gaussian_kernel,:rbind_cv_getGaussianKernel,[:int,:double,:int],Cv::Mat
        attach_function :cv_get_deriv_kernels,:rbind_cv_getDerivKernels,[Cv::Mat,Cv::Mat,:int,:int,:int,:bool,:int],:void
        attach_function :cv_get_gabor_kernel,:rbind_cv_getGaborKernel,[Cv::Size,:double,:double,:double,:double,:double,:int],Cv::Mat
        attach_function :cv_get_structuring_element,:rbind_cv_getStructuringElement,[:int,Cv::Size,Cv::Point],Cv::Mat
        attach_function :cv_median_blur,:rbind_cv_medianBlur,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_gaussian_blur,:rbind_cv_GaussianBlur,[Cv::Mat,Cv::Mat,Cv::Size,:double,:double,:int],:void
        attach_function :cv_bilateral_filter,:rbind_cv_bilateralFilter,[Cv::Mat,Cv::Mat,:int,:double,:double,:int],:void
        attach_function :cv_box_filter,:rbind_cv_boxFilter,[Cv::Mat,Cv::Mat,:int,Cv::Size,Cv::Point,:bool,:int],:void
        attach_function :cv_blur,:rbind_cv_blur,[Cv::Mat,Cv::Mat,Cv::Size,Cv::Point,:int],:void
        attach_function :cv_filter2d,:rbind_cv_filter2D,[Cv::Mat,Cv::Mat,:int,Cv::Mat,Cv::Point,:double,:int],:void
        attach_function :cv_sep_filter2d,:rbind_cv_sepFilter2D,[Cv::Mat,Cv::Mat,:int,Cv::Mat,Cv::Mat,Cv::Point,:double,:int],:void
        attach_function :cv_sobel,:rbind_cv_Sobel,[Cv::Mat,Cv::Mat,:int,:int,:int,:int,:double,:double,:int],:void
        attach_function :cv_scharr,:rbind_cv_Scharr,[Cv::Mat,Cv::Mat,:int,:int,:int,:double,:double,:int],:void
        attach_function :cv_laplacian,:rbind_cv_Laplacian,[Cv::Mat,Cv::Mat,:int,:int,:double,:double,:int],:void
        attach_function :cv_canny,:rbind_cv_Canny,[Cv::Mat,Cv::Mat,:double,:double,:int,:bool],:void
        attach_function :cv_corner_min_eigen_val,:rbind_cv_cornerMinEigenVal,[Cv::Mat,Cv::Mat,:int,:int,:int],:void
        attach_function :cv_corner_harris,:rbind_cv_cornerHarris,[Cv::Mat,Cv::Mat,:int,:int,:double,:int],:void
        attach_function :cv_corner_eigen_vals_and_vecs,:rbind_cv_cornerEigenValsAndVecs,[Cv::Mat,Cv::Mat,:int,:int,:int],:void
        attach_function :cv_pre_corner_detect,:rbind_cv_preCornerDetect,[Cv::Mat,Cv::Mat,:int,:int],:void
        attach_function :cv_corner_sub_pix,:rbind_cv_cornerSubPix,[Cv::Mat,Cv::Mat,Cv::Size,Cv::Size,Cv::TermCriteria],:void
        attach_function :cv_good_features_to_track,:rbind_cv_goodFeaturesToTrack,[Cv::Mat,Cv::Mat,:int,:double,:double,Cv::Mat,:int,:bool,:double],:void
        attach_function :cv_hough_lines,:rbind_cv_HoughLines,[Cv::Mat,Cv::Mat,:double,:double,:int,:double,:double],:void
        attach_function :cv_hough_linesp,:rbind_cv_HoughLinesP,[Cv::Mat,Cv::Mat,:double,:double,:int,:double,:double],:void
        attach_function :cv_hough_circles,:rbind_cv_HoughCircles,[Cv::Mat,Cv::Mat,:int,:double,:double,:double,:double,:int,:int],:void
        attach_function :cv_erode,:rbind_cv_erode,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Point,:int,:int,Cv::Scalar],:void
        attach_function :cv_dilate,:rbind_cv_dilate,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Point,:int,:int,Cv::Scalar],:void
        attach_function :cv_morphology_ex,:rbind_cv_morphologyEx,[Cv::Mat,Cv::Mat,:int,Cv::Mat,Cv::Point,:int,:int,Cv::Scalar],:void
        attach_function :cv_resize,:rbind_cv_resize,[Cv::Mat,Cv::Mat,Cv::Size,:double,:double,:int],:void
        attach_function :cv_warp_affine,:rbind_cv_warpAffine,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Size,:int,:int,Cv::Scalar],:void
        attach_function :cv_warp_perspective,:rbind_cv_warpPerspective,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Size,:int,:int,Cv::Scalar],:void
        attach_function :cv_remap,:rbind_cv_remap,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:int,:int,Cv::Scalar],:void
        attach_function :cv_convert_maps,:rbind_cv_convertMaps,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:int,:bool],:void
        attach_function :cv_get_rotation_matrix2d,:rbind_cv_getRotationMatrix2D,[Cv::Point2f,:double,:double],Cv::Mat
        attach_function :cv_invert_affine_transform,:rbind_cv_invertAffineTransform,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_get_perspective_transform,:rbind_cv_getPerspectiveTransform,[Cv::Mat,Cv::Mat],Cv::Mat
        attach_function :cv_get_affine_transform,:rbind_cv_getAffineTransform,[Cv::Mat,Cv::Mat],Cv::Mat
        attach_function :cv_get_rect_sub_pix,:rbind_cv_getRectSubPix,[Cv::Mat,Cv::Size,Cv::Point2f,Cv::Mat,:int],:void
        attach_function :cv_integral,:rbind_cv_integral,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_integral2,:rbind_cv_integral2,[Cv::Mat,Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_integral3,:rbind_cv_integral3,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_accumulate,:rbind_cv_accumulate,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_accumulate_square,:rbind_cv_accumulateSquare,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_accumulate_product,:rbind_cv_accumulateProduct,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_accumulate_weighted,:rbind_cv_accumulateWeighted,[Cv::Mat,Cv::Mat,:double,Cv::Mat],:void
        attach_function :cv_phase_correlate,:rbind_cv_phaseCorrelate,[Cv::Mat,Cv::Mat,Cv::Mat,:pointer],Cv::Point2d
        attach_function :cv_create_hanning_window,:rbind_cv_createHanningWindow,[Cv::Mat,Cv::Size,:int],:void
        attach_function :cv_threshold,:rbind_cv_threshold,[Cv::Mat,Cv::Mat,:double,:double,:int],:double
        attach_function :cv_adaptive_threshold,:rbind_cv_adaptiveThreshold,[Cv::Mat,Cv::Mat,:double,:int,:int,:int,:double],:void
        attach_function :cv_pyr_down,:rbind_cv_pyrDown,[Cv::Mat,Cv::Mat,Cv::Size,:int],:void
        attach_function :cv_pyr_up,:rbind_cv_pyrUp,[Cv::Mat,Cv::Mat,Cv::Size,:int],:void
        attach_function :cv_undistort,:rbind_cv_undistort,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_init_undistort_rectify_map,:rbind_cv_initUndistortRectifyMap,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Size,:int,Cv::Mat,Cv::Mat],:void
        attach_function :cv_init_wide_angle_proj_map,:rbind_cv_initWideAngleProjMap,[Cv::Mat,Cv::Mat,Cv::Size,:int,:int,Cv::Mat,Cv::Mat,:int,:double],:float
        attach_function :cv_get_default_new_camera_matrix,:rbind_cv_getDefaultNewCameraMatrix,[Cv::Mat,Cv::Size,:bool],Cv::Mat
        attach_function :cv_undistort_points,:rbind_cv_undistortPoints,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_calc_hist,:rbind_cv_calcHist,[VectorMat,VectorInt,Cv::Mat,Cv::Mat,VectorInt,VectorFloat,:bool],:void
        attach_function :cv_calc_back_project,:rbind_cv_calcBackProject,[VectorMat,VectorInt,Cv::Mat,Cv::Mat,VectorFloat,:double],:void
        attach_function :cv_compare_hist,:rbind_cv_compareHist,[Cv::Mat,Cv::Mat,:int],:double
        attach_function :cv_equalize_hist,:rbind_cv_equalizeHist,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_watershed,:rbind_cv_watershed,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_pyr_mean_shift_filtering,:rbind_cv_pyrMeanShiftFiltering,[Cv::Mat,Cv::Mat,:double,:double,:int,Cv::TermCriteria],:void
        attach_function :cv_grab_cut,:rbind_cv_grabCut,[Cv::Mat,Cv::Mat,Cv::Rect,Cv::Mat,Cv::Mat,:int,:int],:void
        attach_function :cv_distance_transform_with_labels,:rbind_cv_distanceTransformWithLabels,[Cv::Mat,Cv::Mat,Cv::Mat,:int,:int,:int],:void
        attach_function :cv_distance_transform,:rbind_cv_distanceTransform,[Cv::Mat,Cv::Mat,:int,:int],:void
        attach_function :cv_flood_fill,:rbind_cv_floodFill,[Cv::Mat,Cv::Mat,Cv::Point,Cv::Scalar,Cv::Rect,Cv::Scalar,Cv::Scalar,:int],:int
        attach_function :cv_cvt_color,:rbind_cv_cvtColor,[Cv::Mat,Cv::Mat,:int,:int],:void
        attach_function :cv_demosaicing,:rbind_cv_demosaicing,[Cv::Mat,Cv::Mat,:int,:int],:void
        attach_function :cv_moments,:rbind_cv_moments,[Cv::Mat,:bool],Cv::Moments
        attach_function :cv_hu_moments,:rbind_cv_HuMoments,[Cv::Moments,Cv::Mat],:void
        attach_function :cv_match_template,:rbind_cv_matchTemplate,[Cv::Mat,Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_connected_components,:rbind_cv_connectedComponents,[Cv::Mat,Cv::Mat,:int,:int],:int
        attach_function :cv_connected_components_with_stats,:rbind_cv_connectedComponentsWithStats,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:int,:int],:int
        attach_function :cv_find_contours,:rbind_cv_findContours,[Cv::Mat,VectorMat,Cv::Mat,:int,:int,Cv::Point],:void
        attach_function :cv_approx_polydp,:rbind_cv_approxPolyDP,[Cv::Mat,Cv::Mat,:double,:bool],:void
        attach_function :cv_arc_length,:rbind_cv_arcLength,[Cv::Mat,:bool],:double
        attach_function :cv_bounding_rect,:rbind_cv_boundingRect,[Cv::Mat],Cv::Rect
        attach_function :cv_contour_area,:rbind_cv_contourArea,[Cv::Mat,:bool],:double
        attach_function :cv_min_area_rect,:rbind_cv_minAreaRect,[Cv::Mat],Cv::RotatedRect
        attach_function :cv_min_enclosing_circle,:rbind_cv_minEnclosingCircle,[Cv::Mat,Cv::Point2f,:float],:void
        attach_function :cv_match_shapes,:rbind_cv_matchShapes,[Cv::Mat,Cv::Mat,:int,:double],:double
        attach_function :cv_convex_hull,:rbind_cv_convexHull,[Cv::Mat,Cv::Mat,:bool,:bool],:void
        attach_function :cv_convexity_defects,:rbind_cv_convexityDefects,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_is_contour_convex,:rbind_cv_isContourConvex,[Cv::Mat],:bool
        attach_function :cv_intersect_convex_convex,:rbind_cv_intersectConvexConvex,[Cv::Mat,Cv::Mat,Cv::Mat,:bool],:float
        attach_function :cv_fit_ellipse,:rbind_cv_fitEllipse,[Cv::Mat],Cv::RotatedRect
        attach_function :cv_fit_line,:rbind_cv_fitLine,[Cv::Mat,Cv::Mat,:int,:double,:double,:double],:void
        attach_function :cv_point_polygon_test,:rbind_cv_pointPolygonTest,[Cv::Mat,Cv::Point2f,:bool],:double
        attach_function :cv_group_rectangles,:rbind_cv_groupRectangles,[VectorRect,VectorInt,:int,:double],:void
        attach_function :cv_find_data_matrix,:rbind_cv_findDataMatrix,[Cv::Mat,VectorString,Cv::Mat,VectorMat],:void
        attach_function :cv_draw_data_matrix_codes,:rbind_cv_drawDataMatrixCodes,[Cv::Mat,VectorString,Cv::Mat],:void
        attach_function :cv_inpaint,:rbind_cv_inpaint,[Cv::Mat,Cv::Mat,Cv::Mat,:double,:int],:void
        attach_function :cv_fast_nl_means_denoising,:rbind_cv_fastNlMeansDenoising,[Cv::Mat,Cv::Mat,:float,:int,:int],:void
        attach_function :cv_fast_nl_means_denoising_colored,:rbind_cv_fastNlMeansDenoisingColored,[Cv::Mat,Cv::Mat,:float,:float,:int,:int],:void
        attach_function :cv_fast_nl_means_denoising_multi,:rbind_cv_fastNlMeansDenoisingMulti,[VectorMat,Cv::Mat,:int,:int,:float,:int,:int],:void
        attach_function :cv_fast_nl_means_denoising_colored_multi,:rbind_cv_fastNlMeansDenoisingColoredMulti,[VectorMat,Cv::Mat,:int,:int,:float,:float,:int,:int],:void
        attach_function :cv_draw_matches,:rbind_cv_drawMatches,[Cv::Mat,VectorKeyPoint,Cv::Mat,VectorKeyPoint,VectorDMatch,Cv::Mat,Cv::Scalar,Cv::Scalar,VectorChar,:int],:void
        attach_function :cv_morphology_default_border_value,:rbind_cv_morphologyDefaultBorderValue,[],Cv::Scalar
        attach_function :cv_find_essential_mat,:rbind_cv_findEssentialMat,[Cv::Mat,Cv::Mat,:double,Cv::Point2d,:int,:double,:double,Cv::Mat],Cv::Mat
        attach_function :cv_recover_pose,:rbind_cv_recoverPose,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:double,Cv::Point2d,Cv::Mat],:int
        
        #methods for cv::InputArray
        
        #methods for cv::Range
        attach_function :delete_cv_range,:rbind_delete_cv_Range,[Cv::Range],:void
        attach_function :delete_cv_range_struct,:rbind_delete_cv_Range,[Cv::RangeStruct],:void
        attach_function :cv_range_get_start,:rbind_cv_Range_get_start,[Cv::Range],:int
        attach_function :cv_range_set_start,:rbind_cv_Range_set_start,[Cv::Range,:int],:void
        attach_function :cv_range_get_end,:rbind_cv_Range_get_end,[Cv::Range],:int
        attach_function :cv_range_set_end,:rbind_cv_Range_set_end,[Cv::Range,:int],:void
        attach_function :cv_range_range,:rbind_cv_Range_Range,[:int,:int],Cv::Range
        attach_function :cv_range_size,:rbind_cv_Range_size,[Cv::Range],:int
        attach_function :cv_range_size2,:rbind_cv_Range_size2,[Cv::Range],:bool
        attach_function :cv_range_all,:rbind_cv_Range_all,[Cv::Range],Cv::Range
        attach_function :cv_range_all2,:rbind_cv_Range_all2,[Cv::Range],Cv::Range
        attach_function :cv_range_operator_equal,:rbind_cv_Range_operator_equal,[Cv::Range,Cv::Range],:bool
        attach_function :cv_range_operator_unequal,:rbind_cv_Range_operator_unequal,[Cv::Range,Cv::Range],:bool
        attach_function :cv_range_operator_and,:rbind_cv_Range_operator_and,[Cv::Range,Cv::Range],Cv::Range
        attach_function :cv_range_operator_plus,:rbind_cv_Range_operator_plus,[Cv::Range,:int],Cv::Range
        attach_function :cv_range_operator_minus,:rbind_cv_Range_operator_minus,[Cv::Range,:int],Cv::Range
        
        #methods for cv::String
        attach_function :delete_cv_string,:rbind_delete_cv_String,[Cv::String],:void
        attach_function :delete_cv_string_struct,:rbind_delete_cv_String,[Cv::StringStruct],:void
        attach_function :cv_string_string,:rbind_cv_String_String,[],Cv::String
        attach_function :cv_string_string2,:rbind_cv_String_String2,[:string,:size_t],Cv::String
        attach_function :cv_string_string3,:rbind_cv_String_String3,[Cv::String],Cv::String
        attach_function :cv_string_size,:rbind_cv_String_size,[Cv::String],:size_t
        attach_function :cv_string_length,:rbind_cv_String_length,[Cv::String],:size_t
        attach_function :cv_string_operator_array,:rbind_cv_String_operator_array,[Cv::String,:size_t],:char
        attach_function :cv_stringc_str,:rbind_cv_String_c_str,[Cv::String],:string
        attach_function :cv_string_empty,:rbind_cv_String_empty,[Cv::String],:bool
        attach_function :cv_string_clear,:rbind_cv_String_clear,[Cv::String],:void
        attach_function :cv_string_compare,:rbind_cv_String_compare,[Cv::String,Cv::String],:int
        attach_function :cv_string_swap,:rbind_cv_String_swap,[Cv::String,Cv::String],:void
        
        #methods for cv::Scalar
        attach_function :delete_cv_scalar,:rbind_delete_cv_Scalar,[Cv::Scalar],:void
        attach_function :delete_cv_scalar_struct,:rbind_delete_cv_Scalar,[Cv::ScalarStruct],:void
        attach_function :cv_scalar_get_val,:rbind_cv_Scalar_get_val,[Cv::Scalar],:pointer
        attach_function :cv_scalar_scalar,:rbind_cv_Scalar_Scalar,[],Cv::Scalar
        attach_function :cv_scalar_scalar2,:rbind_cv_Scalar_Scalar2,[:double],Cv::Scalar
        attach_function :cv_scalar_scalar3,:rbind_cv_Scalar_Scalar3,[:double,:double,:double,:double],Cv::Scalar
        attach_function :cv_scalar_all,:rbind_cv_Scalar_all,[:double],Cv::Scalar
        attach_function :cv_scalar_mul,:rbind_cv_Scalar_mul,[Cv::Scalar,Cv::Scalar,:double],Cv::Scalar
        attach_function :cv_scalar_conj,:rbind_cv_Scalar_conj,[Cv::Scalar],Cv::Scalar
        attach_function :cv_scalar_is_real,:rbind_cv_Scalar_isReal,[Cv::Scalar],:bool
        attach_function :cv_scalar_operator_array,:rbind_cv_Scalar_operator_array,[Cv::Scalar,:size_t],:double
        
        #methods for cv::Point
        attach_function :delete_cv_point,:rbind_delete_cv_Point,[Cv::Point],:void
        attach_function :delete_cv_point_struct,:rbind_delete_cv_Point,[Cv::PointStruct],:void
        attach_function :cv_point_getx,:rbind_cv_Point_get_x,[Cv::Point],:int
        attach_function :cv_point_setx,:rbind_cv_Point_set_x,[Cv::Point,:int],:void
        attach_function :cv_point_gety,:rbind_cv_Point_get_y,[Cv::Point],:int
        attach_function :cv_point_sety,:rbind_cv_Point_set_y,[Cv::Point,:int],:void
        attach_function :cv_point_point,:rbind_cv_Point_Point,[:int,:int],Cv::Point
        attach_function :cv_point_point2,:rbind_cv_Point_Point2,[Cv::Point],Cv::Point
        attach_function :cv_point_dot,:rbind_cv_Point_dot,[Cv::Point,Cv::Point],:int
        attach_function :cv_point_dot2,:rbind_cv_Point_dot2,[Cv::Point,Cv::Point],:double
        attach_function :cv_point_cross,:rbind_cv_Point_cross,[Cv::Point,Cv::Point],:double
        attach_function :cv_point_inside,:rbind_cv_Point_inside,[Cv::Point,Cv::Rect],:bool
        attach_function :cv_point_operator_plus,:rbind_cv_Point_operator_plus,[Cv::Point,Cv::Point],:void
        
        #methods for cv::Rect
        attach_function :delete_cv_rect,:rbind_delete_cv_Rect,[Cv::Rect],:void
        attach_function :delete_cv_rect_struct,:rbind_delete_cv_Rect,[Cv::RectStruct],:void
        attach_function :cv_rect_getx,:rbind_cv_Rect_get_x,[Cv::Rect],:int
        attach_function :cv_rect_setx,:rbind_cv_Rect_set_x,[Cv::Rect,:int],:void
        attach_function :cv_rect_gety,:rbind_cv_Rect_get_y,[Cv::Rect],:int
        attach_function :cv_rect_sety,:rbind_cv_Rect_set_y,[Cv::Rect,:int],:void
        attach_function :cv_rect_get_width,:rbind_cv_Rect_get_width,[Cv::Rect],:int
        attach_function :cv_rect_set_width,:rbind_cv_Rect_set_width,[Cv::Rect,:int],:void
        attach_function :cv_rect_get_height,:rbind_cv_Rect_get_height,[Cv::Rect],:int
        attach_function :cv_rect_set_height,:rbind_cv_Rect_set_height,[Cv::Rect,:int],:void
        attach_function :cv_rect_rect,:rbind_cv_Rect_Rect,[],Cv::Rect
        attach_function :cv_rect_rect2,:rbind_cv_Rect_Rect2,[Cv::Rect],Cv::Rect
        attach_function :cv_rect_rect3,:rbind_cv_Rect_Rect3,[:int,:int,:int,:int],Cv::Rect
        attach_function :cv_rect_tl,:rbind_cv_Rect_tl,[Cv::Rect],Cv::Point
        attach_function :cv_rect_br,:rbind_cv_Rect_br,[Cv::Rect],Cv::Point
        attach_function :cv_rect_size,:rbind_cv_Rect_size,[Cv::Rect],Cv::Size
        attach_function :cv_rect_area,:rbind_cv_Rect_area,[Cv::Rect],:int
        attach_function :cv_rect_contains,:rbind_cv_Rect_contains,[Cv::Rect,Cv::Point],:bool
        
        #methods for cv::Point2f
        attach_function :delete_cv_point_2f,:rbind_delete_cv_Point2f,[Cv::Point2f],:void
        attach_function :delete_cv_point_2f_struct,:rbind_delete_cv_Point2f,[Cv::Point2fStruct],:void
        attach_function :cv_point_2f_getx,:rbind_cv_Point2f_get_x,[Cv::Point2f],:float
        attach_function :cv_point_2f_setx,:rbind_cv_Point2f_set_x,[Cv::Point2f,:float],:void
        attach_function :cv_point_2f_gety,:rbind_cv_Point2f_get_y,[Cv::Point2f],:float
        attach_function :cv_point_2f_sety,:rbind_cv_Point2f_set_y,[Cv::Point2f,:float],:void
        attach_function :cv_point_2f_point_2f,:rbind_cv_Point2f_Point2f,[:float,:float],Cv::Point2f
        attach_function :cv_point_2f_point_2f2,:rbind_cv_Point2f_Point2f2,[Cv::Point2f],Cv::Point2f
        attach_function :cv_point_2f_dot,:rbind_cv_Point2f_dot,[Cv::Point2f,Cv::Point2f],:float
        attach_function :cv_point_2f_dot2,:rbind_cv_Point2f_dot2,[Cv::Point2f,Cv::Point2f],:double
        attach_function :cv_point_2f_cross,:rbind_cv_Point2f_cross,[Cv::Point2f,Cv::Point2f],:double
        attach_function :cv_point_2f_operator_plus,:rbind_cv_Point2f_operator_plus,[Cv::Point2f,Cv::Point2f],:void
        
        #methods for cv::Point2d
        attach_function :delete_cv_point_2d,:rbind_delete_cv_Point2d,[Cv::Point2d],:void
        attach_function :delete_cv_point_2d_struct,:rbind_delete_cv_Point2d,[Cv::Point2dStruct],:void
        attach_function :cv_point_2d_getx,:rbind_cv_Point2d_get_x,[Cv::Point2d],:double
        attach_function :cv_point_2d_setx,:rbind_cv_Point2d_set_x,[Cv::Point2d,:double],:void
        attach_function :cv_point_2d_gety,:rbind_cv_Point2d_get_y,[Cv::Point2d],:double
        attach_function :cv_point_2d_sety,:rbind_cv_Point2d_set_y,[Cv::Point2d,:double],:void
        attach_function :cv_point_2d_point_2d,:rbind_cv_Point2d_Point2d,[:double,:double],Cv::Point2d
        attach_function :cv_point_2d_point_2d2,:rbind_cv_Point2d_Point2d2,[Cv::Point2d],Cv::Point2d
        attach_function :cv_point_2d_operator_plus,:rbind_cv_Point2d_operator_plus,[Cv::Point2d,Cv::Point2d],:void
        attach_function :cv_point_2d_dot,:rbind_cv_Point2d_dot,[Cv::Point2d,Cv::Point2d],:double
        attach_function :cv_point_2d_dot2,:rbind_cv_Point2d_dot2,[Cv::Point2d,Cv::Point2d],:double
        attach_function :cv_point_2d_cross,:rbind_cv_Point2d_cross,[Cv::Point2d,Cv::Point2d],:double
        
        #methods for cv::Point3f
        attach_function :delete_cv_point_3f,:rbind_delete_cv_Point3f,[Cv::Point3f],:void
        attach_function :delete_cv_point_3f_struct,:rbind_delete_cv_Point3f,[Cv::Point3fStruct],:void
        attach_function :cv_point_3f_getx,:rbind_cv_Point3f_get_x,[Cv::Point3f],:float
        attach_function :cv_point_3f_setx,:rbind_cv_Point3f_set_x,[Cv::Point3f,:float],:void
        attach_function :cv_point_3f_gety,:rbind_cv_Point3f_get_y,[Cv::Point3f],:float
        attach_function :cv_point_3f_sety,:rbind_cv_Point3f_set_y,[Cv::Point3f,:float],:void
        attach_function :cv_point_3f_getz,:rbind_cv_Point3f_get_z,[Cv::Point3f],:float
        attach_function :cv_point_3f_setz,:rbind_cv_Point3f_set_z,[Cv::Point3f,:float],:void
        attach_function :cv_point_3f_point_3f,:rbind_cv_Point3f_Point3f,[:float,:float,:float],Cv::Point3f
        attach_function :cv_point_3f_point_3f2,:rbind_cv_Point3f_Point3f2,[Cv::Point3f],Cv::Point3f
        attach_function :cv_point_3f_dot,:rbind_cv_Point3f_dot,[Cv::Point3f,Cv::Point3f],:float
        attach_function :cv_point_3f_ddot,:rbind_cv_Point3f_ddot,[Cv::Point3f,Cv::Point3f],:double
        attach_function :cv_point_3f_cross,:rbind_cv_Point3f_cross,[Cv::Point3f,Cv::Point3f],Cv::Point3f
        attach_function :cv_point_3f_operator_plus,:rbind_cv_Point3f_operator_plus,[Cv::Point3f,Cv::Point3f],:void
        
        #methods for cv::Point3d
        attach_function :delete_cv_point_3d,:rbind_delete_cv_Point3d,[Cv::Point3d],:void
        attach_function :delete_cv_point_3d_struct,:rbind_delete_cv_Point3d,[Cv::Point3dStruct],:void
        attach_function :cv_point_3d_getx,:rbind_cv_Point3d_get_x,[Cv::Point3d],:double
        attach_function :cv_point_3d_setx,:rbind_cv_Point3d_set_x,[Cv::Point3d,:double],:void
        attach_function :cv_point_3d_gety,:rbind_cv_Point3d_get_y,[Cv::Point3d],:double
        attach_function :cv_point_3d_sety,:rbind_cv_Point3d_set_y,[Cv::Point3d,:double],:void
        attach_function :cv_point_3d_getz,:rbind_cv_Point3d_get_z,[Cv::Point3d],:double
        attach_function :cv_point_3d_setz,:rbind_cv_Point3d_set_z,[Cv::Point3d,:double],:void
        attach_function :cv_point_3d_point_3d,:rbind_cv_Point3d_Point3d,[:double,:double,:double],Cv::Point3d
        attach_function :cv_point_3d_point_3d2,:rbind_cv_Point3d_Point3d2,[Cv::Point3d],Cv::Point3d
        attach_function :cv_point_3d_dot,:rbind_cv_Point3d_dot,[Cv::Point3d,Cv::Point3d],:double
        attach_function :cv_point_3d_ddot,:rbind_cv_Point3d_ddot,[Cv::Point3d,Cv::Point3d],:double
        attach_function :cv_point_3d_cross,:rbind_cv_Point3d_cross,[Cv::Point3d,Cv::Point3d],Cv::Point3d
        attach_function :cv_point_3d_operator_plus,:rbind_cv_Point3d_operator_plus,[Cv::Point3d,Cv::Point3d],:void
        
        #methods for cv::Size
        attach_function :delete_cv_size,:rbind_delete_cv_Size,[Cv::Size],:void
        attach_function :delete_cv_size_struct,:rbind_delete_cv_Size,[Cv::SizeStruct],:void
        attach_function :cv_size_get_width,:rbind_cv_Size_get_width,[Cv::Size],:int
        attach_function :cv_size_set_width,:rbind_cv_Size_set_width,[Cv::Size,:int],:void
        attach_function :cv_size_get_height,:rbind_cv_Size_get_height,[Cv::Size],:int
        attach_function :cv_size_set_height,:rbind_cv_Size_set_height,[Cv::Size,:int],:void
        attach_function :cv_size_size,:rbind_cv_Size_Size,[],Cv::Size
        attach_function :cv_size_size2,:rbind_cv_Size_Size2,[Cv::Size],Cv::Size
        attach_function :cv_size_size3,:rbind_cv_Size_Size3,[Cv::Point],Cv::Size
        attach_function :cv_size_size4,:rbind_cv_Size_Size4,[:int,:int],Cv::Size
        attach_function :cv_size_area,:rbind_cv_Size_area,[Cv::Size],:int
        
        #methods for cv::Size2f
        attach_function :delete_cv_size_2f,:rbind_delete_cv_Size2f,[Cv::Size2f],:void
        attach_function :delete_cv_size_2f_struct,:rbind_delete_cv_Size2f,[Cv::Size2fStruct],:void
        attach_function :cv_size_2f_get_width,:rbind_cv_Size2f_get_width,[Cv::Size2f],:int
        attach_function :cv_size_2f_set_width,:rbind_cv_Size2f_set_width,[Cv::Size2f,:int],:void
        attach_function :cv_size_2f_get_height,:rbind_cv_Size2f_get_height,[Cv::Size2f],:int
        attach_function :cv_size_2f_set_height,:rbind_cv_Size2f_set_height,[Cv::Size2f,:int],:void
        attach_function :cv_size_2f_size_2f,:rbind_cv_Size2f_Size2f,[],Cv::Size2f
        attach_function :cv_size_2f_size_2f2,:rbind_cv_Size2f_Size2f2,[Cv::Size2f],Cv::Size2f
        attach_function :cv_size_2f_size_2f3,:rbind_cv_Size2f_Size2f3,[Cv::Point2f],Cv::Size2f
        attach_function :cv_size_2f_size_2f4,:rbind_cv_Size2f_Size2f4,[:int,:int],Cv::Size2f
        attach_function :cv_size_2f_area,:rbind_cv_Size2f_area,[Cv::Size2f],:int
        
        #methods for cv::RotatedRect
        attach_function :delete_cv_rotated_rect,:rbind_delete_cv_RotatedRect,[Cv::RotatedRect],:void
        attach_function :delete_cv_rotated_rect_struct,:rbind_delete_cv_RotatedRect,[Cv::RotatedRectStruct],:void
        attach_function :cv_rotated_rect_get_center,:rbind_cv_RotatedRect_get_center,[Cv::RotatedRect],Cv::Point2f
        attach_function :cv_rotated_rect_set_center,:rbind_cv_RotatedRect_set_center,[Cv::RotatedRect,Cv::Point2f],:void
        attach_function :cv_rotated_rect_get_size,:rbind_cv_RotatedRect_get_size,[Cv::RotatedRect],Cv::Size2f
        attach_function :cv_rotated_rect_set_size,:rbind_cv_RotatedRect_set_size,[Cv::RotatedRect,Cv::Size2f],:void
        attach_function :cv_rotated_rect_get_angle,:rbind_cv_RotatedRect_get_angle,[Cv::RotatedRect],:float
        attach_function :cv_rotated_rect_set_angle,:rbind_cv_RotatedRect_set_angle,[Cv::RotatedRect,:float],:void
        attach_function :cv_rotated_rect_rotated_rect,:rbind_cv_RotatedRect_RotatedRect,[],Cv::RotatedRect
        attach_function :cv_rotated_rect_rotated_rect2,:rbind_cv_RotatedRect_RotatedRect2,[Cv::Point2f,Cv::Size2f,:float],Cv::RotatedRect
        attach_function :cv_rotated_rect_bounding_rect,:rbind_cv_RotatedRect_boundingRect,[Cv::RotatedRect],Cv::Rect
        
        #methods for cv::FileNode
        attach_function :delete_cv_file_node,:rbind_delete_cv_FileNode,[Cv::FileNode],:void
        attach_function :delete_cv_file_node_struct,:rbind_delete_cv_FileNode,[Cv::FileNodeStruct],:void
        
        #methods for cv::Vec2d
        attach_function :delete_cv_vec_2d,:rbind_delete_cv_Vec2d,[Cv::Vec2d],:void
        attach_function :delete_cv_vec_2d_struct,:rbind_delete_cv_Vec2d,[Cv::Vec2dStruct],:void
        attach_function :cv_vec_2d_vec_2d,:rbind_cv_Vec2d_Vec2d,[],Cv::Vec2d
        attach_function :cv_vec_2d_vec_2d2,:rbind_cv_Vec2d_Vec2d2,[Cv::Vec2d],Cv::Vec2d
        attach_function :cv_vec_2d_vec_2d3,:rbind_cv_Vec2d_Vec2d3,[:double,:double],Cv::Vec2d
        attach_function :cv_vec_2d_all,:rbind_cv_Vec2d_all,[:double],Cv::Vec2d
        attach_function :cv_vec_2d_mul,:rbind_cv_Vec2d_mul,[Cv::Vec2d,Cv::Vec2d],Cv::Vec2d
        attach_function :cv_vec_2d_conj,:rbind_cv_Vec2d_conj,[Cv::Vec2d],Cv::Vec2d
        attach_function :cv_vec_2d_operator_array,:rbind_cv_Vec2d_operator_array,[Cv::Vec2d,:int],:double
        
        #methods for cv::Vec3d
        attach_function :delete_cv_vec_3d,:rbind_delete_cv_Vec3d,[Cv::Vec3d],:void
        attach_function :delete_cv_vec_3d_struct,:rbind_delete_cv_Vec3d,[Cv::Vec3dStruct],:void
        
        #methods for cv::Vec4d
        attach_function :delete_cv_vec_4d,:rbind_delete_cv_Vec4d,[Cv::Vec4d],:void
        attach_function :delete_cv_vec_4d_struct,:rbind_delete_cv_Vec4d,[Cv::Vec4dStruct],:void
        
        #methods for cv::Vec4f
        attach_function :delete_cv_vec_4f,:rbind_delete_cv_Vec4f,[Cv::Vec4f],:void
        attach_function :delete_cv_vec_4f_struct,:rbind_delete_cv_Vec4f,[Cv::Vec4fStruct],:void
        
        #methods for cv::Vec6f
        attach_function :delete_cv_vec_6f,:rbind_delete_cv_Vec6f,[Cv::Vec6f],:void
        attach_function :delete_cv_vec_6f_struct,:rbind_delete_cv_Vec6f,[Cv::Vec6fStruct],:void
        
        #methods for cv::TermCriteria
        attach_function :delete_cv_term_criteria,:rbind_delete_cv_TermCriteria,[Cv::TermCriteria],:void
        attach_function :delete_cv_term_criteria_struct,:rbind_delete_cv_TermCriteria,[Cv::TermCriteriaStruct],:void
        
        #methods for cv::flann
        
        #methods for cv::flann::IndexParams
        attach_function :delete_cv_flann_index_params,:rbind_delete_cv_flann_IndexParams,[Cv::Flann::IndexParams],:void
        attach_function :delete_cv_flann_index_params_struct,:rbind_delete_cv_flann_IndexParams,[Cv::Flann::IndexParamsStruct],:void
        
        #methods for cv::flann::SearchParams
        attach_function :delete_cv_flann_search_params,:rbind_delete_cv_flann_SearchParams,[Cv::Flann::SearchParams],:void
        attach_function :delete_cv_flann_search_params_struct,:rbind_delete_cv_flann_SearchParams,[Cv::Flann::SearchParamsStruct],:void
        
        #methods for cv::FeatureDetector
        attach_function :delete_cv_feature_detector,:rbind_delete_cv_FeatureDetector,[Cv::FeatureDetector],:void
        attach_function :delete_cv_feature_detector_struct,:rbind_delete_cv_FeatureDetector,[Cv::FeatureDetectorStruct],:void
        attach_function :cv_feature_detector_detect,:rbind_cv_FeatureDetector_detect,[Cv::FeatureDetector,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_feature_detector_empty,:rbind_cv_FeatureDetector_empty,[Cv::FeatureDetector],:bool
        attach_function :cv_feature_detector_create,:rbind_cv_FeatureDetector_create,[Cv::String],PtrFeatureDetector
        attach_function :cv_feature_detector_get_int,:rbind_cv_FeatureDetector_getInt,[Cv::FeatureDetector,Cv::String],:int
        attach_function :cv_feature_detector_get_double,:rbind_cv_FeatureDetector_getDouble,[Cv::FeatureDetector,Cv::String],:double
        attach_function :cv_feature_detector_get_bool,:rbind_cv_FeatureDetector_getBool,[Cv::FeatureDetector,Cv::String],:bool
        attach_function :cv_feature_detector_get_string,:rbind_cv_FeatureDetector_getString,[Cv::FeatureDetector,Cv::String],Cv::String
        attach_function :cv_feature_detector_get_mat,:rbind_cv_FeatureDetector_getMat,[Cv::FeatureDetector,Cv::String],Cv::Mat
        attach_function :cv_feature_detector_get_mat_vector,:rbind_cv_FeatureDetector_getMatVector,[Cv::FeatureDetector,Cv::String],VectorMat
        attach_function :cv_feature_detector_get_algorithm,:rbind_cv_FeatureDetector_getAlgorithm,[Cv::FeatureDetector,Cv::String],PtrAlgorithm
        attach_function :cv_feature_detector_set_int,:rbind_cv_FeatureDetector_setInt,[Cv::FeatureDetector,Cv::String,:int],:void
        attach_function :cv_feature_detector_set_double,:rbind_cv_FeatureDetector_setDouble,[Cv::FeatureDetector,Cv::String,:double],:void
        attach_function :cv_feature_detector_set_bool,:rbind_cv_FeatureDetector_setBool,[Cv::FeatureDetector,Cv::String,:bool],:void
        attach_function :cv_feature_detector_set_string,:rbind_cv_FeatureDetector_setString,[Cv::FeatureDetector,Cv::String,Cv::String],:void
        attach_function :cv_feature_detector_set_mat,:rbind_cv_FeatureDetector_setMat,[Cv::FeatureDetector,Cv::String,Cv::Mat],:void
        attach_function :cv_feature_detector_set_mat_vector,:rbind_cv_FeatureDetector_setMatVector,[Cv::FeatureDetector,Cv::String,VectorMat],:void
        attach_function :cv_feature_detector_set_algorithm,:rbind_cv_FeatureDetector_setAlgorithm,[Cv::FeatureDetector,Cv::String,PtrAlgorithm],:void
        attach_function :cv_feature_detector_param_help,:rbind_cv_FeatureDetector_paramHelp,[Cv::FeatureDetector,Cv::String],Cv::String
        attach_function :cv_feature_detector_param_type,:rbind_cv_FeatureDetector_paramType,[Cv::FeatureDetector,Cv::String],:int
        attach_function :cv_feature_detector_get_params,:rbind_cv_FeatureDetector_getParams,[Cv::FeatureDetector,VectorString],:void
        attach_function :cv_feature_detector_get_list,:rbind_cv_FeatureDetector_getList,[VectorString],:void
        attach_function :cv_feature_detector__create,:rbind_cv_FeatureDetector__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::Mat
        attach_function :delete_cv_mat,:rbind_delete_cv_Mat,[Cv::Mat],:void
        attach_function :delete_cv_mat_struct,:rbind_delete_cv_Mat,[Cv::MatStruct],:void
        attach_function :cv_mat_get_flags,:rbind_cv_Mat_get_flags,[Cv::Mat],:int
        attach_function :cv_mat_get_rows,:rbind_cv_Mat_get_rows,[Cv::Mat],:int
        attach_function :cv_mat_get_cols,:rbind_cv_Mat_get_cols,[Cv::Mat],:int
        attach_function :cv_mat_get_step,:rbind_cv_Mat_get_step,[Cv::Mat],:size_t
        attach_function :cv_mat_get_data,:rbind_cv_Mat_get_data,[Cv::Mat],:pointer
        attach_function :cv_mat_mat,:rbind_cv_Mat_Mat,[],Cv::Mat
        attach_function :cv_mat_mat2,:rbind_cv_Mat_Mat2,[Cv::Mat],Cv::Mat
        attach_function :cv_mat_mat3,:rbind_cv_Mat_Mat3,[Cv::Size,:int],Cv::Mat
        attach_function :cv_mat_mat4,:rbind_cv_Mat_Mat4,[:int,:int,:int],Cv::Mat
        attach_function :cv_mat_mat5,:rbind_cv_Mat_Mat5,[:int,:int,:int,:pointer,:size_t],Cv::Mat
        attach_function :cv_mat_operator_plus,:rbind_cv_Mat_operator_plus,[Cv::Mat,Cv::Mat],Cv::Mat
        attach_function :cv_mat_operator_plus2,:rbind_cv_Mat_operator_plus2,[Cv::Mat,:double],Cv::Mat
        attach_function :cv_mat_operator_plus3,:rbind_cv_Mat_operator_plus3,[Cv::Mat,:int],Cv::Mat
        attach_function :cv_mat_operator_minus,:rbind_cv_Mat_operator_minus,[Cv::Mat,Cv::Mat],Cv::Mat
        attach_function :cv_mat_operator_minus2,:rbind_cv_Mat_operator_minus2,[Cv::Mat,:double],Cv::Mat
        attach_function :cv_mat_operator_minus3,:rbind_cv_Mat_operator_minus3,[Cv::Mat,:int],Cv::Mat
        attach_function :cv_mat_operator_mult,:rbind_cv_Mat_operator_mult,[Cv::Mat,Cv::Mat],Cv::Mat
        attach_function :cv_mat_operator_mult2,:rbind_cv_Mat_operator_mult2,[Cv::Mat,:double],Cv::Mat
        attach_function :cv_mat_operator_mult3,:rbind_cv_Mat_operator_mult3,[Cv::Mat,:int],Cv::Mat
        attach_function :cv_mat_operator_div,:rbind_cv_Mat_operator_div,[Cv::Mat,Cv::Mat],Cv::Mat
        attach_function :cv_mat_operator_div2,:rbind_cv_Mat_operator_div2,[Cv::Mat,:double],Cv::Mat
        attach_function :cv_mat_operator_div3,:rbind_cv_Mat_operator_div3,[Cv::Mat,:int],Cv::Mat
        attach_function :cv_mat_row,:rbind_cv_Mat_row,[Cv::Mat,:int],Cv::Mat
        attach_function :cv_mat_col,:rbind_cv_Mat_col,[Cv::Mat,:int],Cv::Mat
        attach_function :cv_mat_row_range,:rbind_cv_Mat_rowRange,[Cv::Mat,:int,:int],Cv::Mat
        attach_function :cv_mat_row_range2,:rbind_cv_Mat_rowRange2,[Cv::Mat,Cv::Range],Cv::Mat
        attach_function :cv_mat_col_range,:rbind_cv_Mat_colRange,[Cv::Mat,:int,:int],Cv::Mat
        attach_function :cv_mat_col_range2,:rbind_cv_Mat_colRange2,[Cv::Mat,Cv::Range],Cv::Mat
        attach_function :cv_mat_diag,:rbind_cv_Mat_diag,[Cv::Mat,:int],Cv::Mat
        attach_function :cv_mat_clone,:rbind_cv_Mat_clone,[Cv::Mat],Cv::Mat
        attach_function :cv_mat_copy_to,:rbind_cv_Mat_copyTo,[Cv::Mat,Cv::Mat],:void
        attach_function :cv_mat_copy_to2,:rbind_cv_Mat_copyTo2,[Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_mat_convert_to,:rbind_cv_Mat_convertTo,[Cv::Mat,Cv::Mat,:int,:double,:double],:void
        attach_function :cv_mat_assign_to,:rbind_cv_Mat_assignTo,[Cv::Mat,Cv::Mat,:int],:void
        attach_function :cv_mat_reshape,:rbind_cv_Mat_reshape,[Cv::Mat,:int,:int],Cv::Mat
        attach_function :cv_matt,:rbind_cv_Mat_t,[Cv::Mat],Cv::Mat
        attach_function :cv_mat_inv,:rbind_cv_Mat_inv,[Cv::Mat,:int],Cv::Mat
        attach_function :cv_mat_mul,:rbind_cv_Mat_mul,[Cv::Mat,Cv::Mat,:double],Cv::Mat
        attach_function :cv_mat_cross,:rbind_cv_Mat_cross,[Cv::Mat,Cv::Mat],Cv::Mat
        attach_function :cv_mat_dot,:rbind_cv_Mat_dot,[Cv::Mat,Cv::Mat],:double
        attach_function :cv_mat_zeros,:rbind_cv_Mat_zeros,[:int,:int,:int],Cv::Mat
        attach_function :cv_mat_zeros2,:rbind_cv_Mat_zeros2,[Cv::Size,:int],Cv::Mat
        attach_function :cv_mat_ones,:rbind_cv_Mat_ones,[:int,:int,:int],Cv::Mat
        attach_function :cv_mat_ones2,:rbind_cv_Mat_ones2,[Cv::Size,:int],Cv::Mat
        attach_function :cv_mat_eye,:rbind_cv_Mat_eye,[:int,:int,:int],Cv::Mat
        attach_function :cv_mat_eye2,:rbind_cv_Mat_eye2,[Cv::Size,:int],Cv::Mat
        attach_function :cv_mat_create,:rbind_cv_Mat_create,[Cv::Mat,:int,:int,:int],:void
        attach_function :cv_mat_create2,:rbind_cv_Mat_create2,[Cv::Mat,Cv::Size,:int],:void
        attach_function :cv_mat_is_continuous,:rbind_cv_Mat_isContinuous,[Cv::Mat],:bool
        attach_function :cv_mat_is_submatrix,:rbind_cv_Mat_isSubmatrix,[Cv::Mat],:bool
        attach_function :cv_mat_elem_size,:rbind_cv_Mat_elemSize,[Cv::Mat],:size_t
        attach_function :cv_mat_elem_size1,:rbind_cv_Mat_elemSize1,[Cv::Mat],:size_t
        attach_function :cv_mat_size,:rbind_cv_Mat_size,[Cv::Mat],Cv::Size
        attach_function :cv_mat_type,:rbind_cv_Mat_type,[Cv::Mat],:int
        attach_function :cv_mat_depth,:rbind_cv_Mat_depth,[Cv::Mat],:int
        attach_function :cv_mat_channels,:rbind_cv_Mat_channels,[Cv::Mat],:int
        attach_function :cv_mat_step1,:rbind_cv_Mat_step1,[Cv::Mat,:int],:size_t
        attach_function :cv_mat_empty,:rbind_cv_Mat_empty,[Cv::Mat],:bool
        attach_function :cv_mat_total,:rbind_cv_Mat_total,[Cv::Mat],:size_t
        attach_function :cv_mat_check_vector,:rbind_cv_Mat_checkVector,[Cv::Mat,:int,:int,:bool],:int
        attach_function :cv_mat_ptr,:rbind_cv_Mat_ptr,[Cv::Mat,:int],:pointer
        attach_function :cv_mat_ptr2,:rbind_cv_Mat_ptr2,[Cv::Mat,:int,:int],:pointer
        attach_function :cv_mat_ptr3,:rbind_cv_Mat_ptr3,[Cv::Mat,:int,:int,:int],:pointer
        attach_function :cv_mat_block,:rbind_cv_Mat_block,[Cv::Mat,Cv::Rect],Cv::Mat
        
        #methods for cv::RNG
        attach_function :delete_cv_rng,:rbind_delete_cv_RNG,[Cv::RNG],:void
        attach_function :delete_cv_rng_struct,:rbind_delete_cv_RNG,[Cv::RNGStruct],:void
        attach_function :cv_rng_get_state,:rbind_cv_RNG_get_state,[Cv::RNG],:uint64
        attach_function :cv_rng_rng,:rbind_cv_RNG_RNG,[],Cv::RNG
        attach_function :cv_rng_rng2,:rbind_cv_RNG_RNG2,[:uint64],Cv::RNG
        attach_function :cv_rng_uniform,:rbind_cv_RNG_uniform,[Cv::RNG,:int,:int],:int
        attach_function :cv_rng_uniform2,:rbind_cv_RNG_uniform2,[Cv::RNG,:float,:float],:float
        attach_function :cv_rng_uniform3,:rbind_cv_RNG_uniform3,[Cv::RNG,:double,:double],:double
        attach_function :cv_rng_fill,:rbind_cv_RNG_fill,[Cv::RNG,Cv::Mat,:int,Cv::Mat,Cv::Mat,:bool],:void
        attach_function :cv_rng_gaussian,:rbind_cv_RNG_gaussian,[Cv::RNG,:double],:double
        
        #methods for cv::PCA
        
        #methods for cv::SVD
        
        #methods for cv::KDTree
        attach_function :delete_cv_kd_tree,:rbind_delete_cv_KDTree,[Cv::KDTree],:void
        attach_function :delete_cv_kd_tree_struct,:rbind_delete_cv_KDTree,[Cv::KDTreeStruct],:void
        attach_function :cv_kd_tree_get_points,:rbind_cv_KDTree_get_points,[Cv::KDTree],Cv::Mat
        attach_function :cv_kd_tree_get_labels,:rbind_cv_KDTree_get_labels,[Cv::KDTree],VectorInt
        attach_function :cv_kd_tree_get_max_depth,:rbind_cv_KDTree_get_maxDepth,[Cv::KDTree],:int
        attach_function :cv_kd_tree_get_norm_type,:rbind_cv_KDTree_get_normType,[Cv::KDTree],:int
        attach_function :cv_kd_tree_set_norm_type,:rbind_cv_KDTree_set_normType,[Cv::KDTree,:int],:void
        attach_function :cv_kd_tree_kd_tree,:rbind_cv_KDTree_KDTree,[],Cv::KDTree
        attach_function :cv_kd_tree_kd_tree2,:rbind_cv_KDTree_KDTree2,[Cv::Mat,:bool],Cv::KDTree
        attach_function :cv_kd_tree_kd_tree3,:rbind_cv_KDTree_KDTree3,[Cv::Mat,Cv::Mat,:bool],Cv::KDTree
        attach_function :cv_kd_tree_build,:rbind_cv_KDTree_build,[Cv::KDTree,Cv::Mat,:bool],:void
        attach_function :cv_kd_tree_build2,:rbind_cv_KDTree_build2,[Cv::KDTree,Cv::Mat,Cv::Mat,:bool],:void
        attach_function :cv_kd_tree_find_nearest,:rbind_cv_KDTree_findNearest,[Cv::KDTree,Cv::Mat,:int,:int,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:int
        attach_function :cv_kd_tree_find_ortho_range,:rbind_cv_KDTree_findOrthoRange,[Cv::KDTree,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_kd_tree_get_points,:rbind_cv_KDTree_getPoints,[Cv::KDTree,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_kd_tree_dims,:rbind_cv_KDTree_dims,[Cv::KDTree],:int
        
        #methods for cv::Formatter
        
        #methods for cv::Algorithm
        attach_function :delete_cv_algorithm,:rbind_delete_cv_Algorithm,[Cv::Algorithm],:void
        attach_function :delete_cv_algorithm_struct,:rbind_delete_cv_Algorithm,[Cv::AlgorithmStruct],:void
        attach_function :cv_algorithm_get_int,:rbind_cv_Algorithm_getInt,[Cv::Algorithm,Cv::String],:int
        attach_function :cv_algorithm_get_double,:rbind_cv_Algorithm_getDouble,[Cv::Algorithm,Cv::String],:double
        attach_function :cv_algorithm_get_bool,:rbind_cv_Algorithm_getBool,[Cv::Algorithm,Cv::String],:bool
        attach_function :cv_algorithm_get_string,:rbind_cv_Algorithm_getString,[Cv::Algorithm,Cv::String],Cv::String
        attach_function :cv_algorithm_get_mat,:rbind_cv_Algorithm_getMat,[Cv::Algorithm,Cv::String],Cv::Mat
        attach_function :cv_algorithm_get_mat_vector,:rbind_cv_Algorithm_getMatVector,[Cv::Algorithm,Cv::String],VectorMat
        attach_function :cv_algorithm_get_algorithm,:rbind_cv_Algorithm_getAlgorithm,[Cv::Algorithm,Cv::String],PtrAlgorithm
        attach_function :cv_algorithm_set_int,:rbind_cv_Algorithm_setInt,[Cv::Algorithm,Cv::String,:int],:void
        attach_function :cv_algorithm_set_double,:rbind_cv_Algorithm_setDouble,[Cv::Algorithm,Cv::String,:double],:void
        attach_function :cv_algorithm_set_bool,:rbind_cv_Algorithm_setBool,[Cv::Algorithm,Cv::String,:bool],:void
        attach_function :cv_algorithm_set_string,:rbind_cv_Algorithm_setString,[Cv::Algorithm,Cv::String,Cv::String],:void
        attach_function :cv_algorithm_set_mat,:rbind_cv_Algorithm_setMat,[Cv::Algorithm,Cv::String,Cv::Mat],:void
        attach_function :cv_algorithm_set_mat_vector,:rbind_cv_Algorithm_setMatVector,[Cv::Algorithm,Cv::String,VectorMat],:void
        attach_function :cv_algorithm_set_algorithm,:rbind_cv_Algorithm_setAlgorithm,[Cv::Algorithm,Cv::String,PtrAlgorithm],:void
        attach_function :cv_algorithm_param_help,:rbind_cv_Algorithm_paramHelp,[Cv::Algorithm,Cv::String],Cv::String
        attach_function :cv_algorithm_param_type,:rbind_cv_Algorithm_paramType,[Cv::Algorithm,Cv::String],:int
        attach_function :cv_algorithm_get_params,:rbind_cv_Algorithm_getParams,[Cv::Algorithm,VectorString],:void
        attach_function :cv_algorithm_get_list,:rbind_cv_Algorithm_getList,[VectorString],:void
        attach_function :cv_algorithm__create,:rbind_cv_Algorithm__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::Param
        
        #methods for cv::KeyPoint
        attach_function :delete_cv_key_point,:rbind_delete_cv_KeyPoint,[Cv::KeyPoint],:void
        attach_function :delete_cv_key_point_struct,:rbind_delete_cv_KeyPoint,[Cv::KeyPointStruct],:void
        attach_function :cv_key_point_get_pt,:rbind_cv_KeyPoint_get_pt,[Cv::KeyPoint],Cv::Point2f
        attach_function :cv_key_point_set_pt,:rbind_cv_KeyPoint_set_pt,[Cv::KeyPoint,Cv::Point2f],:void
        attach_function :cv_key_point_get_size,:rbind_cv_KeyPoint_get_size,[Cv::KeyPoint],:float
        attach_function :cv_key_point_set_size,:rbind_cv_KeyPoint_set_size,[Cv::KeyPoint,:float],:void
        attach_function :cv_key_point_get_angle,:rbind_cv_KeyPoint_get_angle,[Cv::KeyPoint],:float
        attach_function :cv_key_point_set_angle,:rbind_cv_KeyPoint_set_angle,[Cv::KeyPoint,:float],:void
        attach_function :cv_key_point_get_response,:rbind_cv_KeyPoint_get_response,[Cv::KeyPoint],:float
        attach_function :cv_key_point_set_response,:rbind_cv_KeyPoint_set_response,[Cv::KeyPoint,:float],:void
        attach_function :cv_key_point_get_octave,:rbind_cv_KeyPoint_get_octave,[Cv::KeyPoint],:int
        attach_function :cv_key_point_set_octave,:rbind_cv_KeyPoint_set_octave,[Cv::KeyPoint,:int],:void
        attach_function :cv_key_point_get_class_id,:rbind_cv_KeyPoint_get_class_id,[Cv::KeyPoint],:int
        attach_function :cv_key_point_set_class_id,:rbind_cv_KeyPoint_set_class_id,[Cv::KeyPoint,:int],:void
        attach_function :cv_key_point_key_point,:rbind_cv_KeyPoint_KeyPoint,[],Cv::KeyPoint
        attach_function :cv_key_point_key_point2,:rbind_cv_KeyPoint_KeyPoint2,[:float,:float,:float,:float,:float,:int,:int],Cv::KeyPoint
        
        #methods for cv::DMatch
        attach_function :delete_cv_d_match,:rbind_delete_cv_DMatch,[Cv::DMatch],:void
        attach_function :delete_cv_d_match_struct,:rbind_delete_cv_DMatch,[Cv::DMatchStruct],:void
        attach_function :cv_d_match_get_query_idx,:rbind_cv_DMatch_get_queryIdx,[Cv::DMatch],:int
        attach_function :cv_d_match_set_query_idx,:rbind_cv_DMatch_set_queryIdx,[Cv::DMatch,:int],:void
        attach_function :cv_d_match_get_train_idx,:rbind_cv_DMatch_get_trainIdx,[Cv::DMatch],:int
        attach_function :cv_d_match_set_train_idx,:rbind_cv_DMatch_set_trainIdx,[Cv::DMatch,:int],:void
        attach_function :cv_d_match_get_img_idx,:rbind_cv_DMatch_get_imgIdx,[Cv::DMatch],:int
        attach_function :cv_d_match_set_img_idx,:rbind_cv_DMatch_set_imgIdx,[Cv::DMatch,:int],:void
        attach_function :cv_d_match_get_distance,:rbind_cv_DMatch_get_distance,[Cv::DMatch],:float
        attach_function :cv_d_match_set_distance,:rbind_cv_DMatch_set_distance,[Cv::DMatch,:float],:void
        attach_function :cv_d_match_d_match,:rbind_cv_DMatch_DMatch,[],Cv::DMatch
        attach_function :cv_d_match_d_match2,:rbind_cv_DMatch_DMatch2,[:int,:int,:float],Cv::DMatch
        attach_function :cv_d_match_d_match3,:rbind_cv_DMatch_DMatch3,[:int,:int,:int,:float],Cv::DMatch
        
        #methods for cv::Moments
        attach_function :delete_cv_moments,:rbind_delete_cv_Moments,[Cv::Moments],:void
        attach_function :delete_cv_moments_struct,:rbind_delete_cv_Moments,[Cv::MomentsStruct],:void
        attach_function :cv_moments_getm00,:rbind_cv_Moments_get_m00,[Cv::Moments],:double
        attach_function :cv_moments_setm00,:rbind_cv_Moments_set_m00,[Cv::Moments,:double],:void
        attach_function :cv_moments_getm10,:rbind_cv_Moments_get_m10,[Cv::Moments],:double
        attach_function :cv_moments_setm10,:rbind_cv_Moments_set_m10,[Cv::Moments,:double],:void
        attach_function :cv_moments_getm01,:rbind_cv_Moments_get_m01,[Cv::Moments],:double
        attach_function :cv_moments_setm01,:rbind_cv_Moments_set_m01,[Cv::Moments,:double],:void
        attach_function :cv_moments_getm20,:rbind_cv_Moments_get_m20,[Cv::Moments],:double
        attach_function :cv_moments_setm20,:rbind_cv_Moments_set_m20,[Cv::Moments,:double],:void
        attach_function :cv_moments_getm11,:rbind_cv_Moments_get_m11,[Cv::Moments],:double
        attach_function :cv_moments_setm11,:rbind_cv_Moments_set_m11,[Cv::Moments,:double],:void
        attach_function :cv_moments_getm02,:rbind_cv_Moments_get_m02,[Cv::Moments],:double
        attach_function :cv_moments_setm02,:rbind_cv_Moments_set_m02,[Cv::Moments,:double],:void
        attach_function :cv_moments_getm30,:rbind_cv_Moments_get_m30,[Cv::Moments],:double
        attach_function :cv_moments_setm30,:rbind_cv_Moments_set_m30,[Cv::Moments,:double],:void
        attach_function :cv_moments_getm21,:rbind_cv_Moments_get_m21,[Cv::Moments],:double
        attach_function :cv_moments_setm21,:rbind_cv_Moments_set_m21,[Cv::Moments,:double],:void
        attach_function :cv_moments_getm12,:rbind_cv_Moments_get_m12,[Cv::Moments],:double
        attach_function :cv_moments_setm12,:rbind_cv_Moments_set_m12,[Cv::Moments,:double],:void
        attach_function :cv_moments_getm03,:rbind_cv_Moments_get_m03,[Cv::Moments],:double
        attach_function :cv_moments_setm03,:rbind_cv_Moments_set_m03,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_mu20,:rbind_cv_Moments_get_mu20,[Cv::Moments],:double
        attach_function :cv_moments_set_mu20,:rbind_cv_Moments_set_mu20,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_mu11,:rbind_cv_Moments_get_mu11,[Cv::Moments],:double
        attach_function :cv_moments_set_mu11,:rbind_cv_Moments_set_mu11,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_mu02,:rbind_cv_Moments_get_mu02,[Cv::Moments],:double
        attach_function :cv_moments_set_mu02,:rbind_cv_Moments_set_mu02,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_mu30,:rbind_cv_Moments_get_mu30,[Cv::Moments],:double
        attach_function :cv_moments_set_mu30,:rbind_cv_Moments_set_mu30,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_mu21,:rbind_cv_Moments_get_mu21,[Cv::Moments],:double
        attach_function :cv_moments_set_mu21,:rbind_cv_Moments_set_mu21,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_mu12,:rbind_cv_Moments_get_mu12,[Cv::Moments],:double
        attach_function :cv_moments_set_mu12,:rbind_cv_Moments_set_mu12,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_mu03,:rbind_cv_Moments_get_mu03,[Cv::Moments],:double
        attach_function :cv_moments_set_mu03,:rbind_cv_Moments_set_mu03,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_nu20,:rbind_cv_Moments_get_nu20,[Cv::Moments],:double
        attach_function :cv_moments_set_nu20,:rbind_cv_Moments_set_nu20,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_nu11,:rbind_cv_Moments_get_nu11,[Cv::Moments],:double
        attach_function :cv_moments_set_nu11,:rbind_cv_Moments_set_nu11,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_nu02,:rbind_cv_Moments_get_nu02,[Cv::Moments],:double
        attach_function :cv_moments_set_nu02,:rbind_cv_Moments_set_nu02,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_nu30,:rbind_cv_Moments_get_nu30,[Cv::Moments],:double
        attach_function :cv_moments_set_nu30,:rbind_cv_Moments_set_nu30,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_nu21,:rbind_cv_Moments_get_nu21,[Cv::Moments],:double
        attach_function :cv_moments_set_nu21,:rbind_cv_Moments_set_nu21,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_nu12,:rbind_cv_Moments_get_nu12,[Cv::Moments],:double
        attach_function :cv_moments_set_nu12,:rbind_cv_Moments_set_nu12,[Cv::Moments,:double],:void
        attach_function :cv_moments_get_nu03,:rbind_cv_Moments_get_nu03,[Cv::Moments],:double
        attach_function :cv_moments_set_nu03,:rbind_cv_Moments_set_nu03,[Cv::Moments,:double],:void
        
        #methods for cv::Error
        
        #methods for cv::SelfSimDescriptor
        
        #methods for cv::StereoVar
        attach_function :delete_cv_stereo_var,:rbind_delete_cv_StereoVar,[Cv::StereoVar],:void
        attach_function :delete_cv_stereo_var_struct,:rbind_delete_cv_StereoVar,[Cv::StereoVarStruct],:void
        attach_function :cv_stereo_var_get_levels,:rbind_cv_StereoVar_get_levels,[Cv::StereoVar],:int
        attach_function :cv_stereo_var_set_levels,:rbind_cv_StereoVar_set_levels,[Cv::StereoVar,:int],:void
        attach_function :cv_stereo_var_get_pyr_scale,:rbind_cv_StereoVar_get_pyrScale,[Cv::StereoVar],:double
        attach_function :cv_stereo_var_set_pyr_scale,:rbind_cv_StereoVar_set_pyrScale,[Cv::StereoVar,:double],:void
        attach_function :cv_stereo_var_getn_it,:rbind_cv_StereoVar_get_nIt,[Cv::StereoVar],:int
        attach_function :cv_stereo_var_setn_it,:rbind_cv_StereoVar_set_nIt,[Cv::StereoVar,:int],:void
        attach_function :cv_stereo_var_get_min_disp,:rbind_cv_StereoVar_get_minDisp,[Cv::StereoVar],:int
        attach_function :cv_stereo_var_set_min_disp,:rbind_cv_StereoVar_set_minDisp,[Cv::StereoVar,:int],:void
        attach_function :cv_stereo_var_get_max_disp,:rbind_cv_StereoVar_get_maxDisp,[Cv::StereoVar],:int
        attach_function :cv_stereo_var_set_max_disp,:rbind_cv_StereoVar_set_maxDisp,[Cv::StereoVar,:int],:void
        attach_function :cv_stereo_var_get_polyn,:rbind_cv_StereoVar_get_poly_n,[Cv::StereoVar],:int
        attach_function :cv_stereo_var_set_polyn,:rbind_cv_StereoVar_set_poly_n,[Cv::StereoVar,:int],:void
        attach_function :cv_stereo_var_get_poly_sigma,:rbind_cv_StereoVar_get_poly_sigma,[Cv::StereoVar],:double
        attach_function :cv_stereo_var_set_poly_sigma,:rbind_cv_StereoVar_set_poly_sigma,[Cv::StereoVar,:double],:void
        attach_function :cv_stereo_var_get_fi,:rbind_cv_StereoVar_get_fi,[Cv::StereoVar],:float
        attach_function :cv_stereo_var_set_fi,:rbind_cv_StereoVar_set_fi,[Cv::StereoVar,:float],:void
        attach_function :cv_stereo_var_get_lambda,:rbind_cv_StereoVar_get_lambda,[Cv::StereoVar],:float
        attach_function :cv_stereo_var_set_lambda,:rbind_cv_StereoVar_set_lambda,[Cv::StereoVar,:float],:void
        attach_function :cv_stereo_var_get_penalization,:rbind_cv_StereoVar_get_penalization,[Cv::StereoVar],:int
        attach_function :cv_stereo_var_set_penalization,:rbind_cv_StereoVar_set_penalization,[Cv::StereoVar,:int],:void
        attach_function :cv_stereo_var_get_cycle,:rbind_cv_StereoVar_get_cycle,[Cv::StereoVar],:int
        attach_function :cv_stereo_var_set_cycle,:rbind_cv_StereoVar_set_cycle,[Cv::StereoVar,:int],:void
        attach_function :cv_stereo_var_get_flags,:rbind_cv_StereoVar_get_flags,[Cv::StereoVar],:int
        attach_function :cv_stereo_var_set_flags,:rbind_cv_StereoVar_set_flags,[Cv::StereoVar,:int],:void
        attach_function :cv_stereo_var_stereo_var,:rbind_cv_StereoVar_StereoVar,[],Cv::StereoVar
        attach_function :cv_stereo_var_stereo_var2,:rbind_cv_StereoVar_StereoVar2,[:int,:double,:int,:int,:int,:int,:double,:float,:float,:int,:int,:int],Cv::StereoVar
        attach_function :cv_stereo_var_compute,:rbind_cv_StereoVar_compute,[Cv::StereoVar,Cv::Mat,Cv::Mat,Cv::Mat],:void
        
        #methods for cv::FaceRecognizer
        attach_function :delete_cv_face_recognizer,:rbind_delete_cv_FaceRecognizer,[Cv::FaceRecognizer],:void
        attach_function :delete_cv_face_recognizer_struct,:rbind_delete_cv_FaceRecognizer,[Cv::FaceRecognizerStruct],:void
        attach_function :cv_face_recognizer_train,:rbind_cv_FaceRecognizer_train,[Cv::FaceRecognizer,VectorMat,Cv::Mat],:void
        attach_function :cv_face_recognizer_update,:rbind_cv_FaceRecognizer_update,[Cv::FaceRecognizer,VectorMat,Cv::Mat],:void
        attach_function :cv_face_recognizer_predict,:rbind_cv_FaceRecognizer_predict,[Cv::FaceRecognizer,Cv::Mat,:int,:double],:void
        attach_function :cv_face_recognizer_save,:rbind_cv_FaceRecognizer_save,[Cv::FaceRecognizer,Cv::String],:void
        attach_function :cv_face_recognizer_load,:rbind_cv_FaceRecognizer_load,[Cv::FaceRecognizer,Cv::String],:void
        attach_function :cv_face_recognizer_get_int,:rbind_cv_FaceRecognizer_getInt,[Cv::FaceRecognizer,Cv::String],:int
        attach_function :cv_face_recognizer_get_double,:rbind_cv_FaceRecognizer_getDouble,[Cv::FaceRecognizer,Cv::String],:double
        attach_function :cv_face_recognizer_get_bool,:rbind_cv_FaceRecognizer_getBool,[Cv::FaceRecognizer,Cv::String],:bool
        attach_function :cv_face_recognizer_get_string,:rbind_cv_FaceRecognizer_getString,[Cv::FaceRecognizer,Cv::String],Cv::String
        attach_function :cv_face_recognizer_get_mat,:rbind_cv_FaceRecognizer_getMat,[Cv::FaceRecognizer,Cv::String],Cv::Mat
        attach_function :cv_face_recognizer_get_mat_vector,:rbind_cv_FaceRecognizer_getMatVector,[Cv::FaceRecognizer,Cv::String],VectorMat
        attach_function :cv_face_recognizer_get_algorithm,:rbind_cv_FaceRecognizer_getAlgorithm,[Cv::FaceRecognizer,Cv::String],PtrAlgorithm
        attach_function :cv_face_recognizer_set_int,:rbind_cv_FaceRecognizer_setInt,[Cv::FaceRecognizer,Cv::String,:int],:void
        attach_function :cv_face_recognizer_set_double,:rbind_cv_FaceRecognizer_setDouble,[Cv::FaceRecognizer,Cv::String,:double],:void
        attach_function :cv_face_recognizer_set_bool,:rbind_cv_FaceRecognizer_setBool,[Cv::FaceRecognizer,Cv::String,:bool],:void
        attach_function :cv_face_recognizer_set_string,:rbind_cv_FaceRecognizer_setString,[Cv::FaceRecognizer,Cv::String,Cv::String],:void
        attach_function :cv_face_recognizer_set_mat,:rbind_cv_FaceRecognizer_setMat,[Cv::FaceRecognizer,Cv::String,Cv::Mat],:void
        attach_function :cv_face_recognizer_set_mat_vector,:rbind_cv_FaceRecognizer_setMatVector,[Cv::FaceRecognizer,Cv::String,VectorMat],:void
        attach_function :cv_face_recognizer_set_algorithm,:rbind_cv_FaceRecognizer_setAlgorithm,[Cv::FaceRecognizer,Cv::String,PtrAlgorithm],:void
        attach_function :cv_face_recognizer_param_help,:rbind_cv_FaceRecognizer_paramHelp,[Cv::FaceRecognizer,Cv::String],Cv::String
        attach_function :cv_face_recognizer_param_type,:rbind_cv_FaceRecognizer_paramType,[Cv::FaceRecognizer,Cv::String],:int
        attach_function :cv_face_recognizer_get_params,:rbind_cv_FaceRecognizer_getParams,[Cv::FaceRecognizer,VectorString],:void
        attach_function :cv_face_recognizer_get_list,:rbind_cv_FaceRecognizer_getList,[VectorString],:void
        attach_function :cv_face_recognizer__create,:rbind_cv_FaceRecognizer__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::StereoMatcher
        attach_function :delete_cv_stereo_matcher,:rbind_delete_cv_StereoMatcher,[Cv::StereoMatcher],:void
        attach_function :delete_cv_stereo_matcher_struct,:rbind_delete_cv_StereoMatcher,[Cv::StereoMatcherStruct],:void
        attach_function :cv_stereo_matcher_compute,:rbind_cv_StereoMatcher_compute,[Cv::StereoMatcher,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_stereo_matcher_set_min_disparity,:rbind_cv_StereoMatcher_setMinDisparity,[Cv::StereoMatcher,:int],:void
        attach_function :cv_stereo_matcher_set_num_disparities,:rbind_cv_StereoMatcher_setNumDisparities,[Cv::StereoMatcher,:int],:void
        attach_function :cv_stereo_matcher_set_block_size,:rbind_cv_StereoMatcher_setBlockSize,[Cv::StereoMatcher,:int],:void
        attach_function :cv_stereo_matcher_set_speckle_window_size,:rbind_cv_StereoMatcher_setSpeckleWindowSize,[Cv::StereoMatcher,:int],:void
        attach_function :cv_stereo_matcher_set_speckle_range,:rbind_cv_StereoMatcher_setSpeckleRange,[Cv::StereoMatcher,:int],:void
        attach_function :cv_stereo_matcher_set_disp12_max_diff,:rbind_cv_StereoMatcher_setDisp12MaxDiff,[Cv::StereoMatcher,:int],:void
        attach_function :cv_stereo_matcher_get_int,:rbind_cv_StereoMatcher_getInt,[Cv::StereoMatcher,Cv::String],:int
        attach_function :cv_stereo_matcher_get_double,:rbind_cv_StereoMatcher_getDouble,[Cv::StereoMatcher,Cv::String],:double
        attach_function :cv_stereo_matcher_get_bool,:rbind_cv_StereoMatcher_getBool,[Cv::StereoMatcher,Cv::String],:bool
        attach_function :cv_stereo_matcher_get_string,:rbind_cv_StereoMatcher_getString,[Cv::StereoMatcher,Cv::String],Cv::String
        attach_function :cv_stereo_matcher_get_mat,:rbind_cv_StereoMatcher_getMat,[Cv::StereoMatcher,Cv::String],Cv::Mat
        attach_function :cv_stereo_matcher_get_mat_vector,:rbind_cv_StereoMatcher_getMatVector,[Cv::StereoMatcher,Cv::String],VectorMat
        attach_function :cv_stereo_matcher_get_algorithm,:rbind_cv_StereoMatcher_getAlgorithm,[Cv::StereoMatcher,Cv::String],PtrAlgorithm
        attach_function :cv_stereo_matcher_set_int,:rbind_cv_StereoMatcher_setInt,[Cv::StereoMatcher,Cv::String,:int],:void
        attach_function :cv_stereo_matcher_set_double,:rbind_cv_StereoMatcher_setDouble,[Cv::StereoMatcher,Cv::String,:double],:void
        attach_function :cv_stereo_matcher_set_bool,:rbind_cv_StereoMatcher_setBool,[Cv::StereoMatcher,Cv::String,:bool],:void
        attach_function :cv_stereo_matcher_set_string,:rbind_cv_StereoMatcher_setString,[Cv::StereoMatcher,Cv::String,Cv::String],:void
        attach_function :cv_stereo_matcher_set_mat,:rbind_cv_StereoMatcher_setMat,[Cv::StereoMatcher,Cv::String,Cv::Mat],:void
        attach_function :cv_stereo_matcher_set_mat_vector,:rbind_cv_StereoMatcher_setMatVector,[Cv::StereoMatcher,Cv::String,VectorMat],:void
        attach_function :cv_stereo_matcher_set_algorithm,:rbind_cv_StereoMatcher_setAlgorithm,[Cv::StereoMatcher,Cv::String,PtrAlgorithm],:void
        attach_function :cv_stereo_matcher_param_help,:rbind_cv_StereoMatcher_paramHelp,[Cv::StereoMatcher,Cv::String],Cv::String
        attach_function :cv_stereo_matcher_param_type,:rbind_cv_StereoMatcher_paramType,[Cv::StereoMatcher,Cv::String],:int
        attach_function :cv_stereo_matcher_get_params,:rbind_cv_StereoMatcher_getParams,[Cv::StereoMatcher,VectorString],:void
        attach_function :cv_stereo_matcher_get_list,:rbind_cv_StereoMatcher_getList,[VectorString],:void
        attach_function :cv_stereo_matcher__create,:rbind_cv_StereoMatcher__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::StereoBM
        attach_function :delete_cv_stereobm,:rbind_delete_cv_StereoBM,[Cv::StereoBM],:void
        attach_function :delete_cv_stereobm_struct,:rbind_delete_cv_StereoBM,[Cv::StereoBMStruct],:void
        attach_function :cv_stereobm_set_pre_filter_type,:rbind_cv_StereoBM_setPreFilterType,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_pre_filter_size,:rbind_cv_StereoBM_setPreFilterSize,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_pre_filter_cap,:rbind_cv_StereoBM_setPreFilterCap,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_texture_threshold,:rbind_cv_StereoBM_setTextureThreshold,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_uniqueness_ratio,:rbind_cv_StereoBM_setUniquenessRatio,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_smaller_block_size,:rbind_cv_StereoBM_setSmallerBlockSize,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_setroi1,:rbind_cv_StereoBM_setROI1,[Cv::StereoBM,Cv::Rect],:void
        attach_function :cv_stereobm_setroi2,:rbind_cv_StereoBM_setROI2,[Cv::StereoBM,Cv::Rect],:void
        attach_function :cv_stereobm_compute,:rbind_cv_StereoBM_compute,[Cv::StereoBM,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_stereobm_set_min_disparity,:rbind_cv_StereoBM_setMinDisparity,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_num_disparities,:rbind_cv_StereoBM_setNumDisparities,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_block_size,:rbind_cv_StereoBM_setBlockSize,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_speckle_window_size,:rbind_cv_StereoBM_setSpeckleWindowSize,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_speckle_range,:rbind_cv_StereoBM_setSpeckleRange,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_set_disp12_max_diff,:rbind_cv_StereoBM_setDisp12MaxDiff,[Cv::StereoBM,:int],:void
        attach_function :cv_stereobm_get_int,:rbind_cv_StereoBM_getInt,[Cv::StereoBM,Cv::String],:int
        attach_function :cv_stereobm_get_double,:rbind_cv_StereoBM_getDouble,[Cv::StereoBM,Cv::String],:double
        attach_function :cv_stereobm_get_bool,:rbind_cv_StereoBM_getBool,[Cv::StereoBM,Cv::String],:bool
        attach_function :cv_stereobm_get_string,:rbind_cv_StereoBM_getString,[Cv::StereoBM,Cv::String],Cv::String
        attach_function :cv_stereobm_get_mat,:rbind_cv_StereoBM_getMat,[Cv::StereoBM,Cv::String],Cv::Mat
        attach_function :cv_stereobm_get_mat_vector,:rbind_cv_StereoBM_getMatVector,[Cv::StereoBM,Cv::String],VectorMat
        attach_function :cv_stereobm_get_algorithm,:rbind_cv_StereoBM_getAlgorithm,[Cv::StereoBM,Cv::String],PtrAlgorithm
        attach_function :cv_stereobm_set_int,:rbind_cv_StereoBM_setInt,[Cv::StereoBM,Cv::String,:int],:void
        attach_function :cv_stereobm_set_double,:rbind_cv_StereoBM_setDouble,[Cv::StereoBM,Cv::String,:double],:void
        attach_function :cv_stereobm_set_bool,:rbind_cv_StereoBM_setBool,[Cv::StereoBM,Cv::String,:bool],:void
        attach_function :cv_stereobm_set_string,:rbind_cv_StereoBM_setString,[Cv::StereoBM,Cv::String,Cv::String],:void
        attach_function :cv_stereobm_set_mat,:rbind_cv_StereoBM_setMat,[Cv::StereoBM,Cv::String,Cv::Mat],:void
        attach_function :cv_stereobm_set_mat_vector,:rbind_cv_StereoBM_setMatVector,[Cv::StereoBM,Cv::String,VectorMat],:void
        attach_function :cv_stereobm_set_algorithm,:rbind_cv_StereoBM_setAlgorithm,[Cv::StereoBM,Cv::String,PtrAlgorithm],:void
        attach_function :cv_stereobm_param_help,:rbind_cv_StereoBM_paramHelp,[Cv::StereoBM,Cv::String],Cv::String
        attach_function :cv_stereobm_param_type,:rbind_cv_StereoBM_paramType,[Cv::StereoBM,Cv::String],:int
        attach_function :cv_stereobm_get_params,:rbind_cv_StereoBM_getParams,[Cv::StereoBM,VectorString],:void
        attach_function :cv_stereobm_get_list,:rbind_cv_StereoBM_getList,[VectorString],:void
        attach_function :cv_stereobm__create,:rbind_cv_StereoBM__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::StereoSGBM
        attach_function :delete_cv_stereosgbm,:rbind_delete_cv_StereoSGBM,[Cv::StereoSGBM],:void
        attach_function :delete_cv_stereosgbm_struct,:rbind_delete_cv_StereoSGBM,[Cv::StereoSGBMStruct],:void
        attach_function :cv_stereosgbm_set_pre_filter_cap,:rbind_cv_StereoSGBM_setPreFilterCap,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_set_uniqueness_ratio,:rbind_cv_StereoSGBM_setUniquenessRatio,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_setp1,:rbind_cv_StereoSGBM_setP1,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_setp2,:rbind_cv_StereoSGBM_setP2,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_set_mode,:rbind_cv_StereoSGBM_setMode,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_compute,:rbind_cv_StereoSGBM_compute,[Cv::StereoSGBM,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_stereosgbm_set_min_disparity,:rbind_cv_StereoSGBM_setMinDisparity,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_set_num_disparities,:rbind_cv_StereoSGBM_setNumDisparities,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_set_block_size,:rbind_cv_StereoSGBM_setBlockSize,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_set_speckle_window_size,:rbind_cv_StereoSGBM_setSpeckleWindowSize,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_set_speckle_range,:rbind_cv_StereoSGBM_setSpeckleRange,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_set_disp12_max_diff,:rbind_cv_StereoSGBM_setDisp12MaxDiff,[Cv::StereoSGBM,:int],:void
        attach_function :cv_stereosgbm_get_int,:rbind_cv_StereoSGBM_getInt,[Cv::StereoSGBM,Cv::String],:int
        attach_function :cv_stereosgbm_get_double,:rbind_cv_StereoSGBM_getDouble,[Cv::StereoSGBM,Cv::String],:double
        attach_function :cv_stereosgbm_get_bool,:rbind_cv_StereoSGBM_getBool,[Cv::StereoSGBM,Cv::String],:bool
        attach_function :cv_stereosgbm_get_string,:rbind_cv_StereoSGBM_getString,[Cv::StereoSGBM,Cv::String],Cv::String
        attach_function :cv_stereosgbm_get_mat,:rbind_cv_StereoSGBM_getMat,[Cv::StereoSGBM,Cv::String],Cv::Mat
        attach_function :cv_stereosgbm_get_mat_vector,:rbind_cv_StereoSGBM_getMatVector,[Cv::StereoSGBM,Cv::String],VectorMat
        attach_function :cv_stereosgbm_get_algorithm,:rbind_cv_StereoSGBM_getAlgorithm,[Cv::StereoSGBM,Cv::String],PtrAlgorithm
        attach_function :cv_stereosgbm_set_int,:rbind_cv_StereoSGBM_setInt,[Cv::StereoSGBM,Cv::String,:int],:void
        attach_function :cv_stereosgbm_set_double,:rbind_cv_StereoSGBM_setDouble,[Cv::StereoSGBM,Cv::String,:double],:void
        attach_function :cv_stereosgbm_set_bool,:rbind_cv_StereoSGBM_setBool,[Cv::StereoSGBM,Cv::String,:bool],:void
        attach_function :cv_stereosgbm_set_string,:rbind_cv_StereoSGBM_setString,[Cv::StereoSGBM,Cv::String,Cv::String],:void
        attach_function :cv_stereosgbm_set_mat,:rbind_cv_StereoSGBM_setMat,[Cv::StereoSGBM,Cv::String,Cv::Mat],:void
        attach_function :cv_stereosgbm_set_mat_vector,:rbind_cv_StereoSGBM_setMatVector,[Cv::StereoSGBM,Cv::String,VectorMat],:void
        attach_function :cv_stereosgbm_set_algorithm,:rbind_cv_StereoSGBM_setAlgorithm,[Cv::StereoSGBM,Cv::String,PtrAlgorithm],:void
        attach_function :cv_stereosgbm_param_help,:rbind_cv_StereoSGBM_paramHelp,[Cv::StereoSGBM,Cv::String],Cv::String
        attach_function :cv_stereosgbm_param_type,:rbind_cv_StereoSGBM_paramType,[Cv::StereoSGBM,Cv::String],:int
        attach_function :cv_stereosgbm_get_params,:rbind_cv_StereoSGBM_getParams,[Cv::StereoSGBM,VectorString],:void
        attach_function :cv_stereosgbm_get_list,:rbind_cv_StereoSGBM_getList,[VectorString],:void
        attach_function :cv_stereosgbm__create,:rbind_cv_StereoSGBM__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::DescriptorExtractor
        attach_function :delete_cv_descriptor_extractor,:rbind_delete_cv_DescriptorExtractor,[Cv::DescriptorExtractor],:void
        attach_function :delete_cv_descriptor_extractor_struct,:rbind_delete_cv_DescriptorExtractor,[Cv::DescriptorExtractorStruct],:void
        attach_function :cv_descriptor_extractor_compute,:rbind_cv_DescriptorExtractor_compute,[Cv::DescriptorExtractor,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_descriptor_extractor_empty,:rbind_cv_DescriptorExtractor_empty,[Cv::DescriptorExtractor],:bool
        attach_function :cv_descriptor_extractor_create,:rbind_cv_DescriptorExtractor_create,[Cv::String],PtrDescriptorExtractor
        attach_function :cv_descriptor_extractor_get_int,:rbind_cv_DescriptorExtractor_getInt,[Cv::DescriptorExtractor,Cv::String],:int
        attach_function :cv_descriptor_extractor_get_double,:rbind_cv_DescriptorExtractor_getDouble,[Cv::DescriptorExtractor,Cv::String],:double
        attach_function :cv_descriptor_extractor_get_bool,:rbind_cv_DescriptorExtractor_getBool,[Cv::DescriptorExtractor,Cv::String],:bool
        attach_function :cv_descriptor_extractor_get_string,:rbind_cv_DescriptorExtractor_getString,[Cv::DescriptorExtractor,Cv::String],Cv::String
        attach_function :cv_descriptor_extractor_get_mat,:rbind_cv_DescriptorExtractor_getMat,[Cv::DescriptorExtractor,Cv::String],Cv::Mat
        attach_function :cv_descriptor_extractor_get_mat_vector,:rbind_cv_DescriptorExtractor_getMatVector,[Cv::DescriptorExtractor,Cv::String],VectorMat
        attach_function :cv_descriptor_extractor_get_algorithm,:rbind_cv_DescriptorExtractor_getAlgorithm,[Cv::DescriptorExtractor,Cv::String],PtrAlgorithm
        attach_function :cv_descriptor_extractor_set_int,:rbind_cv_DescriptorExtractor_setInt,[Cv::DescriptorExtractor,Cv::String,:int],:void
        attach_function :cv_descriptor_extractor_set_double,:rbind_cv_DescriptorExtractor_setDouble,[Cv::DescriptorExtractor,Cv::String,:double],:void
        attach_function :cv_descriptor_extractor_set_bool,:rbind_cv_DescriptorExtractor_setBool,[Cv::DescriptorExtractor,Cv::String,:bool],:void
        attach_function :cv_descriptor_extractor_set_string,:rbind_cv_DescriptorExtractor_setString,[Cv::DescriptorExtractor,Cv::String,Cv::String],:void
        attach_function :cv_descriptor_extractor_set_mat,:rbind_cv_DescriptorExtractor_setMat,[Cv::DescriptorExtractor,Cv::String,Cv::Mat],:void
        attach_function :cv_descriptor_extractor_set_mat_vector,:rbind_cv_DescriptorExtractor_setMatVector,[Cv::DescriptorExtractor,Cv::String,VectorMat],:void
        attach_function :cv_descriptor_extractor_set_algorithm,:rbind_cv_DescriptorExtractor_setAlgorithm,[Cv::DescriptorExtractor,Cv::String,PtrAlgorithm],:void
        attach_function :cv_descriptor_extractor_param_help,:rbind_cv_DescriptorExtractor_paramHelp,[Cv::DescriptorExtractor,Cv::String],Cv::String
        attach_function :cv_descriptor_extractor_param_type,:rbind_cv_DescriptorExtractor_paramType,[Cv::DescriptorExtractor,Cv::String],:int
        attach_function :cv_descriptor_extractor_get_params,:rbind_cv_DescriptorExtractor_getParams,[Cv::DescriptorExtractor,VectorString],:void
        attach_function :cv_descriptor_extractor_get_list,:rbind_cv_DescriptorExtractor_getList,[VectorString],:void
        attach_function :cv_descriptor_extractor__create,:rbind_cv_DescriptorExtractor__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::Feature2D
        attach_function :delete_cv_feature2d,:rbind_delete_cv_Feature2D,[Cv::Feature2D],:void
        attach_function :delete_cv_feature2d_struct,:rbind_delete_cv_Feature2D,[Cv::Feature2DStruct],:void
        attach_function :cv_feature2d_detect_and_compute,:rbind_cv_Feature2D_detectAndCompute,[Cv::Feature2D,Cv::Mat,Cv::Mat,VectorKeyPoint,Cv::Mat,:bool],:void
        attach_function :cv_feature2d_compute,:rbind_cv_Feature2D_compute,[Cv::Feature2D,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_feature2d_create,:rbind_cv_Feature2D_create,[Cv::String],PtrFeature2D
        attach_function :cv_feature2d_detect,:rbind_cv_Feature2D_detect,[Cv::Feature2D,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_feature2d_empty,:rbind_cv_Feature2D_empty,[Cv::Feature2D],:bool
        attach_function :cv_feature2d_empty2,:rbind_cv_Feature2D_empty2,[Cv::Feature2D],:bool
        attach_function :cv_feature2d_get_int,:rbind_cv_Feature2D_getInt,[Cv::Feature2D,Cv::String],:int
        attach_function :cv_feature2d_get_double,:rbind_cv_Feature2D_getDouble,[Cv::Feature2D,Cv::String],:double
        attach_function :cv_feature2d_get_bool,:rbind_cv_Feature2D_getBool,[Cv::Feature2D,Cv::String],:bool
        attach_function :cv_feature2d_get_string,:rbind_cv_Feature2D_getString,[Cv::Feature2D,Cv::String],Cv::String
        attach_function :cv_feature2d_get_mat,:rbind_cv_Feature2D_getMat,[Cv::Feature2D,Cv::String],Cv::Mat
        attach_function :cv_feature2d_get_mat_vector,:rbind_cv_Feature2D_getMatVector,[Cv::Feature2D,Cv::String],VectorMat
        attach_function :cv_feature2d_get_algorithm,:rbind_cv_Feature2D_getAlgorithm,[Cv::Feature2D,Cv::String],PtrAlgorithm
        attach_function :cv_feature2d_set_int,:rbind_cv_Feature2D_setInt,[Cv::Feature2D,Cv::String,:int],:void
        attach_function :cv_feature2d_set_double,:rbind_cv_Feature2D_setDouble,[Cv::Feature2D,Cv::String,:double],:void
        attach_function :cv_feature2d_set_bool,:rbind_cv_Feature2D_setBool,[Cv::Feature2D,Cv::String,:bool],:void
        attach_function :cv_feature2d_set_string,:rbind_cv_Feature2D_setString,[Cv::Feature2D,Cv::String,Cv::String],:void
        attach_function :cv_feature2d_set_mat,:rbind_cv_Feature2D_setMat,[Cv::Feature2D,Cv::String,Cv::Mat],:void
        attach_function :cv_feature2d_set_mat_vector,:rbind_cv_Feature2D_setMatVector,[Cv::Feature2D,Cv::String,VectorMat],:void
        attach_function :cv_feature2d_set_algorithm,:rbind_cv_Feature2D_setAlgorithm,[Cv::Feature2D,Cv::String,PtrAlgorithm],:void
        attach_function :cv_feature2d_param_help,:rbind_cv_Feature2D_paramHelp,[Cv::Feature2D,Cv::String],Cv::String
        attach_function :cv_feature2d_param_type,:rbind_cv_Feature2D_paramType,[Cv::Feature2D,Cv::String],:int
        attach_function :cv_feature2d_get_params,:rbind_cv_Feature2D_getParams,[Cv::Feature2D,VectorString],:void
        attach_function :cv_feature2d_get_list,:rbind_cv_Feature2D_getList,[VectorString],:void
        attach_function :cv_feature2d__create,:rbind_cv_Feature2D__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::BRISK
        attach_function :delete_cv_brisk,:rbind_delete_cv_BRISK,[Cv::BRISK],:void
        attach_function :delete_cv_brisk_struct,:rbind_delete_cv_BRISK,[Cv::BRISKStruct],:void
        attach_function :cv_brisk_brisk,:rbind_cv_BRISK_BRISK,[:int,:int,:float],Cv::BRISK
        attach_function :cv_brisk_brisk2,:rbind_cv_BRISK_BRISK2,[VectorFloat,VectorInt,:float,:float,VectorInt],Cv::BRISK
        attach_function :cv_brisk_generate_kernel,:rbind_cv_BRISK_generateKernel,[Cv::BRISK,VectorFloat,VectorInt,:float,:float,VectorInt],:void
        attach_function :cv_brisk_detect_and_compute,:rbind_cv_BRISK_detectAndCompute,[Cv::BRISK,Cv::Mat,Cv::Mat,VectorKeyPoint,Cv::Mat,:bool],:void
        attach_function :cv_brisk_compute,:rbind_cv_BRISK_compute,[Cv::BRISK,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_brisk_create,:rbind_cv_BRISK_create,[Cv::String],PtrFeature2D
        attach_function :cv_brisk_detect,:rbind_cv_BRISK_detect,[Cv::BRISK,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_brisk_empty,:rbind_cv_BRISK_empty,[Cv::BRISK],:bool
        attach_function :cv_brisk_empty2,:rbind_cv_BRISK_empty2,[Cv::BRISK],:bool
        attach_function :cv_brisk_get_int,:rbind_cv_BRISK_getInt,[Cv::BRISK,Cv::String],:int
        attach_function :cv_brisk_get_double,:rbind_cv_BRISK_getDouble,[Cv::BRISK,Cv::String],:double
        attach_function :cv_brisk_get_bool,:rbind_cv_BRISK_getBool,[Cv::BRISK,Cv::String],:bool
        attach_function :cv_brisk_get_string,:rbind_cv_BRISK_getString,[Cv::BRISK,Cv::String],Cv::String
        attach_function :cv_brisk_get_mat,:rbind_cv_BRISK_getMat,[Cv::BRISK,Cv::String],Cv::Mat
        attach_function :cv_brisk_get_mat_vector,:rbind_cv_BRISK_getMatVector,[Cv::BRISK,Cv::String],VectorMat
        attach_function :cv_brisk_get_algorithm,:rbind_cv_BRISK_getAlgorithm,[Cv::BRISK,Cv::String],PtrAlgorithm
        attach_function :cv_brisk_set_int,:rbind_cv_BRISK_setInt,[Cv::BRISK,Cv::String,:int],:void
        attach_function :cv_brisk_set_double,:rbind_cv_BRISK_setDouble,[Cv::BRISK,Cv::String,:double],:void
        attach_function :cv_brisk_set_bool,:rbind_cv_BRISK_setBool,[Cv::BRISK,Cv::String,:bool],:void
        attach_function :cv_brisk_set_string,:rbind_cv_BRISK_setString,[Cv::BRISK,Cv::String,Cv::String],:void
        attach_function :cv_brisk_set_mat,:rbind_cv_BRISK_setMat,[Cv::BRISK,Cv::String,Cv::Mat],:void
        attach_function :cv_brisk_set_mat_vector,:rbind_cv_BRISK_setMatVector,[Cv::BRISK,Cv::String,VectorMat],:void
        attach_function :cv_brisk_set_algorithm,:rbind_cv_BRISK_setAlgorithm,[Cv::BRISK,Cv::String,PtrAlgorithm],:void
        attach_function :cv_brisk_param_help,:rbind_cv_BRISK_paramHelp,[Cv::BRISK,Cv::String],Cv::String
        attach_function :cv_brisk_param_type,:rbind_cv_BRISK_paramType,[Cv::BRISK,Cv::String],:int
        attach_function :cv_brisk_get_params,:rbind_cv_BRISK_getParams,[Cv::BRISK,VectorString],:void
        attach_function :cv_brisk_get_list,:rbind_cv_BRISK_getList,[VectorString],:void
        attach_function :cv_brisk_create,:rbind_cv_BRISK__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::ORB
        attach_function :delete_cv_orb,:rbind_delete_cv_ORB,[Cv::ORB],:void
        attach_function :delete_cv_orb_struct,:rbind_delete_cv_ORB,[Cv::ORBStruct],:void
        attach_function :cv_orb_orb,:rbind_cv_ORB_ORB,[:int,:float,:int,:int,:int,:int,:int,:int],Cv::ORB
        attach_function :cv_orb_detect_and_compute,:rbind_cv_ORB_detectAndCompute,[Cv::ORB,Cv::Mat,Cv::Mat,VectorKeyPoint,Cv::Mat,:bool],:void
        attach_function :cv_orb_compute,:rbind_cv_ORB_compute,[Cv::ORB,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_orb_create,:rbind_cv_ORB_create,[Cv::String],PtrFeature2D
        attach_function :cv_orb_detect,:rbind_cv_ORB_detect,[Cv::ORB,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_orb_empty,:rbind_cv_ORB_empty,[Cv::ORB],:bool
        attach_function :cv_orb_empty2,:rbind_cv_ORB_empty2,[Cv::ORB],:bool
        attach_function :cv_orb_get_int,:rbind_cv_ORB_getInt,[Cv::ORB,Cv::String],:int
        attach_function :cv_orb_get_double,:rbind_cv_ORB_getDouble,[Cv::ORB,Cv::String],:double
        attach_function :cv_orb_get_bool,:rbind_cv_ORB_getBool,[Cv::ORB,Cv::String],:bool
        attach_function :cv_orb_get_string,:rbind_cv_ORB_getString,[Cv::ORB,Cv::String],Cv::String
        attach_function :cv_orb_get_mat,:rbind_cv_ORB_getMat,[Cv::ORB,Cv::String],Cv::Mat
        attach_function :cv_orb_get_mat_vector,:rbind_cv_ORB_getMatVector,[Cv::ORB,Cv::String],VectorMat
        attach_function :cv_orb_get_algorithm,:rbind_cv_ORB_getAlgorithm,[Cv::ORB,Cv::String],PtrAlgorithm
        attach_function :cv_orb_set_int,:rbind_cv_ORB_setInt,[Cv::ORB,Cv::String,:int],:void
        attach_function :cv_orb_set_double,:rbind_cv_ORB_setDouble,[Cv::ORB,Cv::String,:double],:void
        attach_function :cv_orb_set_bool,:rbind_cv_ORB_setBool,[Cv::ORB,Cv::String,:bool],:void
        attach_function :cv_orb_set_string,:rbind_cv_ORB_setString,[Cv::ORB,Cv::String,Cv::String],:void
        attach_function :cv_orb_set_mat,:rbind_cv_ORB_setMat,[Cv::ORB,Cv::String,Cv::Mat],:void
        attach_function :cv_orb_set_mat_vector,:rbind_cv_ORB_setMatVector,[Cv::ORB,Cv::String,VectorMat],:void
        attach_function :cv_orb_set_algorithm,:rbind_cv_ORB_setAlgorithm,[Cv::ORB,Cv::String,PtrAlgorithm],:void
        attach_function :cv_orb_param_help,:rbind_cv_ORB_paramHelp,[Cv::ORB,Cv::String],Cv::String
        attach_function :cv_orb_param_type,:rbind_cv_ORB_paramType,[Cv::ORB,Cv::String],:int
        attach_function :cv_orb_get_params,:rbind_cv_ORB_getParams,[Cv::ORB,VectorString],:void
        attach_function :cv_orb_get_list,:rbind_cv_ORB_getList,[VectorString],:void
        attach_function :cv_orb_create,:rbind_cv_ORB__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::FREAK
        
        #methods for cv::MSER
        attach_function :delete_cv_mser,:rbind_delete_cv_MSER,[Cv::MSER],:void
        attach_function :delete_cv_mser_struct,:rbind_delete_cv_MSER,[Cv::MSERStruct],:void
        attach_function :cv_mser_mser,:rbind_cv_MSER_MSER,[:int,:int,:int,:double,:double,:int,:double,:double,:int],Cv::MSER
        attach_function :cv_mser_detect,:rbind_cv_MSER_detect,[Cv::MSER,Cv::Mat,VectorVectorPoint,Cv::Mat],:void
        attach_function :cv_mser_detect1,:rbind_cv_MSER_detect1,[Cv::MSER,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_mser_empty,:rbind_cv_MSER_empty,[Cv::MSER],:bool
        attach_function :cv_mser_create,:rbind_cv_MSER_create,[Cv::String],PtrFeatureDetector
        attach_function :cv_mser_get_int,:rbind_cv_MSER_getInt,[Cv::MSER,Cv::String],:int
        attach_function :cv_mser_get_double,:rbind_cv_MSER_getDouble,[Cv::MSER,Cv::String],:double
        attach_function :cv_mser_get_bool,:rbind_cv_MSER_getBool,[Cv::MSER,Cv::String],:bool
        attach_function :cv_mser_get_string,:rbind_cv_MSER_getString,[Cv::MSER,Cv::String],Cv::String
        attach_function :cv_mser_get_mat,:rbind_cv_MSER_getMat,[Cv::MSER,Cv::String],Cv::Mat
        attach_function :cv_mser_get_mat_vector,:rbind_cv_MSER_getMatVector,[Cv::MSER,Cv::String],VectorMat
        attach_function :cv_mser_get_algorithm,:rbind_cv_MSER_getAlgorithm,[Cv::MSER,Cv::String],PtrAlgorithm
        attach_function :cv_mser_set_int,:rbind_cv_MSER_setInt,[Cv::MSER,Cv::String,:int],:void
        attach_function :cv_mser_set_double,:rbind_cv_MSER_setDouble,[Cv::MSER,Cv::String,:double],:void
        attach_function :cv_mser_set_bool,:rbind_cv_MSER_setBool,[Cv::MSER,Cv::String,:bool],:void
        attach_function :cv_mser_set_string,:rbind_cv_MSER_setString,[Cv::MSER,Cv::String,Cv::String],:void
        attach_function :cv_mser_set_mat,:rbind_cv_MSER_setMat,[Cv::MSER,Cv::String,Cv::Mat],:void
        attach_function :cv_mser_set_mat_vector,:rbind_cv_MSER_setMatVector,[Cv::MSER,Cv::String,VectorMat],:void
        attach_function :cv_mser_set_algorithm,:rbind_cv_MSER_setAlgorithm,[Cv::MSER,Cv::String,PtrAlgorithm],:void
        attach_function :cv_mser_param_help,:rbind_cv_MSER_paramHelp,[Cv::MSER,Cv::String],Cv::String
        attach_function :cv_mser_param_type,:rbind_cv_MSER_paramType,[Cv::MSER,Cv::String],:int
        attach_function :cv_mser_get_params,:rbind_cv_MSER_getParams,[Cv::MSER,VectorString],:void
        attach_function :cv_mser_get_list,:rbind_cv_MSER_getList,[VectorString],:void
        attach_function :cv_mser__create,:rbind_cv_MSER__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::StarDetector
        attach_function :delete_cv_star_detector,:rbind_delete_cv_StarDetector,[Cv::StarDetector],:void
        attach_function :delete_cv_star_detector_struct,:rbind_delete_cv_StarDetector,[Cv::StarDetectorStruct],:void
        attach_function :cv_star_detector_star_detector,:rbind_cv_StarDetector_StarDetector,[:int,:int,:int,:int,:int],Cv::StarDetector
        attach_function :cv_star_detector_detect,:rbind_cv_StarDetector_detect,[Cv::StarDetector,Cv::Mat,VectorKeyPoint],:void
        attach_function :cv_star_detector_detect1,:rbind_cv_StarDetector_detect1,[Cv::StarDetector,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_star_detector_empty,:rbind_cv_StarDetector_empty,[Cv::StarDetector],:bool
        attach_function :cv_star_detector_create,:rbind_cv_StarDetector_create,[Cv::String],PtrFeatureDetector
        attach_function :cv_star_detector_get_int,:rbind_cv_StarDetector_getInt,[Cv::StarDetector,Cv::String],:int
        attach_function :cv_star_detector_get_double,:rbind_cv_StarDetector_getDouble,[Cv::StarDetector,Cv::String],:double
        attach_function :cv_star_detector_get_bool,:rbind_cv_StarDetector_getBool,[Cv::StarDetector,Cv::String],:bool
        attach_function :cv_star_detector_get_string,:rbind_cv_StarDetector_getString,[Cv::StarDetector,Cv::String],Cv::String
        attach_function :cv_star_detector_get_mat,:rbind_cv_StarDetector_getMat,[Cv::StarDetector,Cv::String],Cv::Mat
        attach_function :cv_star_detector_get_mat_vector,:rbind_cv_StarDetector_getMatVector,[Cv::StarDetector,Cv::String],VectorMat
        attach_function :cv_star_detector_get_algorithm,:rbind_cv_StarDetector_getAlgorithm,[Cv::StarDetector,Cv::String],PtrAlgorithm
        attach_function :cv_star_detector_set_int,:rbind_cv_StarDetector_setInt,[Cv::StarDetector,Cv::String,:int],:void
        attach_function :cv_star_detector_set_double,:rbind_cv_StarDetector_setDouble,[Cv::StarDetector,Cv::String,:double],:void
        attach_function :cv_star_detector_set_bool,:rbind_cv_StarDetector_setBool,[Cv::StarDetector,Cv::String,:bool],:void
        attach_function :cv_star_detector_set_string,:rbind_cv_StarDetector_setString,[Cv::StarDetector,Cv::String,Cv::String],:void
        attach_function :cv_star_detector_set_mat,:rbind_cv_StarDetector_setMat,[Cv::StarDetector,Cv::String,Cv::Mat],:void
        attach_function :cv_star_detector_set_mat_vector,:rbind_cv_StarDetector_setMatVector,[Cv::StarDetector,Cv::String,VectorMat],:void
        attach_function :cv_star_detector_set_algorithm,:rbind_cv_StarDetector_setAlgorithm,[Cv::StarDetector,Cv::String,PtrAlgorithm],:void
        attach_function :cv_star_detector_param_help,:rbind_cv_StarDetector_paramHelp,[Cv::StarDetector,Cv::String],Cv::String
        attach_function :cv_star_detector_param_type,:rbind_cv_StarDetector_paramType,[Cv::StarDetector,Cv::String],:int
        attach_function :cv_star_detector_get_params,:rbind_cv_StarDetector_getParams,[Cv::StarDetector,VectorString],:void
        attach_function :cv_star_detector_get_list,:rbind_cv_StarDetector_getList,[VectorString],:void
        attach_function :cv_star_detector__create,:rbind_cv_StarDetector__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::FastFeatureDetector
        attach_function :delete_cv_fast_feature_detector,:rbind_delete_cv_FastFeatureDetector,[Cv::FastFeatureDetector],:void
        attach_function :delete_cv_fast_feature_detector_struct,:rbind_delete_cv_FastFeatureDetector,[Cv::FastFeatureDetectorStruct],:void
        attach_function :cv_fast_feature_detector_fast_feature_detector,:rbind_cv_FastFeatureDetector_FastFeatureDetector,[:int,:bool],Cv::FastFeatureDetector
        attach_function :cv_fast_feature_detector_fast_feature_detector2,:rbind_cv_FastFeatureDetector_FastFeatureDetector2,[:int,:bool,:int],Cv::FastFeatureDetector
        attach_function :cv_fast_feature_detector_detect,:rbind_cv_FastFeatureDetector_detect,[Cv::FastFeatureDetector,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_fast_feature_detector_empty,:rbind_cv_FastFeatureDetector_empty,[Cv::FastFeatureDetector],:bool
        attach_function :cv_fast_feature_detector_create,:rbind_cv_FastFeatureDetector_create,[Cv::String],PtrFeatureDetector
        attach_function :cv_fast_feature_detector_get_int,:rbind_cv_FastFeatureDetector_getInt,[Cv::FastFeatureDetector,Cv::String],:int
        attach_function :cv_fast_feature_detector_get_double,:rbind_cv_FastFeatureDetector_getDouble,[Cv::FastFeatureDetector,Cv::String],:double
        attach_function :cv_fast_feature_detector_get_bool,:rbind_cv_FastFeatureDetector_getBool,[Cv::FastFeatureDetector,Cv::String],:bool
        attach_function :cv_fast_feature_detector_get_string,:rbind_cv_FastFeatureDetector_getString,[Cv::FastFeatureDetector,Cv::String],Cv::String
        attach_function :cv_fast_feature_detector_get_mat,:rbind_cv_FastFeatureDetector_getMat,[Cv::FastFeatureDetector,Cv::String],Cv::Mat
        attach_function :cv_fast_feature_detector_get_mat_vector,:rbind_cv_FastFeatureDetector_getMatVector,[Cv::FastFeatureDetector,Cv::String],VectorMat
        attach_function :cv_fast_feature_detector_get_algorithm,:rbind_cv_FastFeatureDetector_getAlgorithm,[Cv::FastFeatureDetector,Cv::String],PtrAlgorithm
        attach_function :cv_fast_feature_detector_set_int,:rbind_cv_FastFeatureDetector_setInt,[Cv::FastFeatureDetector,Cv::String,:int],:void
        attach_function :cv_fast_feature_detector_set_double,:rbind_cv_FastFeatureDetector_setDouble,[Cv::FastFeatureDetector,Cv::String,:double],:void
        attach_function :cv_fast_feature_detector_set_bool,:rbind_cv_FastFeatureDetector_setBool,[Cv::FastFeatureDetector,Cv::String,:bool],:void
        attach_function :cv_fast_feature_detector_set_string,:rbind_cv_FastFeatureDetector_setString,[Cv::FastFeatureDetector,Cv::String,Cv::String],:void
        attach_function :cv_fast_feature_detector_set_mat,:rbind_cv_FastFeatureDetector_setMat,[Cv::FastFeatureDetector,Cv::String,Cv::Mat],:void
        attach_function :cv_fast_feature_detector_set_mat_vector,:rbind_cv_FastFeatureDetector_setMatVector,[Cv::FastFeatureDetector,Cv::String,VectorMat],:void
        attach_function :cv_fast_feature_detector_set_algorithm,:rbind_cv_FastFeatureDetector_setAlgorithm,[Cv::FastFeatureDetector,Cv::String,PtrAlgorithm],:void
        attach_function :cv_fast_feature_detector_param_help,:rbind_cv_FastFeatureDetector_paramHelp,[Cv::FastFeatureDetector,Cv::String],Cv::String
        attach_function :cv_fast_feature_detector_param_type,:rbind_cv_FastFeatureDetector_paramType,[Cv::FastFeatureDetector,Cv::String],:int
        attach_function :cv_fast_feature_detector_get_params,:rbind_cv_FastFeatureDetector_getParams,[Cv::FastFeatureDetector,VectorString],:void
        attach_function :cv_fast_feature_detector_get_list,:rbind_cv_FastFeatureDetector_getList,[VectorString],:void
        attach_function :cv_fast_feature_detector__create,:rbind_cv_FastFeatureDetector__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::SimpleBlobDetector
        attach_function :delete_cv_simple_blob_detector,:rbind_delete_cv_SimpleBlobDetector,[Cv::SimpleBlobDetector],:void
        attach_function :delete_cv_simple_blob_detector_struct,:rbind_delete_cv_SimpleBlobDetector,[Cv::SimpleBlobDetectorStruct],:void
        attach_function :cv_simple_blob_detector_simple_blob_detector,:rbind_cv_SimpleBlobDetector_SimpleBlobDetector,[Cv::SimpleBlobDetector::Params],Cv::SimpleBlobDetector
        attach_function :cv_simple_blob_detector_detect,:rbind_cv_SimpleBlobDetector_detect,[Cv::SimpleBlobDetector,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_simple_blob_detector_empty,:rbind_cv_SimpleBlobDetector_empty,[Cv::SimpleBlobDetector],:bool
        attach_function :cv_simple_blob_detector_create,:rbind_cv_SimpleBlobDetector_create,[Cv::String],PtrFeatureDetector
        attach_function :cv_simple_blob_detector_get_int,:rbind_cv_SimpleBlobDetector_getInt,[Cv::SimpleBlobDetector,Cv::String],:int
        attach_function :cv_simple_blob_detector_get_double,:rbind_cv_SimpleBlobDetector_getDouble,[Cv::SimpleBlobDetector,Cv::String],:double
        attach_function :cv_simple_blob_detector_get_bool,:rbind_cv_SimpleBlobDetector_getBool,[Cv::SimpleBlobDetector,Cv::String],:bool
        attach_function :cv_simple_blob_detector_get_string,:rbind_cv_SimpleBlobDetector_getString,[Cv::SimpleBlobDetector,Cv::String],Cv::String
        attach_function :cv_simple_blob_detector_get_mat,:rbind_cv_SimpleBlobDetector_getMat,[Cv::SimpleBlobDetector,Cv::String],Cv::Mat
        attach_function :cv_simple_blob_detector_get_mat_vector,:rbind_cv_SimpleBlobDetector_getMatVector,[Cv::SimpleBlobDetector,Cv::String],VectorMat
        attach_function :cv_simple_blob_detector_get_algorithm,:rbind_cv_SimpleBlobDetector_getAlgorithm,[Cv::SimpleBlobDetector,Cv::String],PtrAlgorithm
        attach_function :cv_simple_blob_detector_set_int,:rbind_cv_SimpleBlobDetector_setInt,[Cv::SimpleBlobDetector,Cv::String,:int],:void
        attach_function :cv_simple_blob_detector_set_double,:rbind_cv_SimpleBlobDetector_setDouble,[Cv::SimpleBlobDetector,Cv::String,:double],:void
        attach_function :cv_simple_blob_detector_set_bool,:rbind_cv_SimpleBlobDetector_setBool,[Cv::SimpleBlobDetector,Cv::String,:bool],:void
        attach_function :cv_simple_blob_detector_set_string,:rbind_cv_SimpleBlobDetector_setString,[Cv::SimpleBlobDetector,Cv::String,Cv::String],:void
        attach_function :cv_simple_blob_detector_set_mat,:rbind_cv_SimpleBlobDetector_setMat,[Cv::SimpleBlobDetector,Cv::String,Cv::Mat],:void
        attach_function :cv_simple_blob_detector_set_mat_vector,:rbind_cv_SimpleBlobDetector_setMatVector,[Cv::SimpleBlobDetector,Cv::String,VectorMat],:void
        attach_function :cv_simple_blob_detector_set_algorithm,:rbind_cv_SimpleBlobDetector_setAlgorithm,[Cv::SimpleBlobDetector,Cv::String,PtrAlgorithm],:void
        attach_function :cv_simple_blob_detector_param_help,:rbind_cv_SimpleBlobDetector_paramHelp,[Cv::SimpleBlobDetector,Cv::String],Cv::String
        attach_function :cv_simple_blob_detector_param_type,:rbind_cv_SimpleBlobDetector_paramType,[Cv::SimpleBlobDetector,Cv::String],:int
        attach_function :cv_simple_blob_detector_get_params,:rbind_cv_SimpleBlobDetector_getParams,[Cv::SimpleBlobDetector,VectorString],:void
        attach_function :cv_simple_blob_detector_get_list,:rbind_cv_SimpleBlobDetector_getList,[VectorString],:void
        attach_function :cv_simple_blob_detector__create,:rbind_cv_SimpleBlobDetector__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::SimpleBlobDetector::Params
        attach_function :delete_cv_simple_blob_detector_params,:rbind_delete_cv_SimpleBlobDetector_Params,[Cv::SimpleBlobDetector::Params],:void
        attach_function :delete_cv_simple_blob_detector_params_struct,:rbind_delete_cv_SimpleBlobDetector_Params,[Cv::SimpleBlobDetector::ParamsStruct],:void
        attach_function :cv_simple_blob_detector_params_get_threshold_step,:rbind_cv_SimpleBlobDetector_Params_get_thresholdStep,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_threshold_step,:rbind_cv_SimpleBlobDetector_Params_set_thresholdStep,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_min_threshold,:rbind_cv_SimpleBlobDetector_Params_get_minThreshold,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_min_threshold,:rbind_cv_SimpleBlobDetector_Params_set_minThreshold,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_max_threshold,:rbind_cv_SimpleBlobDetector_Params_get_maxThreshold,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_max_threshold,:rbind_cv_SimpleBlobDetector_Params_set_maxThreshold,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_min_repeatability,:rbind_cv_SimpleBlobDetector_Params_get_minRepeatability,[Cv::SimpleBlobDetector::Params],:size_t
        attach_function :cv_simple_blob_detector_params_set_min_repeatability,:rbind_cv_SimpleBlobDetector_Params_set_minRepeatability,[Cv::SimpleBlobDetector::Params,:size_t],:void
        attach_function :cv_simple_blob_detector_params_get_min_dist_between_blobs,:rbind_cv_SimpleBlobDetector_Params_get_minDistBetweenBlobs,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_min_dist_between_blobs,:rbind_cv_SimpleBlobDetector_Params_set_minDistBetweenBlobs,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_filter_by_color,:rbind_cv_SimpleBlobDetector_Params_get_filterByColor,[Cv::SimpleBlobDetector::Params],:bool
        attach_function :cv_simple_blob_detector_params_set_filter_by_color,:rbind_cv_SimpleBlobDetector_Params_set_filterByColor,[Cv::SimpleBlobDetector::Params,:bool],:void
        attach_function :cv_simple_blob_detector_params_get_blob_color,:rbind_cv_SimpleBlobDetector_Params_get_blobColor,[Cv::SimpleBlobDetector::Params],:uchar
        attach_function :cv_simple_blob_detector_params_set_blob_color,:rbind_cv_SimpleBlobDetector_Params_set_blobColor,[Cv::SimpleBlobDetector::Params,:uchar],:void
        attach_function :cv_simple_blob_detector_params_get_filter_by_area,:rbind_cv_SimpleBlobDetector_Params_get_filterByArea,[Cv::SimpleBlobDetector::Params],:bool
        attach_function :cv_simple_blob_detector_params_set_filter_by_area,:rbind_cv_SimpleBlobDetector_Params_set_filterByArea,[Cv::SimpleBlobDetector::Params,:bool],:void
        attach_function :cv_simple_blob_detector_params_get_min_area,:rbind_cv_SimpleBlobDetector_Params_get_minArea,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_min_area,:rbind_cv_SimpleBlobDetector_Params_set_minArea,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_max_area,:rbind_cv_SimpleBlobDetector_Params_get_maxArea,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_max_area,:rbind_cv_SimpleBlobDetector_Params_set_maxArea,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_filter_by_circularity,:rbind_cv_SimpleBlobDetector_Params_get_filterByCircularity,[Cv::SimpleBlobDetector::Params],:bool
        attach_function :cv_simple_blob_detector_params_set_filter_by_circularity,:rbind_cv_SimpleBlobDetector_Params_set_filterByCircularity,[Cv::SimpleBlobDetector::Params,:bool],:void
        attach_function :cv_simple_blob_detector_params_get_min_circularity,:rbind_cv_SimpleBlobDetector_Params_get_minCircularity,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_min_circularity,:rbind_cv_SimpleBlobDetector_Params_set_minCircularity,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_max_circularity,:rbind_cv_SimpleBlobDetector_Params_get_maxCircularity,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_max_circularity,:rbind_cv_SimpleBlobDetector_Params_set_maxCircularity,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_filter_by_inertia,:rbind_cv_SimpleBlobDetector_Params_get_filterByInertia,[Cv::SimpleBlobDetector::Params],:bool
        attach_function :cv_simple_blob_detector_params_set_filter_by_inertia,:rbind_cv_SimpleBlobDetector_Params_set_filterByInertia,[Cv::SimpleBlobDetector::Params,:bool],:void
        attach_function :cv_simple_blob_detector_params_get_min_inertia_ratio,:rbind_cv_SimpleBlobDetector_Params_get_minInertiaRatio,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_min_inertia_ratio,:rbind_cv_SimpleBlobDetector_Params_set_minInertiaRatio,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_max_inertia_ratio,:rbind_cv_SimpleBlobDetector_Params_get_maxInertiaRatio,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_max_inertia_ratio,:rbind_cv_SimpleBlobDetector_Params_set_maxInertiaRatio,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_filter_by_convexity,:rbind_cv_SimpleBlobDetector_Params_get_filterByConvexity,[Cv::SimpleBlobDetector::Params],:bool
        attach_function :cv_simple_blob_detector_params_set_filter_by_convexity,:rbind_cv_SimpleBlobDetector_Params_set_filterByConvexity,[Cv::SimpleBlobDetector::Params,:bool],:void
        attach_function :cv_simple_blob_detector_params_get_min_convexity,:rbind_cv_SimpleBlobDetector_Params_get_minConvexity,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_min_convexity,:rbind_cv_SimpleBlobDetector_Params_set_minConvexity,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_get_max_convexity,:rbind_cv_SimpleBlobDetector_Params_get_maxConvexity,[Cv::SimpleBlobDetector::Params],:float
        attach_function :cv_simple_blob_detector_params_set_max_convexity,:rbind_cv_SimpleBlobDetector_Params_set_maxConvexity,[Cv::SimpleBlobDetector::Params,:float],:void
        attach_function :cv_simple_blob_detector_params_params,:rbind_cv_SimpleBlobDetector_Params_Params,[],Cv::SimpleBlobDetector::Params
        
        #methods for cv::GridAdaptedFeatureDetector
        attach_function :delete_cv_grid_adapted_feature_detector,:rbind_delete_cv_GridAdaptedFeatureDetector,[Cv::GridAdaptedFeatureDetector],:void
        attach_function :delete_cv_grid_adapted_feature_detector_struct,:rbind_delete_cv_GridAdaptedFeatureDetector,[Cv::GridAdaptedFeatureDetectorStruct],:void
        attach_function :cv_grid_adapted_feature_detector_grid_adapted_feature_detector,:rbind_cv_GridAdaptedFeatureDetector_GridAdaptedFeatureDetector,[PtrFeatureDetector,:int,:int,:int],Cv::GridAdaptedFeatureDetector
        attach_function :cv_grid_adapted_feature_detector_detect,:rbind_cv_GridAdaptedFeatureDetector_detect,[Cv::GridAdaptedFeatureDetector,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_grid_adapted_feature_detector_empty,:rbind_cv_GridAdaptedFeatureDetector_empty,[Cv::GridAdaptedFeatureDetector],:bool
        attach_function :cv_grid_adapted_feature_detector_create,:rbind_cv_GridAdaptedFeatureDetector_create,[Cv::String],PtrFeatureDetector
        attach_function :cv_grid_adapted_feature_detector_get_int,:rbind_cv_GridAdaptedFeatureDetector_getInt,[Cv::GridAdaptedFeatureDetector,Cv::String],:int
        attach_function :cv_grid_adapted_feature_detector_get_double,:rbind_cv_GridAdaptedFeatureDetector_getDouble,[Cv::GridAdaptedFeatureDetector,Cv::String],:double
        attach_function :cv_grid_adapted_feature_detector_get_bool,:rbind_cv_GridAdaptedFeatureDetector_getBool,[Cv::GridAdaptedFeatureDetector,Cv::String],:bool
        attach_function :cv_grid_adapted_feature_detector_get_string,:rbind_cv_GridAdaptedFeatureDetector_getString,[Cv::GridAdaptedFeatureDetector,Cv::String],Cv::String
        attach_function :cv_grid_adapted_feature_detector_get_mat,:rbind_cv_GridAdaptedFeatureDetector_getMat,[Cv::GridAdaptedFeatureDetector,Cv::String],Cv::Mat
        attach_function :cv_grid_adapted_feature_detector_get_mat_vector,:rbind_cv_GridAdaptedFeatureDetector_getMatVector,[Cv::GridAdaptedFeatureDetector,Cv::String],VectorMat
        attach_function :cv_grid_adapted_feature_detector_get_algorithm,:rbind_cv_GridAdaptedFeatureDetector_getAlgorithm,[Cv::GridAdaptedFeatureDetector,Cv::String],PtrAlgorithm
        attach_function :cv_grid_adapted_feature_detector_set_int,:rbind_cv_GridAdaptedFeatureDetector_setInt,[Cv::GridAdaptedFeatureDetector,Cv::String,:int],:void
        attach_function :cv_grid_adapted_feature_detector_set_double,:rbind_cv_GridAdaptedFeatureDetector_setDouble,[Cv::GridAdaptedFeatureDetector,Cv::String,:double],:void
        attach_function :cv_grid_adapted_feature_detector_set_bool,:rbind_cv_GridAdaptedFeatureDetector_setBool,[Cv::GridAdaptedFeatureDetector,Cv::String,:bool],:void
        attach_function :cv_grid_adapted_feature_detector_set_string,:rbind_cv_GridAdaptedFeatureDetector_setString,[Cv::GridAdaptedFeatureDetector,Cv::String,Cv::String],:void
        attach_function :cv_grid_adapted_feature_detector_set_mat,:rbind_cv_GridAdaptedFeatureDetector_setMat,[Cv::GridAdaptedFeatureDetector,Cv::String,Cv::Mat],:void
        attach_function :cv_grid_adapted_feature_detector_set_mat_vector,:rbind_cv_GridAdaptedFeatureDetector_setMatVector,[Cv::GridAdaptedFeatureDetector,Cv::String,VectorMat],:void
        attach_function :cv_grid_adapted_feature_detector_set_algorithm,:rbind_cv_GridAdaptedFeatureDetector_setAlgorithm,[Cv::GridAdaptedFeatureDetector,Cv::String,PtrAlgorithm],:void
        attach_function :cv_grid_adapted_feature_detector_param_help,:rbind_cv_GridAdaptedFeatureDetector_paramHelp,[Cv::GridAdaptedFeatureDetector,Cv::String],Cv::String
        attach_function :cv_grid_adapted_feature_detector_param_type,:rbind_cv_GridAdaptedFeatureDetector_paramType,[Cv::GridAdaptedFeatureDetector,Cv::String],:int
        attach_function :cv_grid_adapted_feature_detector_get_params,:rbind_cv_GridAdaptedFeatureDetector_getParams,[Cv::GridAdaptedFeatureDetector,VectorString],:void
        attach_function :cv_grid_adapted_feature_detector_get_list,:rbind_cv_GridAdaptedFeatureDetector_getList,[VectorString],:void
        attach_function :cv_grid_adapted_feature_detector__create,:rbind_cv_GridAdaptedFeatureDetector__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::PyramidAdaptedFeatureDetector
        attach_function :delete_cv_pyramid_adapted_feature_detector,:rbind_delete_cv_PyramidAdaptedFeatureDetector,[Cv::PyramidAdaptedFeatureDetector],:void
        attach_function :delete_cv_pyramid_adapted_feature_detector_struct,:rbind_delete_cv_PyramidAdaptedFeatureDetector,[Cv::PyramidAdaptedFeatureDetectorStruct],:void
        attach_function :cv_pyramid_adapted_feature_detector_pyramid_adapted_feature_detector,:rbind_cv_PyramidAdaptedFeatureDetector_PyramidAdaptedFeatureDetector,[PtrFeatureDetector,:int],Cv::PyramidAdaptedFeatureDetector
        attach_function :cv_pyramid_adapted_feature_detector_detect,:rbind_cv_PyramidAdaptedFeatureDetector_detect,[Cv::PyramidAdaptedFeatureDetector,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_pyramid_adapted_feature_detector_empty,:rbind_cv_PyramidAdaptedFeatureDetector_empty,[Cv::PyramidAdaptedFeatureDetector],:bool
        attach_function :cv_pyramid_adapted_feature_detector_create,:rbind_cv_PyramidAdaptedFeatureDetector_create,[Cv::String],PtrFeatureDetector
        attach_function :cv_pyramid_adapted_feature_detector_get_int,:rbind_cv_PyramidAdaptedFeatureDetector_getInt,[Cv::PyramidAdaptedFeatureDetector,Cv::String],:int
        attach_function :cv_pyramid_adapted_feature_detector_get_double,:rbind_cv_PyramidAdaptedFeatureDetector_getDouble,[Cv::PyramidAdaptedFeatureDetector,Cv::String],:double
        attach_function :cv_pyramid_adapted_feature_detector_get_bool,:rbind_cv_PyramidAdaptedFeatureDetector_getBool,[Cv::PyramidAdaptedFeatureDetector,Cv::String],:bool
        attach_function :cv_pyramid_adapted_feature_detector_get_string,:rbind_cv_PyramidAdaptedFeatureDetector_getString,[Cv::PyramidAdaptedFeatureDetector,Cv::String],Cv::String
        attach_function :cv_pyramid_adapted_feature_detector_get_mat,:rbind_cv_PyramidAdaptedFeatureDetector_getMat,[Cv::PyramidAdaptedFeatureDetector,Cv::String],Cv::Mat
        attach_function :cv_pyramid_adapted_feature_detector_get_mat_vector,:rbind_cv_PyramidAdaptedFeatureDetector_getMatVector,[Cv::PyramidAdaptedFeatureDetector,Cv::String],VectorMat
        attach_function :cv_pyramid_adapted_feature_detector_get_algorithm,:rbind_cv_PyramidAdaptedFeatureDetector_getAlgorithm,[Cv::PyramidAdaptedFeatureDetector,Cv::String],PtrAlgorithm
        attach_function :cv_pyramid_adapted_feature_detector_set_int,:rbind_cv_PyramidAdaptedFeatureDetector_setInt,[Cv::PyramidAdaptedFeatureDetector,Cv::String,:int],:void
        attach_function :cv_pyramid_adapted_feature_detector_set_double,:rbind_cv_PyramidAdaptedFeatureDetector_setDouble,[Cv::PyramidAdaptedFeatureDetector,Cv::String,:double],:void
        attach_function :cv_pyramid_adapted_feature_detector_set_bool,:rbind_cv_PyramidAdaptedFeatureDetector_setBool,[Cv::PyramidAdaptedFeatureDetector,Cv::String,:bool],:void
        attach_function :cv_pyramid_adapted_feature_detector_set_string,:rbind_cv_PyramidAdaptedFeatureDetector_setString,[Cv::PyramidAdaptedFeatureDetector,Cv::String,Cv::String],:void
        attach_function :cv_pyramid_adapted_feature_detector_set_mat,:rbind_cv_PyramidAdaptedFeatureDetector_setMat,[Cv::PyramidAdaptedFeatureDetector,Cv::String,Cv::Mat],:void
        attach_function :cv_pyramid_adapted_feature_detector_set_mat_vector,:rbind_cv_PyramidAdaptedFeatureDetector_setMatVector,[Cv::PyramidAdaptedFeatureDetector,Cv::String,VectorMat],:void
        attach_function :cv_pyramid_adapted_feature_detector_set_algorithm,:rbind_cv_PyramidAdaptedFeatureDetector_setAlgorithm,[Cv::PyramidAdaptedFeatureDetector,Cv::String,PtrAlgorithm],:void
        attach_function :cv_pyramid_adapted_feature_detector_param_help,:rbind_cv_PyramidAdaptedFeatureDetector_paramHelp,[Cv::PyramidAdaptedFeatureDetector,Cv::String],Cv::String
        attach_function :cv_pyramid_adapted_feature_detector_param_type,:rbind_cv_PyramidAdaptedFeatureDetector_paramType,[Cv::PyramidAdaptedFeatureDetector,Cv::String],:int
        attach_function :cv_pyramid_adapted_feature_detector_get_params,:rbind_cv_PyramidAdaptedFeatureDetector_getParams,[Cv::PyramidAdaptedFeatureDetector,VectorString],:void
        attach_function :cv_pyramid_adapted_feature_detector_get_list,:rbind_cv_PyramidAdaptedFeatureDetector_getList,[VectorString],:void
        attach_function :cv_pyramid_adapted_feature_detector__create,:rbind_cv_PyramidAdaptedFeatureDetector__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::Hamming
        
        #methods for cv::DescriptorMatcher
        attach_function :delete_cv_descriptor_matcher,:rbind_delete_cv_DescriptorMatcher,[Cv::DescriptorMatcher],:void
        attach_function :delete_cv_descriptor_matcher_struct,:rbind_delete_cv_DescriptorMatcher,[Cv::DescriptorMatcherStruct],:void
        attach_function :cv_descriptor_matcher_add,:rbind_cv_DescriptorMatcher_add,[Cv::DescriptorMatcher,VectorMat],:void
        attach_function :cv_descriptor_matcher_get_train_descriptors,:rbind_cv_DescriptorMatcher_getTrainDescriptors,[Cv::DescriptorMatcher],VectorMat
        attach_function :cv_descriptor_matcher_clear,:rbind_cv_DescriptorMatcher_clear,[Cv::DescriptorMatcher],:void
        attach_function :cv_descriptor_matcher_empty,:rbind_cv_DescriptorMatcher_empty,[Cv::DescriptorMatcher],:bool
        attach_function :cv_descriptor_matcher_train,:rbind_cv_DescriptorMatcher_train,[Cv::DescriptorMatcher],:void
        attach_function :cv_descriptor_matcher_match,:rbind_cv_DescriptorMatcher_match,[Cv::DescriptorMatcher,Cv::Mat,Cv::Mat,VectorDMatch,Cv::Mat],:void
        attach_function :cv_descriptor_matcher_match2,:rbind_cv_DescriptorMatcher_match2,[Cv::DescriptorMatcher,Cv::Mat,VectorDMatch,VectorMat],:void
        attach_function :cv_descriptor_matcher_knn_match,:rbind_cv_DescriptorMatcher_knnMatch,[Cv::DescriptorMatcher,Cv::Mat,Cv::Mat,VectorVectorDMatch,:int,Cv::Mat,:bool],:void
        attach_function :cv_descriptor_matcher_knn_match2,:rbind_cv_DescriptorMatcher_knnMatch2,[Cv::DescriptorMatcher,Cv::Mat,VectorVectorDMatch,:int,VectorMat,:bool],:void
        attach_function :cv_descriptor_matcher_create,:rbind_cv_DescriptorMatcher_create,[Cv::String],PtrDescriptorMatcher
        attach_function :cv_descriptor_matcher_get_int,:rbind_cv_DescriptorMatcher_getInt,[Cv::DescriptorMatcher,Cv::String],:int
        attach_function :cv_descriptor_matcher_get_double,:rbind_cv_DescriptorMatcher_getDouble,[Cv::DescriptorMatcher,Cv::String],:double
        attach_function :cv_descriptor_matcher_get_bool,:rbind_cv_DescriptorMatcher_getBool,[Cv::DescriptorMatcher,Cv::String],:bool
        attach_function :cv_descriptor_matcher_get_string,:rbind_cv_DescriptorMatcher_getString,[Cv::DescriptorMatcher,Cv::String],Cv::String
        attach_function :cv_descriptor_matcher_get_mat,:rbind_cv_DescriptorMatcher_getMat,[Cv::DescriptorMatcher,Cv::String],Cv::Mat
        attach_function :cv_descriptor_matcher_get_mat_vector,:rbind_cv_DescriptorMatcher_getMatVector,[Cv::DescriptorMatcher,Cv::String],VectorMat
        attach_function :cv_descriptor_matcher_get_algorithm,:rbind_cv_DescriptorMatcher_getAlgorithm,[Cv::DescriptorMatcher,Cv::String],PtrAlgorithm
        attach_function :cv_descriptor_matcher_set_int,:rbind_cv_DescriptorMatcher_setInt,[Cv::DescriptorMatcher,Cv::String,:int],:void
        attach_function :cv_descriptor_matcher_set_double,:rbind_cv_DescriptorMatcher_setDouble,[Cv::DescriptorMatcher,Cv::String,:double],:void
        attach_function :cv_descriptor_matcher_set_bool,:rbind_cv_DescriptorMatcher_setBool,[Cv::DescriptorMatcher,Cv::String,:bool],:void
        attach_function :cv_descriptor_matcher_set_string,:rbind_cv_DescriptorMatcher_setString,[Cv::DescriptorMatcher,Cv::String,Cv::String],:void
        attach_function :cv_descriptor_matcher_set_mat,:rbind_cv_DescriptorMatcher_setMat,[Cv::DescriptorMatcher,Cv::String,Cv::Mat],:void
        attach_function :cv_descriptor_matcher_set_mat_vector,:rbind_cv_DescriptorMatcher_setMatVector,[Cv::DescriptorMatcher,Cv::String,VectorMat],:void
        attach_function :cv_descriptor_matcher_set_algorithm,:rbind_cv_DescriptorMatcher_setAlgorithm,[Cv::DescriptorMatcher,Cv::String,PtrAlgorithm],:void
        attach_function :cv_descriptor_matcher_param_help,:rbind_cv_DescriptorMatcher_paramHelp,[Cv::DescriptorMatcher,Cv::String],Cv::String
        attach_function :cv_descriptor_matcher_param_type,:rbind_cv_DescriptorMatcher_paramType,[Cv::DescriptorMatcher,Cv::String],:int
        attach_function :cv_descriptor_matcher_get_params,:rbind_cv_DescriptorMatcher_getParams,[Cv::DescriptorMatcher,VectorString],:void
        attach_function :cv_descriptor_matcher_get_list,:rbind_cv_DescriptorMatcher_getList,[VectorString],:void
        attach_function :cv_descriptor_matcher__create,:rbind_cv_DescriptorMatcher__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::BFMatcher
        attach_function :delete_cv_bf_matcher,:rbind_delete_cv_BFMatcher,[Cv::BFMatcher],:void
        attach_function :delete_cv_bf_matcher_struct,:rbind_delete_cv_BFMatcher,[Cv::BFMatcherStruct],:void
        attach_function :cv_bf_matcher_bf_matcher,:rbind_cv_BFMatcher_BFMatcher,[:int,:bool],Cv::BFMatcher
        attach_function :cv_bf_matcher_add,:rbind_cv_BFMatcher_add,[Cv::BFMatcher,VectorMat],:void
        attach_function :cv_bf_matcher_get_train_descriptors,:rbind_cv_BFMatcher_getTrainDescriptors,[Cv::BFMatcher],VectorMat
        attach_function :cv_bf_matcher_clear,:rbind_cv_BFMatcher_clear,[Cv::BFMatcher],:void
        attach_function :cv_bf_matcher_empty,:rbind_cv_BFMatcher_empty,[Cv::BFMatcher],:bool
        attach_function :cv_bf_matcher_train,:rbind_cv_BFMatcher_train,[Cv::BFMatcher],:void
        attach_function :cv_bf_matcher_match,:rbind_cv_BFMatcher_match,[Cv::BFMatcher,Cv::Mat,Cv::Mat,VectorDMatch,Cv::Mat],:void
        attach_function :cv_bf_matcher_match2,:rbind_cv_BFMatcher_match2,[Cv::BFMatcher,Cv::Mat,VectorDMatch,VectorMat],:void
        attach_function :cv_bf_matcher_knn_match,:rbind_cv_BFMatcher_knnMatch,[Cv::BFMatcher,Cv::Mat,Cv::Mat,VectorVectorDMatch,:int,Cv::Mat,:bool],:void
        attach_function :cv_bf_matcher_knn_match2,:rbind_cv_BFMatcher_knnMatch2,[Cv::BFMatcher,Cv::Mat,VectorVectorDMatch,:int,VectorMat,:bool],:void
        attach_function :cv_bf_matcher_create,:rbind_cv_BFMatcher_create,[Cv::String],PtrDescriptorMatcher
        attach_function :cv_bf_matcher_get_int,:rbind_cv_BFMatcher_getInt,[Cv::BFMatcher,Cv::String],:int
        attach_function :cv_bf_matcher_get_double,:rbind_cv_BFMatcher_getDouble,[Cv::BFMatcher,Cv::String],:double
        attach_function :cv_bf_matcher_get_bool,:rbind_cv_BFMatcher_getBool,[Cv::BFMatcher,Cv::String],:bool
        attach_function :cv_bf_matcher_get_string,:rbind_cv_BFMatcher_getString,[Cv::BFMatcher,Cv::String],Cv::String
        attach_function :cv_bf_matcher_get_mat,:rbind_cv_BFMatcher_getMat,[Cv::BFMatcher,Cv::String],Cv::Mat
        attach_function :cv_bf_matcher_get_mat_vector,:rbind_cv_BFMatcher_getMatVector,[Cv::BFMatcher,Cv::String],VectorMat
        attach_function :cv_bf_matcher_get_algorithm,:rbind_cv_BFMatcher_getAlgorithm,[Cv::BFMatcher,Cv::String],PtrAlgorithm
        attach_function :cv_bf_matcher_set_int,:rbind_cv_BFMatcher_setInt,[Cv::BFMatcher,Cv::String,:int],:void
        attach_function :cv_bf_matcher_set_double,:rbind_cv_BFMatcher_setDouble,[Cv::BFMatcher,Cv::String,:double],:void
        attach_function :cv_bf_matcher_set_bool,:rbind_cv_BFMatcher_setBool,[Cv::BFMatcher,Cv::String,:bool],:void
        attach_function :cv_bf_matcher_set_string,:rbind_cv_BFMatcher_setString,[Cv::BFMatcher,Cv::String,Cv::String],:void
        attach_function :cv_bf_matcher_set_mat,:rbind_cv_BFMatcher_setMat,[Cv::BFMatcher,Cv::String,Cv::Mat],:void
        attach_function :cv_bf_matcher_set_mat_vector,:rbind_cv_BFMatcher_setMatVector,[Cv::BFMatcher,Cv::String,VectorMat],:void
        attach_function :cv_bf_matcher_set_algorithm,:rbind_cv_BFMatcher_setAlgorithm,[Cv::BFMatcher,Cv::String,PtrAlgorithm],:void
        attach_function :cv_bf_matcher_param_help,:rbind_cv_BFMatcher_paramHelp,[Cv::BFMatcher,Cv::String],Cv::String
        attach_function :cv_bf_matcher_param_type,:rbind_cv_BFMatcher_paramType,[Cv::BFMatcher,Cv::String],:int
        attach_function :cv_bf_matcher_get_params,:rbind_cv_BFMatcher_getParams,[Cv::BFMatcher,VectorString],:void
        attach_function :cv_bf_matcher_get_list,:rbind_cv_BFMatcher_getList,[VectorString],:void
        attach_function :cv_bf_matcher__create,:rbind_cv_BFMatcher__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::FlannBasedMatcher
        attach_function :delete_cv_flann_based_matcher,:rbind_delete_cv_FlannBasedMatcher,[Cv::FlannBasedMatcher],:void
        attach_function :delete_cv_flann_based_matcher_struct,:rbind_delete_cv_FlannBasedMatcher,[Cv::FlannBasedMatcherStruct],:void
        attach_function :cv_flann_based_matcher_flann_based_matcher,:rbind_cv_FlannBasedMatcher_FlannBasedMatcher,[PtrFlannIndexParams,PtrFlannSearchParams],Cv::FlannBasedMatcher
        attach_function :cv_flann_based_matcher_add,:rbind_cv_FlannBasedMatcher_add,[Cv::FlannBasedMatcher,VectorMat],:void
        attach_function :cv_flann_based_matcher_get_train_descriptors,:rbind_cv_FlannBasedMatcher_getTrainDescriptors,[Cv::FlannBasedMatcher],VectorMat
        attach_function :cv_flann_based_matcher_clear,:rbind_cv_FlannBasedMatcher_clear,[Cv::FlannBasedMatcher],:void
        attach_function :cv_flann_based_matcher_empty,:rbind_cv_FlannBasedMatcher_empty,[Cv::FlannBasedMatcher],:bool
        attach_function :cv_flann_based_matcher_train,:rbind_cv_FlannBasedMatcher_train,[Cv::FlannBasedMatcher],:void
        attach_function :cv_flann_based_matcher_match,:rbind_cv_FlannBasedMatcher_match,[Cv::FlannBasedMatcher,Cv::Mat,Cv::Mat,VectorDMatch,Cv::Mat],:void
        attach_function :cv_flann_based_matcher_match2,:rbind_cv_FlannBasedMatcher_match2,[Cv::FlannBasedMatcher,Cv::Mat,VectorDMatch,VectorMat],:void
        attach_function :cv_flann_based_matcher_knn_match,:rbind_cv_FlannBasedMatcher_knnMatch,[Cv::FlannBasedMatcher,Cv::Mat,Cv::Mat,VectorVectorDMatch,:int,Cv::Mat,:bool],:void
        attach_function :cv_flann_based_matcher_knn_match2,:rbind_cv_FlannBasedMatcher_knnMatch2,[Cv::FlannBasedMatcher,Cv::Mat,VectorVectorDMatch,:int,VectorMat,:bool],:void
        attach_function :cv_flann_based_matcher_create,:rbind_cv_FlannBasedMatcher_create,[Cv::String],PtrDescriptorMatcher
        attach_function :cv_flann_based_matcher_get_int,:rbind_cv_FlannBasedMatcher_getInt,[Cv::FlannBasedMatcher,Cv::String],:int
        attach_function :cv_flann_based_matcher_get_double,:rbind_cv_FlannBasedMatcher_getDouble,[Cv::FlannBasedMatcher,Cv::String],:double
        attach_function :cv_flann_based_matcher_get_bool,:rbind_cv_FlannBasedMatcher_getBool,[Cv::FlannBasedMatcher,Cv::String],:bool
        attach_function :cv_flann_based_matcher_get_string,:rbind_cv_FlannBasedMatcher_getString,[Cv::FlannBasedMatcher,Cv::String],Cv::String
        attach_function :cv_flann_based_matcher_get_mat,:rbind_cv_FlannBasedMatcher_getMat,[Cv::FlannBasedMatcher,Cv::String],Cv::Mat
        attach_function :cv_flann_based_matcher_get_mat_vector,:rbind_cv_FlannBasedMatcher_getMatVector,[Cv::FlannBasedMatcher,Cv::String],VectorMat
        attach_function :cv_flann_based_matcher_get_algorithm,:rbind_cv_FlannBasedMatcher_getAlgorithm,[Cv::FlannBasedMatcher,Cv::String],PtrAlgorithm
        attach_function :cv_flann_based_matcher_set_int,:rbind_cv_FlannBasedMatcher_setInt,[Cv::FlannBasedMatcher,Cv::String,:int],:void
        attach_function :cv_flann_based_matcher_set_double,:rbind_cv_FlannBasedMatcher_setDouble,[Cv::FlannBasedMatcher,Cv::String,:double],:void
        attach_function :cv_flann_based_matcher_set_bool,:rbind_cv_FlannBasedMatcher_setBool,[Cv::FlannBasedMatcher,Cv::String,:bool],:void
        attach_function :cv_flann_based_matcher_set_string,:rbind_cv_FlannBasedMatcher_setString,[Cv::FlannBasedMatcher,Cv::String,Cv::String],:void
        attach_function :cv_flann_based_matcher_set_mat,:rbind_cv_FlannBasedMatcher_setMat,[Cv::FlannBasedMatcher,Cv::String,Cv::Mat],:void
        attach_function :cv_flann_based_matcher_set_mat_vector,:rbind_cv_FlannBasedMatcher_setMatVector,[Cv::FlannBasedMatcher,Cv::String,VectorMat],:void
        attach_function :cv_flann_based_matcher_set_algorithm,:rbind_cv_FlannBasedMatcher_setAlgorithm,[Cv::FlannBasedMatcher,Cv::String,PtrAlgorithm],:void
        attach_function :cv_flann_based_matcher_param_help,:rbind_cv_FlannBasedMatcher_paramHelp,[Cv::FlannBasedMatcher,Cv::String],Cv::String
        attach_function :cv_flann_based_matcher_param_type,:rbind_cv_FlannBasedMatcher_paramType,[Cv::FlannBasedMatcher,Cv::String],:int
        attach_function :cv_flann_based_matcher_get_params,:rbind_cv_FlannBasedMatcher_getParams,[Cv::FlannBasedMatcher,VectorString],:void
        attach_function :cv_flann_based_matcher_get_list,:rbind_cv_FlannBasedMatcher_getList,[VectorString],:void
        attach_function :cv_flann_based_matcher__create,:rbind_cv_FlannBasedMatcher__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::DrawMatchesFlags
        
        #methods for cv::VideoCapture
        attach_function :delete_cv_video_capture,:rbind_delete_cv_VideoCapture,[Cv::VideoCapture],:void
        attach_function :delete_cv_video_capture_struct,:rbind_delete_cv_VideoCapture,[Cv::VideoCaptureStruct],:void
        attach_function :cv_video_capture_video_capture,:rbind_cv_VideoCapture_VideoCapture,[],Cv::VideoCapture
        attach_function :cv_video_capture_video_capture2,:rbind_cv_VideoCapture_VideoCapture2,[Cv::String],Cv::VideoCapture
        attach_function :cv_video_capture_video_capture3,:rbind_cv_VideoCapture_VideoCapture3,[:int],Cv::VideoCapture
        attach_function :cv_video_capture_open,:rbind_cv_VideoCapture_open,[Cv::VideoCapture,Cv::String],:bool
        attach_function :cv_video_capture_open2,:rbind_cv_VideoCapture_open2,[Cv::VideoCapture,:int],:bool
        attach_function :cv_video_capture_is_opened,:rbind_cv_VideoCapture_isOpened,[Cv::VideoCapture],:bool
        attach_function :cv_video_capture_release,:rbind_cv_VideoCapture_release,[Cv::VideoCapture],:void
        attach_function :cv_video_capture_grab,:rbind_cv_VideoCapture_grab,[Cv::VideoCapture],:bool
        attach_function :cv_video_capture_retrieve,:rbind_cv_VideoCapture_retrieve,[Cv::VideoCapture,Cv::Mat,:int],:bool
        attach_function :cv_video_capture_read,:rbind_cv_VideoCapture_read,[Cv::VideoCapture,Cv::Mat],:bool
        attach_function :cv_video_capture_set,:rbind_cv_VideoCapture_set,[Cv::VideoCapture,:int,:double],:bool
        attach_function :cv_video_capture_get,:rbind_cv_VideoCapture_get,[Cv::VideoCapture,:int],:double
        
        #methods for cv::VideoWriter
        attach_function :delete_cv_video_writer,:rbind_delete_cv_VideoWriter,[Cv::VideoWriter],:void
        attach_function :delete_cv_video_writer_struct,:rbind_delete_cv_VideoWriter,[Cv::VideoWriterStruct],:void
        attach_function :cv_video_writer_video_writer,:rbind_cv_VideoWriter_VideoWriter,[],Cv::VideoWriter
        attach_function :cv_video_writer_video_writer2,:rbind_cv_VideoWriter_VideoWriter2,[Cv::String,:int,:double,Cv::Size,:bool],Cv::VideoWriter
        attach_function :cv_video_writer_open,:rbind_cv_VideoWriter_open,[Cv::VideoWriter,Cv::String,:int,:double,Cv::Size,:bool],:bool
        attach_function :cv_video_writer_is_opened,:rbind_cv_VideoWriter_isOpened,[Cv::VideoWriter],:bool
        attach_function :cv_video_writer_release,:rbind_cv_VideoWriter_release,[Cv::VideoWriter],:void
        attach_function :cv_video_writer_write,:rbind_cv_VideoWriter_write,[Cv::VideoWriter,Cv::Mat],:void
        attach_function :cv_video_writer_fourcc,:rbind_cv_VideoWriter_fourcc,[:char,:char,:char,:char],:int
        
        #methods for cv::GeneralizedHough
        
        #methods for cv::Subdiv2D
        attach_function :delete_cv_subdiv2d,:rbind_delete_cv_Subdiv2D,[Cv::Subdiv2D],:void
        attach_function :delete_cv_subdiv2d_struct,:rbind_delete_cv_Subdiv2D,[Cv::Subdiv2DStruct],:void
        attach_function :cv_subdiv2d_subdiv2d,:rbind_cv_Subdiv2D_Subdiv2D,[],Cv::Subdiv2D
        attach_function :cv_subdiv2d_subdiv2d2,:rbind_cv_Subdiv2D_Subdiv2D2,[Cv::Rect],Cv::Subdiv2D
        attach_function :cv_subdiv2d_init_delaunay,:rbind_cv_Subdiv2D_initDelaunay,[Cv::Subdiv2D,Cv::Rect],:void
        attach_function :cv_subdiv2d_insert,:rbind_cv_Subdiv2D_insert,[Cv::Subdiv2D,Cv::Point2f],:int
        attach_function :cv_subdiv2d_insert2,:rbind_cv_Subdiv2D_insert2,[Cv::Subdiv2D,VectorPoint2f],:void
        attach_function :cv_subdiv2d_locate,:rbind_cv_Subdiv2D_locate,[Cv::Subdiv2D,Cv::Point2f,:int,:int],:int
        attach_function :cv_subdiv2d_find_nearest,:rbind_cv_Subdiv2D_findNearest,[Cv::Subdiv2D,Cv::Point2f,Cv::Point2f],:int
        attach_function :cv_subdiv2d_get_edge_list,:rbind_cv_Subdiv2D_getEdgeList,[Cv::Subdiv2D,VectorVec4f],:void
        attach_function :cv_subdiv2d_get_triangle_list,:rbind_cv_Subdiv2D_getTriangleList,[Cv::Subdiv2D,VectorVec6f],:void
        attach_function :cv_subdiv2d_get_voronoi_facet_list,:rbind_cv_Subdiv2D_getVoronoiFacetList,[Cv::Subdiv2D,VectorInt,VectorVectorPoint2f,VectorPoint2f],:void
        attach_function :cv_subdiv2d_get_vertex,:rbind_cv_Subdiv2D_getVertex,[Cv::Subdiv2D,:int,:pointer],Cv::Point2f
        attach_function :cv_subdiv2d_get_edge,:rbind_cv_Subdiv2D_getEdge,[Cv::Subdiv2D,:int,:int],:int
        attach_function :cv_subdiv2d_next_edge,:rbind_cv_Subdiv2D_nextEdge,[Cv::Subdiv2D,:int],:int
        attach_function :cv_subdiv2d_rotate_edge,:rbind_cv_Subdiv2D_rotateEdge,[Cv::Subdiv2D,:int,:int],:int
        attach_function :cv_subdiv2d_sym_edge,:rbind_cv_Subdiv2D_symEdge,[Cv::Subdiv2D,:int],:int
        attach_function :cv_subdiv2d_edge_org,:rbind_cv_Subdiv2D_edgeOrg,[Cv::Subdiv2D,:int,Cv::Point2f],:int
        attach_function :cv_subdiv2d_edge_dst,:rbind_cv_Subdiv2D_edgeDst,[Cv::Subdiv2D,:int,Cv::Point2f],:int
        
        #methods for cv::EM
        attach_function :delete_cv_em,:rbind_delete_cv_EM,[Cv::EM],:void
        attach_function :delete_cv_em_struct,:rbind_delete_cv_EM,[Cv::EMStruct],:void
        attach_function :cv_em_em,:rbind_cv_EM_EM,[:int,:int,Cv::TermCriteria],Cv::EM
        attach_function :cv_em_clear,:rbind_cv_EM_clear,[Cv::EM],:void
        attach_function :cv_em_train,:rbind_cv_EM_train,[Cv::EM,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:bool
        attach_function :cv_em_traine,:rbind_cv_EM_trainE,[Cv::EM,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:bool
        attach_function :cv_em_trainm,:rbind_cv_EM_trainM,[Cv::EM,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:bool
        attach_function :cv_em_predict,:rbind_cv_EM_predict,[Cv::EM,Cv::Mat,Cv::Mat],Cv::Vec2d
        attach_function :cv_em_is_trained,:rbind_cv_EM_isTrained,[Cv::EM],:bool
        attach_function :cv_em_get_int,:rbind_cv_EM_getInt,[Cv::EM,Cv::String],:int
        attach_function :cv_em_get_double,:rbind_cv_EM_getDouble,[Cv::EM,Cv::String],:double
        attach_function :cv_em_get_bool,:rbind_cv_EM_getBool,[Cv::EM,Cv::String],:bool
        attach_function :cv_em_get_string,:rbind_cv_EM_getString,[Cv::EM,Cv::String],Cv::String
        attach_function :cv_em_get_mat,:rbind_cv_EM_getMat,[Cv::EM,Cv::String],Cv::Mat
        attach_function :cv_em_get_mat_vector,:rbind_cv_EM_getMatVector,[Cv::EM,Cv::String],VectorMat
        attach_function :cv_em_get_algorithm,:rbind_cv_EM_getAlgorithm,[Cv::EM,Cv::String],PtrAlgorithm
        attach_function :cv_em_set_int,:rbind_cv_EM_setInt,[Cv::EM,Cv::String,:int],:void
        attach_function :cv_em_set_double,:rbind_cv_EM_setDouble,[Cv::EM,Cv::String,:double],:void
        attach_function :cv_em_set_bool,:rbind_cv_EM_setBool,[Cv::EM,Cv::String,:bool],:void
        attach_function :cv_em_set_string,:rbind_cv_EM_setString,[Cv::EM,Cv::String,Cv::String],:void
        attach_function :cv_em_set_mat,:rbind_cv_EM_setMat,[Cv::EM,Cv::String,Cv::Mat],:void
        attach_function :cv_em_set_mat_vector,:rbind_cv_EM_setMatVector,[Cv::EM,Cv::String,VectorMat],:void
        attach_function :cv_em_set_algorithm,:rbind_cv_EM_setAlgorithm,[Cv::EM,Cv::String,PtrAlgorithm],:void
        attach_function :cv_em_param_help,:rbind_cv_EM_paramHelp,[Cv::EM,Cv::String],Cv::String
        attach_function :cv_em_param_type,:rbind_cv_EM_paramType,[Cv::EM,Cv::String],:int
        attach_function :cv_em_get_params,:rbind_cv_EM_getParams,[Cv::EM,VectorString],:void
        attach_function :cv_em_get_list,:rbind_cv_EM_getList,[VectorString],:void
        attach_function :cv_em__create,:rbind_cv_EM__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::SIFT
        attach_function :delete_cv_sift,:rbind_delete_cv_SIFT,[Cv::SIFT],:void
        attach_function :delete_cv_sift_struct,:rbind_delete_cv_SIFT,[Cv::SIFTStruct],:void
        attach_function :cv_sift_sift,:rbind_cv_SIFT_SIFT,[:int,:int,:double,:double,:double],Cv::SIFT
        attach_function :cv_sift_descriptor_size,:rbind_cv_SIFT_descriptorSize,[Cv::SIFT],:int
        attach_function :cv_sift_descriptor_type,:rbind_cv_SIFT_descriptorType,[Cv::SIFT],:int
        attach_function :cv_sift_detect_and_compute,:rbind_cv_SIFT_detectAndCompute,[Cv::SIFT,Cv::Mat,Cv::Mat,VectorKeyPoint,Cv::Mat,:bool],:void
        attach_function :cv_sift_compute,:rbind_cv_SIFT_compute,[Cv::SIFT,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_sift_create,:rbind_cv_SIFT_create,[Cv::String],PtrFeature2D
        attach_function :cv_sift_detect,:rbind_cv_SIFT_detect,[Cv::SIFT,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_sift_empty,:rbind_cv_SIFT_empty,[Cv::SIFT],:bool
        attach_function :cv_sift_empty2,:rbind_cv_SIFT_empty2,[Cv::SIFT],:bool
        attach_function :cv_sift_get_int,:rbind_cv_SIFT_getInt,[Cv::SIFT,Cv::String],:int
        attach_function :cv_sift_get_double,:rbind_cv_SIFT_getDouble,[Cv::SIFT,Cv::String],:double
        attach_function :cv_sift_get_bool,:rbind_cv_SIFT_getBool,[Cv::SIFT,Cv::String],:bool
        attach_function :cv_sift_get_string,:rbind_cv_SIFT_getString,[Cv::SIFT,Cv::String],Cv::String
        attach_function :cv_sift_get_mat,:rbind_cv_SIFT_getMat,[Cv::SIFT,Cv::String],Cv::Mat
        attach_function :cv_sift_get_mat_vector,:rbind_cv_SIFT_getMatVector,[Cv::SIFT,Cv::String],VectorMat
        attach_function :cv_sift_get_algorithm,:rbind_cv_SIFT_getAlgorithm,[Cv::SIFT,Cv::String],PtrAlgorithm
        attach_function :cv_sift_set_int,:rbind_cv_SIFT_setInt,[Cv::SIFT,Cv::String,:int],:void
        attach_function :cv_sift_set_double,:rbind_cv_SIFT_setDouble,[Cv::SIFT,Cv::String,:double],:void
        attach_function :cv_sift_set_bool,:rbind_cv_SIFT_setBool,[Cv::SIFT,Cv::String,:bool],:void
        attach_function :cv_sift_set_string,:rbind_cv_SIFT_setString,[Cv::SIFT,Cv::String,Cv::String],:void
        attach_function :cv_sift_set_mat,:rbind_cv_SIFT_setMat,[Cv::SIFT,Cv::String,Cv::Mat],:void
        attach_function :cv_sift_set_mat_vector,:rbind_cv_SIFT_setMatVector,[Cv::SIFT,Cv::String,VectorMat],:void
        attach_function :cv_sift_set_algorithm,:rbind_cv_SIFT_setAlgorithm,[Cv::SIFT,Cv::String,PtrAlgorithm],:void
        attach_function :cv_sift_param_help,:rbind_cv_SIFT_paramHelp,[Cv::SIFT,Cv::String],Cv::String
        attach_function :cv_sift_param_type,:rbind_cv_SIFT_paramType,[Cv::SIFT,Cv::String],:int
        attach_function :cv_sift_get_params,:rbind_cv_SIFT_getParams,[Cv::SIFT,VectorString],:void
        attach_function :cv_sift_get_list,:rbind_cv_SIFT_getList,[VectorString],:void
        attach_function :cv_sift__create,:rbind_cv_SIFT__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::SURF
        attach_function :delete_cv_surf,:rbind_delete_cv_SURF,[Cv::SURF],:void
        attach_function :delete_cv_surf_struct,:rbind_delete_cv_SURF,[Cv::SURFStruct],:void
        attach_function :cv_surf_get_hessian_threshold,:rbind_cv_SURF_get_hessianThreshold,[Cv::SURF],:double
        attach_function :cv_surf_set_hessian_threshold,:rbind_cv_SURF_set_hessianThreshold,[Cv::SURF,:double],:void
        attach_function :cv_surf_getn_octaves,:rbind_cv_SURF_get_nOctaves,[Cv::SURF],:int
        attach_function :cv_surf_setn_octaves,:rbind_cv_SURF_set_nOctaves,[Cv::SURF,:int],:void
        attach_function :cv_surf_getn_octave_layers,:rbind_cv_SURF_get_nOctaveLayers,[Cv::SURF],:int
        attach_function :cv_surf_setn_octave_layers,:rbind_cv_SURF_set_nOctaveLayers,[Cv::SURF,:int],:void
        attach_function :cv_surf_get_extended,:rbind_cv_SURF_get_extended,[Cv::SURF],:bool
        attach_function :cv_surf_set_extended,:rbind_cv_SURF_set_extended,[Cv::SURF,:bool],:void
        attach_function :cv_surf_get_upright,:rbind_cv_SURF_get_upright,[Cv::SURF],:bool
        attach_function :cv_surf_set_upright,:rbind_cv_SURF_set_upright,[Cv::SURF,:bool],:void
        attach_function :cv_surf_surf,:rbind_cv_SURF_SURF,[],Cv::SURF
        attach_function :cv_surf_surf2,:rbind_cv_SURF_SURF2,[:double,:int,:int,:bool,:bool],Cv::SURF
        attach_function :cv_surf_descriptor_size,:rbind_cv_SURF_descriptorSize,[Cv::SURF],:int
        attach_function :cv_surf_descriptor_type,:rbind_cv_SURF_descriptorType,[Cv::SURF],:int
        attach_function :cv_surf_detect_and_compute,:rbind_cv_SURF_detectAndCompute,[Cv::SURF,Cv::Mat,Cv::Mat,VectorKeyPoint,Cv::Mat,:bool],:void
        attach_function :cv_surf_compute,:rbind_cv_SURF_compute,[Cv::SURF,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_surf_create,:rbind_cv_SURF_create,[Cv::String],PtrFeature2D
        attach_function :cv_surf_detect,:rbind_cv_SURF_detect,[Cv::SURF,Cv::Mat,VectorKeyPoint,Cv::Mat],:void
        attach_function :cv_surf_empty,:rbind_cv_SURF_empty,[Cv::SURF],:bool
        attach_function :cv_surf_empty2,:rbind_cv_SURF_empty2,[Cv::SURF],:bool
        attach_function :cv_surf_get_int,:rbind_cv_SURF_getInt,[Cv::SURF,Cv::String],:int
        attach_function :cv_surf_get_double,:rbind_cv_SURF_getDouble,[Cv::SURF,Cv::String],:double
        attach_function :cv_surf_get_bool,:rbind_cv_SURF_getBool,[Cv::SURF,Cv::String],:bool
        attach_function :cv_surf_get_string,:rbind_cv_SURF_getString,[Cv::SURF,Cv::String],Cv::String
        attach_function :cv_surf_get_mat,:rbind_cv_SURF_getMat,[Cv::SURF,Cv::String],Cv::Mat
        attach_function :cv_surf_get_mat_vector,:rbind_cv_SURF_getMatVector,[Cv::SURF,Cv::String],VectorMat
        attach_function :cv_surf_get_algorithm,:rbind_cv_SURF_getAlgorithm,[Cv::SURF,Cv::String],PtrAlgorithm
        attach_function :cv_surf_set_int,:rbind_cv_SURF_setInt,[Cv::SURF,Cv::String,:int],:void
        attach_function :cv_surf_set_double,:rbind_cv_SURF_setDouble,[Cv::SURF,Cv::String,:double],:void
        attach_function :cv_surf_set_bool,:rbind_cv_SURF_setBool,[Cv::SURF,Cv::String,:bool],:void
        attach_function :cv_surf_set_string,:rbind_cv_SURF_setString,[Cv::SURF,Cv::String,Cv::String],:void
        attach_function :cv_surf_set_mat,:rbind_cv_SURF_setMat,[Cv::SURF,Cv::String,Cv::Mat],:void
        attach_function :cv_surf_set_mat_vector,:rbind_cv_SURF_setMatVector,[Cv::SURF,Cv::String,VectorMat],:void
        attach_function :cv_surf_set_algorithm,:rbind_cv_SURF_setAlgorithm,[Cv::SURF,Cv::String,PtrAlgorithm],:void
        attach_function :cv_surf_param_help,:rbind_cv_SURF_paramHelp,[Cv::SURF,Cv::String],Cv::String
        attach_function :cv_surf_param_type,:rbind_cv_SURF_paramType,[Cv::SURF,Cv::String],:int
        attach_function :cv_surf_get_params,:rbind_cv_SURF_getParams,[Cv::SURF,VectorString],:void
        attach_function :cv_surf_get_list,:rbind_cv_SURF_getList,[VectorString],:void
        attach_function :cv_surf__create,:rbind_cv_SURF__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::FeatureEvaluator
        
        #methods for cv::CascadeClassifier
        attach_function :delete_cv_cascade_classifier,:rbind_delete_cv_CascadeClassifier,[Cv::CascadeClassifier],:void
        attach_function :delete_cv_cascade_classifier_struct,:rbind_delete_cv_CascadeClassifier,[Cv::CascadeClassifierStruct],:void
        attach_function :cv_cascade_classifier_cascade_classifier,:rbind_cv_CascadeClassifier_CascadeClassifier,[],Cv::CascadeClassifier
        attach_function :cv_cascade_classifier_cascade_classifier2,:rbind_cv_CascadeClassifier_CascadeClassifier2,[Cv::String],Cv::CascadeClassifier
        attach_function :cv_cascade_classifier_empty,:rbind_cv_CascadeClassifier_empty,[Cv::CascadeClassifier],:bool
        attach_function :cv_cascade_classifier_load,:rbind_cv_CascadeClassifier_load,[Cv::CascadeClassifier,Cv::String],:bool
        attach_function :cv_cascade_classifier_detect_multi_scale,:rbind_cv_CascadeClassifier_detectMultiScale,[Cv::CascadeClassifier,Cv::Mat,VectorRect,:double,:int,:int,Cv::Size,Cv::Size],:void
        attach_function :cv_cascade_classifier_detect_multi_scale2,:rbind_cv_CascadeClassifier_detectMultiScale2,[Cv::CascadeClassifier,Cv::Mat,VectorRect,VectorInt,:double,:int,:int,Cv::Size,Cv::Size],:void
        attach_function :cv_cascade_classifier_detect_multi_scale3,:rbind_cv_CascadeClassifier_detectMultiScale3,[Cv::CascadeClassifier,Cv::Mat,VectorRect,VectorInt,VectorDouble,:double,:int,:int,Cv::Size,Cv::Size,:bool],:void
        
        #methods for cv::HOGDescriptor
        attach_function :delete_cv_hog_descriptor,:rbind_delete_cv_HOGDescriptor,[Cv::HOGDescriptor],:void
        attach_function :delete_cv_hog_descriptor_struct,:rbind_delete_cv_HOGDescriptor,[Cv::HOGDescriptorStruct],:void
        attach_function :cv_hog_descriptor_get_win_size,:rbind_cv_HOGDescriptor_get_winSize,[Cv::HOGDescriptor],Cv::Size
        attach_function :cv_hog_descriptor_get_block_size,:rbind_cv_HOGDescriptor_get_blockSize,[Cv::HOGDescriptor],Cv::Size
        attach_function :cv_hog_descriptor_get_block_stride,:rbind_cv_HOGDescriptor_get_blockStride,[Cv::HOGDescriptor],Cv::Size
        attach_function :cv_hog_descriptor_get_cell_size,:rbind_cv_HOGDescriptor_get_cellSize,[Cv::HOGDescriptor],Cv::Size
        attach_function :cv_hog_descriptor_get_nbins,:rbind_cv_HOGDescriptor_get_nbins,[Cv::HOGDescriptor],:int
        attach_function :cv_hog_descriptor_get_deriv_aperture,:rbind_cv_HOGDescriptor_get_derivAperture,[Cv::HOGDescriptor],:int
        attach_function :cv_hog_descriptor_get_win_sigma,:rbind_cv_HOGDescriptor_get_winSigma,[Cv::HOGDescriptor],:double
        attach_function :cv_hog_descriptor_get_histogram_norm_type,:rbind_cv_HOGDescriptor_get_histogramNormType,[Cv::HOGDescriptor],:int
        attach_function :cv_hog_descriptor_get_l2_hys_threshold,:rbind_cv_HOGDescriptor_get_L2HysThreshold,[Cv::HOGDescriptor],:double
        attach_function :cv_hog_descriptor_get_gamma_correction,:rbind_cv_HOGDescriptor_get_gammaCorrection,[Cv::HOGDescriptor],:bool
        attach_function :cv_hog_descriptor_get_svm_detector,:rbind_cv_HOGDescriptor_get_svmDetector,[Cv::HOGDescriptor],VectorFloat
        attach_function :cv_hog_descriptor_get_nlevels,:rbind_cv_HOGDescriptor_get_nlevels,[Cv::HOGDescriptor],:int
        attach_function :cv_hog_descriptor_hog_descriptor,:rbind_cv_HOGDescriptor_HOGDescriptor,[],Cv::HOGDescriptor
        attach_function :cv_hog_descriptor_hog_descriptor2,:rbind_cv_HOGDescriptor_HOGDescriptor2,[Cv::Size,Cv::Size,Cv::Size,Cv::Size,:int,:int,:double,:int,:double,:bool,:int],Cv::HOGDescriptor
        attach_function :cv_hog_descriptor_hog_descriptor3,:rbind_cv_HOGDescriptor_HOGDescriptor3,[Cv::String],Cv::HOGDescriptor
        attach_function :cv_hog_descriptor_get_descriptor_size,:rbind_cv_HOGDescriptor_getDescriptorSize,[Cv::HOGDescriptor],:size_t
        attach_function :cv_hog_descriptor_check_detector_size,:rbind_cv_HOGDescriptor_checkDetectorSize,[Cv::HOGDescriptor],:bool
        attach_function :cv_hog_descriptor_get_win_sigma,:rbind_cv_HOGDescriptor_getWinSigma,[Cv::HOGDescriptor],:double
        attach_function :cv_hog_descriptor_setsvm_detector,:rbind_cv_HOGDescriptor_setSVMDetector,[Cv::HOGDescriptor,Cv::Mat],:void
        attach_function :cv_hog_descriptor_load,:rbind_cv_HOGDescriptor_load,[Cv::HOGDescriptor,Cv::String,Cv::String],:bool
        attach_function :cv_hog_descriptor_save,:rbind_cv_HOGDescriptor_save,[Cv::HOGDescriptor,Cv::String,Cv::String],:void
        attach_function :cv_hog_descriptor_compute,:rbind_cv_HOGDescriptor_compute,[Cv::HOGDescriptor,Cv::Mat,VectorFloat,Cv::Size,Cv::Size,VectorPoint],:void
        attach_function :cv_hog_descriptor_detect,:rbind_cv_HOGDescriptor_detect,[Cv::HOGDescriptor,Cv::Mat,VectorPoint,VectorDouble,:double,Cv::Size,Cv::Size,VectorPoint],:void
        attach_function :cv_hog_descriptor_detect_multi_scale,:rbind_cv_HOGDescriptor_detectMultiScale,[Cv::HOGDescriptor,Cv::Mat,VectorRect,VectorDouble,:double,Cv::Size,Cv::Size,:double,:double,:bool],:void
        attach_function :cv_hog_descriptor_compute_gradient,:rbind_cv_HOGDescriptor_computeGradient,[Cv::HOGDescriptor,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Size,Cv::Size],:void
        attach_function :cv_hog_descriptor_get_default_people_detector,:rbind_cv_HOGDescriptor_getDefaultPeopleDetector,[],VectorFloat
        attach_function :cv_hog_descriptor_get_daimler_people_detector,:rbind_cv_HOGDescriptor_getDaimlerPeopleDetector,[],VectorFloat
        
        #methods for cv::softcascade
        
        #methods for cv::softcascade::Detection
        
        #methods for cv::softcascade::ChannelFeatureBuilder
        attach_function :delete_cv_softcascade_channel_feature_builder,:rbind_delete_cv_softcascade_ChannelFeatureBuilder,[Cv::Softcascade::ChannelFeatureBuilder],:void
        attach_function :delete_cv_softcascade_channel_feature_builder_struct,:rbind_delete_cv_softcascade_ChannelFeatureBuilder,[Cv::Softcascade::ChannelFeatureBuilderStruct],:void
        attach_function :cv_softcascade_channel_feature_builder_compute,:rbind_cv_softcascade_ChannelFeatureBuilder_compute,[Cv::Softcascade::ChannelFeatureBuilder,Cv::Mat,Cv::Mat,Cv::Size],:void
        attach_function :cv_softcascade_channel_feature_builder_create,:rbind_cv_softcascade_ChannelFeatureBuilder_create,[Cv::String],PtrChannelFeatureBuilder
        attach_function :cv_softcascade_channel_feature_builder_get_int,:rbind_cv_softcascade_ChannelFeatureBuilder_getInt,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String],:int
        attach_function :cv_softcascade_channel_feature_builder_get_double,:rbind_cv_softcascade_ChannelFeatureBuilder_getDouble,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String],:double
        attach_function :cv_softcascade_channel_feature_builder_get_bool,:rbind_cv_softcascade_ChannelFeatureBuilder_getBool,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String],:bool
        attach_function :cv_softcascade_channel_feature_builder_get_string,:rbind_cv_softcascade_ChannelFeatureBuilder_getString,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String],Cv::String
        attach_function :cv_softcascade_channel_feature_builder_get_mat,:rbind_cv_softcascade_ChannelFeatureBuilder_getMat,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String],Cv::Mat
        attach_function :cv_softcascade_channel_feature_builder_get_mat_vector,:rbind_cv_softcascade_ChannelFeatureBuilder_getMatVector,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String],VectorMat
        attach_function :cv_softcascade_channel_feature_builder_get_algorithm,:rbind_cv_softcascade_ChannelFeatureBuilder_getAlgorithm,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String],PtrAlgorithm
        attach_function :cv_softcascade_channel_feature_builder_set_int,:rbind_cv_softcascade_ChannelFeatureBuilder_setInt,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String,:int],:void
        attach_function :cv_softcascade_channel_feature_builder_set_double,:rbind_cv_softcascade_ChannelFeatureBuilder_setDouble,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String,:double],:void
        attach_function :cv_softcascade_channel_feature_builder_set_bool,:rbind_cv_softcascade_ChannelFeatureBuilder_setBool,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String,:bool],:void
        attach_function :cv_softcascade_channel_feature_builder_set_string,:rbind_cv_softcascade_ChannelFeatureBuilder_setString,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String,Cv::String],:void
        attach_function :cv_softcascade_channel_feature_builder_set_mat,:rbind_cv_softcascade_ChannelFeatureBuilder_setMat,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String,Cv::Mat],:void
        attach_function :cv_softcascade_channel_feature_builder_set_mat_vector,:rbind_cv_softcascade_ChannelFeatureBuilder_setMatVector,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String,VectorMat],:void
        attach_function :cv_softcascade_channel_feature_builder_set_algorithm,:rbind_cv_softcascade_ChannelFeatureBuilder_setAlgorithm,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String,PtrAlgorithm],:void
        attach_function :cv_softcascade_channel_feature_builder_param_help,:rbind_cv_softcascade_ChannelFeatureBuilder_paramHelp,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String],Cv::String
        attach_function :cv_softcascade_channel_feature_builder_param_type,:rbind_cv_softcascade_ChannelFeatureBuilder_paramType,[Cv::Softcascade::ChannelFeatureBuilder,Cv::String],:int
        attach_function :cv_softcascade_channel_feature_builder_get_params,:rbind_cv_softcascade_ChannelFeatureBuilder_getParams,[Cv::Softcascade::ChannelFeatureBuilder,VectorString],:void
        attach_function :cv_softcascade_channel_feature_builder_get_list,:rbind_cv_softcascade_ChannelFeatureBuilder_getList,[VectorString],:void
        attach_function :cv_softcascade_channel_feature_builder__create,:rbind_cv_softcascade_ChannelFeatureBuilder__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::softcascade::Detector
        attach_function :delete_cv_softcascade_detector,:rbind_delete_cv_softcascade_Detector,[Cv::Softcascade::Detector],:void
        attach_function :delete_cv_softcascade_detector_struct,:rbind_delete_cv_softcascade_Detector,[Cv::Softcascade::DetectorStruct],:void
        attach_function :cv_softcascade_detector_detector,:rbind_cv_softcascade_Detector_Detector,[:double,:double,:int,:int],Cv::Softcascade::Detector
        attach_function :cv_softcascade_detector_load,:rbind_cv_softcascade_Detector_load,[Cv::Softcascade::Detector,Cv::FileNode],:bool
        attach_function :cv_softcascade_detector_read,:rbind_cv_softcascade_Detector_read,[Cv::Softcascade::Detector,Cv::FileNode],:void
        attach_function :cv_softcascade_detector_detect,:rbind_cv_softcascade_Detector_detect,[Cv::Softcascade::Detector,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],:void
        attach_function :cv_softcascade_detector_get_int,:rbind_cv_softcascade_Detector_getInt,[Cv::Softcascade::Detector,Cv::String],:int
        attach_function :cv_softcascade_detector_get_double,:rbind_cv_softcascade_Detector_getDouble,[Cv::Softcascade::Detector,Cv::String],:double
        attach_function :cv_softcascade_detector_get_bool,:rbind_cv_softcascade_Detector_getBool,[Cv::Softcascade::Detector,Cv::String],:bool
        attach_function :cv_softcascade_detector_get_string,:rbind_cv_softcascade_Detector_getString,[Cv::Softcascade::Detector,Cv::String],Cv::String
        attach_function :cv_softcascade_detector_get_mat,:rbind_cv_softcascade_Detector_getMat,[Cv::Softcascade::Detector,Cv::String],Cv::Mat
        attach_function :cv_softcascade_detector_get_mat_vector,:rbind_cv_softcascade_Detector_getMatVector,[Cv::Softcascade::Detector,Cv::String],VectorMat
        attach_function :cv_softcascade_detector_get_algorithm,:rbind_cv_softcascade_Detector_getAlgorithm,[Cv::Softcascade::Detector,Cv::String],PtrAlgorithm
        attach_function :cv_softcascade_detector_set_int,:rbind_cv_softcascade_Detector_setInt,[Cv::Softcascade::Detector,Cv::String,:int],:void
        attach_function :cv_softcascade_detector_set_double,:rbind_cv_softcascade_Detector_setDouble,[Cv::Softcascade::Detector,Cv::String,:double],:void
        attach_function :cv_softcascade_detector_set_bool,:rbind_cv_softcascade_Detector_setBool,[Cv::Softcascade::Detector,Cv::String,:bool],:void
        attach_function :cv_softcascade_detector_set_string,:rbind_cv_softcascade_Detector_setString,[Cv::Softcascade::Detector,Cv::String,Cv::String],:void
        attach_function :cv_softcascade_detector_set_mat,:rbind_cv_softcascade_Detector_setMat,[Cv::Softcascade::Detector,Cv::String,Cv::Mat],:void
        attach_function :cv_softcascade_detector_set_mat_vector,:rbind_cv_softcascade_Detector_setMatVector,[Cv::Softcascade::Detector,Cv::String,VectorMat],:void
        attach_function :cv_softcascade_detector_set_algorithm,:rbind_cv_softcascade_Detector_setAlgorithm,[Cv::Softcascade::Detector,Cv::String,PtrAlgorithm],:void
        attach_function :cv_softcascade_detector_param_help,:rbind_cv_softcascade_Detector_paramHelp,[Cv::Softcascade::Detector,Cv::String],Cv::String
        attach_function :cv_softcascade_detector_param_type,:rbind_cv_softcascade_Detector_paramType,[Cv::Softcascade::Detector,Cv::String],:int
        attach_function :cv_softcascade_detector_get_params,:rbind_cv_softcascade_Detector_getParams,[Cv::Softcascade::Detector,VectorString],:void
        attach_function :cv_softcascade_detector_get_list,:rbind_cv_softcascade_Detector_getList,[VectorString],:void
        attach_function :cv_softcascade_detector__create,:rbind_cv_softcascade_Detector__create,[Cv::String],PtrAlgorithm
        
        #methods for cv::softcascade::Octave
        
        #methods for cv::softcascade::ChannelsProcessor
        
        #methods for cv::softcascade::SCascade
        
        #methods for cv::Stitcher
        
        #methods for cv::FernClassifier
        
        #methods for CvTermCriteria
        attach_function :delete_cv_term_criteria,:rbind_delete_CvTermCriteria,[CvTermCriteria],:void
        attach_function :delete_cv_term_criteria_struct,:rbind_delete_CvTermCriteria,[CvTermCriteriaStruct],:void
        
        #methods for CvDTreeNode
        attach_function :delete_cvd_tree_node,:rbind_delete_CvDTreeNode,[CvDTreeNode],:void
        attach_function :delete_cvd_tree_node_struct,:rbind_delete_CvDTreeNode,[CvDTreeNodeStruct],:void
        
        #methods for CvSlice
        attach_function :delete_cv_slice,:rbind_delete_CvSlice,[CvSlice],:void
        attach_function :delete_cv_slice_struct,:rbind_delete_CvSlice,[CvSliceStruct],:void
        
        #methods for cvflann
        
        #methods for cvflann::flann_algorithm_t
        attach_function :delete_cvflann_flann_algorithmt,:rbind_delete_cvflann_flann_algorithm_t,[Cvflann::FlannAlgorithmT],:void
        attach_function :delete_cvflann_flann_algorithmt_struct,:rbind_delete_cvflann_flann_algorithm_t,[Cvflann::FlannAlgorithmTStruct],:void
        
        #methods for cvflann::flann_distance_t
        attach_function :delete_cvflann_flann_distancet,:rbind_delete_cvflann_flann_distance_t,[Cvflann::FlannDistanceT],:void
        attach_function :delete_cvflann_flann_distancet_struct,:rbind_delete_cvflann_flann_distance_t,[Cvflann::FlannDistanceTStruct],:void
        
        #methods for vector_Mat
        attach_function :delete_vector_mat,:rbind_delete_vector_Mat,[VectorMat],:void
        attach_function :delete_vector_mat_struct,:rbind_delete_vector_Mat,[VectorMatStruct],:void
        attach_function :vector_mat_vector_mat,:rbind_vector_Mat_vector_Mat,[],VectorMat
        attach_function :vector_mat_vector_mat2,:rbind_vector_Mat_vector_Mat2,[VectorMat],VectorMat
        attach_function :vector_mat_resize,:rbind_vector_Mat_resize,[VectorMat,:size_t,Cv::Mat],:void
        attach_function :vector_mat_size,:rbind_vector_Mat_size,[VectorMat],:size_t
        attach_function :vector_mat_capacity,:rbind_vector_Mat_capacity,[VectorMat],:size_t
        attach_function :vector_mat_empty,:rbind_vector_Mat_empty,[VectorMat],:bool
        attach_function :vector_mat_reserve,:rbind_vector_Mat_reserve,[VectorMat,:size_t],:void
        attach_function :vector_mat_operator_array,:rbind_vector_Mat_operator_array,[VectorMat,:size_t],Cv::Mat
        attach_function :vector_mat_at,:rbind_vector_Mat_at,[VectorMat,:size_t],Cv::Mat
        attach_function :vector_mat_front,:rbind_vector_Mat_front,[VectorMat],Cv::Mat
        attach_function :vector_mat_back,:rbind_vector_Mat_back,[VectorMat],Cv::Mat
        attach_function :vector_mat_data,:rbind_vector_Mat_data,[VectorMat],:pointer
        attach_function :vector_mat_push_back,:rbind_vector_Mat_push_back,[VectorMat,Cv::Mat],:void
        attach_function :vector_mat_pop_back,:rbind_vector_Mat_pop_back,[VectorMat],:void
        attach_function :vector_mat_swap,:rbind_vector_Mat_swap,[VectorMat,VectorMat],:void
        
        #methods for vector_int
        attach_function :delete_vector_int,:rbind_delete_vector_int,[VectorInt],:void
        attach_function :delete_vector_int_struct,:rbind_delete_vector_int,[VectorIntStruct],:void
        attach_function :vector_int_vector_int,:rbind_vector_int_vector_int,[],VectorInt
        attach_function :vector_int_vector_int2,:rbind_vector_int_vector_int2,[VectorInt],VectorInt
        attach_function :vector_int_resize,:rbind_vector_int_resize,[VectorInt,:size_t,:int],:void
        attach_function :vector_int_size,:rbind_vector_int_size,[VectorInt],:size_t
        attach_function :vector_int_capacity,:rbind_vector_int_capacity,[VectorInt],:size_t
        attach_function :vector_int_empty,:rbind_vector_int_empty,[VectorInt],:bool
        attach_function :vector_int_reserve,:rbind_vector_int_reserve,[VectorInt,:size_t],:void
        attach_function :vector_int_operator_array,:rbind_vector_int_operator_array,[VectorInt,:size_t],:int
        attach_function :vector_int_at,:rbind_vector_int_at,[VectorInt,:size_t],:int
        attach_function :vector_int_front,:rbind_vector_int_front,[VectorInt],:int
        attach_function :vector_int_back,:rbind_vector_int_back,[VectorInt],:int
        attach_function :vector_int_data,:rbind_vector_int_data,[VectorInt],:pointer
        attach_function :vector_int_push_back,:rbind_vector_int_push_back,[VectorInt,:int],:void
        attach_function :vector_int_pop_back,:rbind_vector_int_pop_back,[VectorInt],:void
        attach_function :vector_int_swap,:rbind_vector_int_swap,[VectorInt,VectorInt],:void
        
        #methods for vector_Point
        attach_function :delete_vector_point,:rbind_delete_vector_Point,[VectorPoint],:void
        attach_function :delete_vector_point_struct,:rbind_delete_vector_Point,[VectorPointStruct],:void
        attach_function :vector_point_vector_point,:rbind_vector_Point_vector_Point,[],VectorPoint
        attach_function :vector_point_vector_point2,:rbind_vector_Point_vector_Point2,[VectorPoint],VectorPoint
        attach_function :vector_point_resize,:rbind_vector_Point_resize,[VectorPoint,:size_t,Cv::Point],:void
        attach_function :vector_point_size,:rbind_vector_Point_size,[VectorPoint],:size_t
        attach_function :vector_point_capacity,:rbind_vector_Point_capacity,[VectorPoint],:size_t
        attach_function :vector_point_empty,:rbind_vector_Point_empty,[VectorPoint],:bool
        attach_function :vector_point_reserve,:rbind_vector_Point_reserve,[VectorPoint,:size_t],:void
        attach_function :vector_point_operator_array,:rbind_vector_Point_operator_array,[VectorPoint,:size_t],Cv::Point
        attach_function :vector_point_at,:rbind_vector_Point_at,[VectorPoint,:size_t],Cv::Point
        attach_function :vector_point_front,:rbind_vector_Point_front,[VectorPoint],Cv::Point
        attach_function :vector_point_back,:rbind_vector_Point_back,[VectorPoint],Cv::Point
        attach_function :vector_point_data,:rbind_vector_Point_data,[VectorPoint],:pointer
        attach_function :vector_point_push_back,:rbind_vector_Point_push_back,[VectorPoint,Cv::Point],:void
        attach_function :vector_point_pop_back,:rbind_vector_Point_pop_back,[VectorPoint],:void
        attach_function :vector_point_swap,:rbind_vector_Point_swap,[VectorPoint,VectorPoint],:void
        
        #methods for Ptr_Algorithm
        attach_function :delete_ptr_algorithm,:rbind_delete_Ptr_Algorithm,[PtrAlgorithm],:void
        attach_function :delete_ptr_algorithm_struct,:rbind_delete_Ptr_Algorithm,[PtrAlgorithmStruct],:void
        attach_function :ptr_algorithm_ptr_algorithm,:rbind_Ptr_Algorithm_Ptr_Algorithm,[PtrAlgorithm],PtrAlgorithm
        attach_function :ptr_algorithm_addref,:rbind_Ptr_Algorithm_addref,[PtrAlgorithm],:void
        attach_function :ptr_algorithm_release,:rbind_Ptr_Algorithm_release,[PtrAlgorithm],:void
        attach_function :ptr_algorithm_delete_obj,:rbind_Ptr_Algorithm_delete_obj,[PtrAlgorithm],:void
        attach_function :ptr_algorithm_empty,:rbind_Ptr_Algorithm_empty,[PtrAlgorithm],:bool
        attach_function :ptr_algorithm_get_obj,:rbind_Ptr_Algorithm_get_obj,[PtrAlgorithm],Cv::Algorithm
        
        #methods for vector_String
        attach_function :delete_vector_string,:rbind_delete_vector_String,[VectorString],:void
        attach_function :delete_vector_string_struct,:rbind_delete_vector_String,[VectorStringStruct],:void
        attach_function :vector_string_vector_string,:rbind_vector_String_vector_String,[],VectorString
        attach_function :vector_string_vector_string2,:rbind_vector_String_vector_String2,[VectorString],VectorString
        attach_function :vector_string_resize,:rbind_vector_String_resize,[VectorString,:size_t,Cv::String],:void
        attach_function :vector_string_size,:rbind_vector_String_size,[VectorString],:size_t
        attach_function :vector_string_capacity,:rbind_vector_String_capacity,[VectorString],:size_t
        attach_function :vector_string_empty,:rbind_vector_String_empty,[VectorString],:bool
        attach_function :vector_string_reserve,:rbind_vector_String_reserve,[VectorString,:size_t],:void
        attach_function :vector_string_operator_array,:rbind_vector_String_operator_array,[VectorString,:size_t],Cv::String
        attach_function :vector_string_at,:rbind_vector_String_at,[VectorString,:size_t],Cv::String
        attach_function :vector_string_front,:rbind_vector_String_front,[VectorString],Cv::String
        attach_function :vector_string_back,:rbind_vector_String_back,[VectorString],Cv::String
        attach_function :vector_string_data,:rbind_vector_String_data,[VectorString],:pointer
        attach_function :vector_string_push_back,:rbind_vector_String_push_back,[VectorString,Cv::String],:void
        attach_function :vector_string_pop_back,:rbind_vector_String_pop_back,[VectorString],:void
        attach_function :vector_string_swap,:rbind_vector_String_swap,[VectorString,VectorString],:void
        
        #methods for vector_vector_Point
        attach_function :delete_vector_vector_point,:rbind_delete_vector_vector_Point,[VectorVectorPoint],:void
        attach_function :delete_vector_vector_point_struct,:rbind_delete_vector_vector_Point,[VectorVectorPointStruct],:void
        attach_function :vector_vector_point_vector_vector_point,:rbind_vector_vector_Point_vector_vector_Point,[],VectorVectorPoint
        attach_function :vector_vector_point_vector_vector_point2,:rbind_vector_vector_Point_vector_vector_Point2,[VectorVectorPoint],VectorVectorPoint
        attach_function :vector_vector_point_resize,:rbind_vector_vector_Point_resize,[VectorVectorPoint,:size_t,VectorPoint],:void
        attach_function :vector_vector_point_size,:rbind_vector_vector_Point_size,[VectorVectorPoint],:size_t
        attach_function :vector_vector_point_capacity,:rbind_vector_vector_Point_capacity,[VectorVectorPoint],:size_t
        attach_function :vector_vector_point_empty,:rbind_vector_vector_Point_empty,[VectorVectorPoint],:bool
        attach_function :vector_vector_point_reserve,:rbind_vector_vector_Point_reserve,[VectorVectorPoint,:size_t],:void
        attach_function :vector_vector_point_operator_array,:rbind_vector_vector_Point_operator_array,[VectorVectorPoint,:size_t],VectorPoint
        attach_function :vector_vector_point_at,:rbind_vector_vector_Point_at,[VectorVectorPoint,:size_t],VectorPoint
        attach_function :vector_vector_point_front,:rbind_vector_vector_Point_front,[VectorVectorPoint],VectorPoint
        attach_function :vector_vector_point_back,:rbind_vector_vector_Point_back,[VectorVectorPoint],VectorPoint
        attach_function :vector_vector_point_data,:rbind_vector_vector_Point_data,[VectorVectorPoint],:pointer
        attach_function :vector_vector_point_push_back,:rbind_vector_vector_Point_push_back,[VectorVectorPoint,VectorPoint],:void
        attach_function :vector_vector_point_pop_back,:rbind_vector_vector_Point_pop_back,[VectorVectorPoint],:void
        attach_function :vector_vector_point_swap,:rbind_vector_vector_Point_swap,[VectorVectorPoint,VectorVectorPoint],:void
        
        #methods for vector_float
        attach_function :delete_vector_float,:rbind_delete_vector_float,[VectorFloat],:void
        attach_function :delete_vector_float_struct,:rbind_delete_vector_float,[VectorFloatStruct],:void
        attach_function :vector_float_vector_float,:rbind_vector_float_vector_float,[],VectorFloat
        attach_function :vector_float_vector_float2,:rbind_vector_float_vector_float2,[VectorFloat],VectorFloat
        attach_function :vector_float_resize,:rbind_vector_float_resize,[VectorFloat,:size_t,:float],:void
        attach_function :vector_float_size,:rbind_vector_float_size,[VectorFloat],:size_t
        attach_function :vector_float_capacity,:rbind_vector_float_capacity,[VectorFloat],:size_t
        attach_function :vector_float_empty,:rbind_vector_float_empty,[VectorFloat],:bool
        attach_function :vector_float_reserve,:rbind_vector_float_reserve,[VectorFloat,:size_t],:void
        attach_function :vector_float_operator_array,:rbind_vector_float_operator_array,[VectorFloat,:size_t],:float
        attach_function :vector_float_at,:rbind_vector_float_at,[VectorFloat,:size_t],:float
        attach_function :vector_float_front,:rbind_vector_float_front,[VectorFloat],:float
        attach_function :vector_float_back,:rbind_vector_float_back,[VectorFloat],:float
        attach_function :vector_float_data,:rbind_vector_float_data,[VectorFloat],:pointer
        attach_function :vector_float_push_back,:rbind_vector_float_push_back,[VectorFloat,:float],:void
        attach_function :vector_float_pop_back,:rbind_vector_float_pop_back,[VectorFloat],:void
        attach_function :vector_float_swap,:rbind_vector_float_swap,[VectorFloat,VectorFloat],:void
        
        #methods for Ptr_FaceRecognizer
        attach_function :delete_ptr_face_recognizer,:rbind_delete_Ptr_FaceRecognizer,[PtrFaceRecognizer],:void
        attach_function :delete_ptr_face_recognizer_struct,:rbind_delete_Ptr_FaceRecognizer,[PtrFaceRecognizerStruct],:void
        attach_function :ptr_face_recognizer_ptr_face_recognizer,:rbind_Ptr_FaceRecognizer_Ptr_FaceRecognizer,[PtrFaceRecognizer],PtrFaceRecognizer
        attach_function :ptr_face_recognizer_addref,:rbind_Ptr_FaceRecognizer_addref,[PtrFaceRecognizer],:void
        attach_function :ptr_face_recognizer_release,:rbind_Ptr_FaceRecognizer_release,[PtrFaceRecognizer],:void
        attach_function :ptr_face_recognizer_delete_obj,:rbind_Ptr_FaceRecognizer_delete_obj,[PtrFaceRecognizer],:void
        attach_function :ptr_face_recognizer_empty,:rbind_Ptr_FaceRecognizer_empty,[PtrFaceRecognizer],:bool
        attach_function :ptr_face_recognizer_get_obj,:rbind_Ptr_FaceRecognizer_get_obj,[PtrFaceRecognizer],Cv::FaceRecognizer
        
        #methods for Ptr_FeatureDetector
        attach_function :delete_ptr_feature_detector,:rbind_delete_Ptr_FeatureDetector,[PtrFeatureDetector],:void
        attach_function :delete_ptr_feature_detector_struct,:rbind_delete_Ptr_FeatureDetector,[PtrFeatureDetectorStruct],:void
        attach_function :ptr_feature_detector_ptr_feature_detector,:rbind_Ptr_FeatureDetector_Ptr_FeatureDetector,[PtrFeatureDetector],PtrFeatureDetector
        attach_function :ptr_feature_detector_addref,:rbind_Ptr_FeatureDetector_addref,[PtrFeatureDetector],:void
        attach_function :ptr_feature_detector_release,:rbind_Ptr_FeatureDetector_release,[PtrFeatureDetector],:void
        attach_function :ptr_feature_detector_delete_obj,:rbind_Ptr_FeatureDetector_delete_obj,[PtrFeatureDetector],:void
        attach_function :ptr_feature_detector_empty,:rbind_Ptr_FeatureDetector_empty,[PtrFeatureDetector],:bool
        attach_function :ptr_feature_detector_get_obj,:rbind_Ptr_FeatureDetector_get_obj,[PtrFeatureDetector],Cv::FeatureDetector
        
        #methods for Ptr_StereoBM
        attach_function :delete_ptr_stereobm,:rbind_delete_Ptr_StereoBM,[PtrStereoBM],:void
        attach_function :delete_ptr_stereobm_struct,:rbind_delete_Ptr_StereoBM,[PtrStereoBMStruct],:void
        attach_function :ptr_stereobm_ptr_stereobm,:rbind_Ptr_StereoBM_Ptr_StereoBM,[PtrStereoBM],PtrStereoBM
        attach_function :ptr_stereobm_addref,:rbind_Ptr_StereoBM_addref,[PtrStereoBM],:void
        attach_function :ptr_stereobm_release,:rbind_Ptr_StereoBM_release,[PtrStereoBM],:void
        attach_function :ptr_stereobm_delete_obj,:rbind_Ptr_StereoBM_delete_obj,[PtrStereoBM],:void
        attach_function :ptr_stereobm_empty,:rbind_Ptr_StereoBM_empty,[PtrStereoBM],:bool
        attach_function :ptr_stereobm_get_obj,:rbind_Ptr_StereoBM_get_obj,[PtrStereoBM],Cv::StereoBM
        
        #methods for Ptr_StereoSGBM
        attach_function :delete_ptr_stereosgbm,:rbind_delete_Ptr_StereoSGBM,[PtrStereoSGBM],:void
        attach_function :delete_ptr_stereosgbm_struct,:rbind_delete_Ptr_StereoSGBM,[PtrStereoSGBMStruct],:void
        attach_function :ptr_stereosgbm_ptr_stereosgbm,:rbind_Ptr_StereoSGBM_Ptr_StereoSGBM,[PtrStereoSGBM],PtrStereoSGBM
        attach_function :ptr_stereosgbm_addref,:rbind_Ptr_StereoSGBM_addref,[PtrStereoSGBM],:void
        attach_function :ptr_stereosgbm_release,:rbind_Ptr_StereoSGBM_release,[PtrStereoSGBM],:void
        attach_function :ptr_stereosgbm_delete_obj,:rbind_Ptr_StereoSGBM_delete_obj,[PtrStereoSGBM],:void
        attach_function :ptr_stereosgbm_empty,:rbind_Ptr_StereoSGBM_empty,[PtrStereoSGBM],:bool
        attach_function :ptr_stereosgbm_get_obj,:rbind_Ptr_StereoSGBM_get_obj,[PtrStereoSGBM],Cv::StereoSGBM
        
        #methods for vector_KeyPoint
        attach_function :delete_vector_key_point,:rbind_delete_vector_KeyPoint,[VectorKeyPoint],:void
        attach_function :delete_vector_key_point_struct,:rbind_delete_vector_KeyPoint,[VectorKeyPointStruct],:void
        attach_function :vector_key_point_vector_key_point,:rbind_vector_KeyPoint_vector_KeyPoint,[],VectorKeyPoint
        attach_function :vector_key_point_vector_key_point2,:rbind_vector_KeyPoint_vector_KeyPoint2,[VectorKeyPoint],VectorKeyPoint
        attach_function :vector_key_point_resize,:rbind_vector_KeyPoint_resize,[VectorKeyPoint,:size_t,Cv::KeyPoint],:void
        attach_function :vector_key_point_size,:rbind_vector_KeyPoint_size,[VectorKeyPoint],:size_t
        attach_function :vector_key_point_capacity,:rbind_vector_KeyPoint_capacity,[VectorKeyPoint],:size_t
        attach_function :vector_key_point_empty,:rbind_vector_KeyPoint_empty,[VectorKeyPoint],:bool
        attach_function :vector_key_point_reserve,:rbind_vector_KeyPoint_reserve,[VectorKeyPoint,:size_t],:void
        attach_function :vector_key_point_operator_array,:rbind_vector_KeyPoint_operator_array,[VectorKeyPoint,:size_t],Cv::KeyPoint
        attach_function :vector_key_point_at,:rbind_vector_KeyPoint_at,[VectorKeyPoint,:size_t],Cv::KeyPoint
        attach_function :vector_key_point_front,:rbind_vector_KeyPoint_front,[VectorKeyPoint],Cv::KeyPoint
        attach_function :vector_key_point_back,:rbind_vector_KeyPoint_back,[VectorKeyPoint],Cv::KeyPoint
        attach_function :vector_key_point_data,:rbind_vector_KeyPoint_data,[VectorKeyPoint],:pointer
        attach_function :vector_key_point_push_back,:rbind_vector_KeyPoint_push_back,[VectorKeyPoint,Cv::KeyPoint],:void
        attach_function :vector_key_point_pop_back,:rbind_vector_KeyPoint_pop_back,[VectorKeyPoint],:void
        attach_function :vector_key_point_swap,:rbind_vector_KeyPoint_swap,[VectorKeyPoint,VectorKeyPoint],:void
        
        #methods for Ptr_DescriptorExtractor
        attach_function :delete_ptr_descriptor_extractor,:rbind_delete_Ptr_DescriptorExtractor,[PtrDescriptorExtractor],:void
        attach_function :delete_ptr_descriptor_extractor_struct,:rbind_delete_Ptr_DescriptorExtractor,[PtrDescriptorExtractorStruct],:void
        attach_function :ptr_descriptor_extractor_ptr_descriptor_extractor,:rbind_Ptr_DescriptorExtractor_Ptr_DescriptorExtractor,[PtrDescriptorExtractor],PtrDescriptorExtractor
        attach_function :ptr_descriptor_extractor_addref,:rbind_Ptr_DescriptorExtractor_addref,[PtrDescriptorExtractor],:void
        attach_function :ptr_descriptor_extractor_release,:rbind_Ptr_DescriptorExtractor_release,[PtrDescriptorExtractor],:void
        attach_function :ptr_descriptor_extractor_delete_obj,:rbind_Ptr_DescriptorExtractor_delete_obj,[PtrDescriptorExtractor],:void
        attach_function :ptr_descriptor_extractor_empty,:rbind_Ptr_DescriptorExtractor_empty,[PtrDescriptorExtractor],:bool
        attach_function :ptr_descriptor_extractor_get_obj,:rbind_Ptr_DescriptorExtractor_get_obj,[PtrDescriptorExtractor],Cv::DescriptorExtractor
        
        #methods for Ptr_Feature2D
        attach_function :delete_ptr_feature2d,:rbind_delete_Ptr_Feature2D,[PtrFeature2D],:void
        attach_function :delete_ptr_feature2d_struct,:rbind_delete_Ptr_Feature2D,[PtrFeature2DStruct],:void
        attach_function :ptr_feature2d_ptr_feature2d,:rbind_Ptr_Feature2D_Ptr_Feature2D,[PtrFeature2D],PtrFeature2D
        attach_function :ptr_feature2d_addref,:rbind_Ptr_Feature2D_addref,[PtrFeature2D],:void
        attach_function :ptr_feature2d_release,:rbind_Ptr_Feature2D_release,[PtrFeature2D],:void
        attach_function :ptr_feature2d_delete_obj,:rbind_Ptr_Feature2D_delete_obj,[PtrFeature2D],:void
        attach_function :ptr_feature2d_empty,:rbind_Ptr_Feature2D_empty,[PtrFeature2D],:bool
        attach_function :ptr_feature2d_get_obj,:rbind_Ptr_Feature2D_get_obj,[PtrFeature2D],Cv::Feature2D
        
        #methods for vector_DMatch
        attach_function :delete_vector_d_match,:rbind_delete_vector_DMatch,[VectorDMatch],:void
        attach_function :delete_vector_d_match_struct,:rbind_delete_vector_DMatch,[VectorDMatchStruct],:void
        attach_function :vector_d_match_vector_d_match,:rbind_vector_DMatch_vector_DMatch,[],VectorDMatch
        attach_function :vector_d_match_vector_d_match2,:rbind_vector_DMatch_vector_DMatch2,[VectorDMatch],VectorDMatch
        attach_function :vector_d_match_resize,:rbind_vector_DMatch_resize,[VectorDMatch,:size_t,Cv::DMatch],:void
        attach_function :vector_d_match_size,:rbind_vector_DMatch_size,[VectorDMatch],:size_t
        attach_function :vector_d_match_capacity,:rbind_vector_DMatch_capacity,[VectorDMatch],:size_t
        attach_function :vector_d_match_empty,:rbind_vector_DMatch_empty,[VectorDMatch],:bool
        attach_function :vector_d_match_reserve,:rbind_vector_DMatch_reserve,[VectorDMatch,:size_t],:void
        attach_function :vector_d_match_operator_array,:rbind_vector_DMatch_operator_array,[VectorDMatch,:size_t],Cv::DMatch
        attach_function :vector_d_match_at,:rbind_vector_DMatch_at,[VectorDMatch,:size_t],Cv::DMatch
        attach_function :vector_d_match_front,:rbind_vector_DMatch_front,[VectorDMatch],Cv::DMatch
        attach_function :vector_d_match_back,:rbind_vector_DMatch_back,[VectorDMatch],Cv::DMatch
        attach_function :vector_d_match_data,:rbind_vector_DMatch_data,[VectorDMatch],:pointer
        attach_function :vector_d_match_push_back,:rbind_vector_DMatch_push_back,[VectorDMatch,Cv::DMatch],:void
        attach_function :vector_d_match_pop_back,:rbind_vector_DMatch_pop_back,[VectorDMatch],:void
        attach_function :vector_d_match_swap,:rbind_vector_DMatch_swap,[VectorDMatch,VectorDMatch],:void
        
        #methods for vector_vector_DMatch
        attach_function :delete_vector_vector_d_match,:rbind_delete_vector_vector_DMatch,[VectorVectorDMatch],:void
        attach_function :delete_vector_vector_d_match_struct,:rbind_delete_vector_vector_DMatch,[VectorVectorDMatchStruct],:void
        attach_function :vector_vector_d_match_vector_vector_d_match,:rbind_vector_vector_DMatch_vector_vector_DMatch,[],VectorVectorDMatch
        attach_function :vector_vector_d_match_vector_vector_d_match2,:rbind_vector_vector_DMatch_vector_vector_DMatch2,[VectorVectorDMatch],VectorVectorDMatch
        attach_function :vector_vector_d_match_resize,:rbind_vector_vector_DMatch_resize,[VectorVectorDMatch,:size_t,VectorDMatch],:void
        attach_function :vector_vector_d_match_size,:rbind_vector_vector_DMatch_size,[VectorVectorDMatch],:size_t
        attach_function :vector_vector_d_match_capacity,:rbind_vector_vector_DMatch_capacity,[VectorVectorDMatch],:size_t
        attach_function :vector_vector_d_match_empty,:rbind_vector_vector_DMatch_empty,[VectorVectorDMatch],:bool
        attach_function :vector_vector_d_match_reserve,:rbind_vector_vector_DMatch_reserve,[VectorVectorDMatch,:size_t],:void
        attach_function :vector_vector_d_match_operator_array,:rbind_vector_vector_DMatch_operator_array,[VectorVectorDMatch,:size_t],VectorDMatch
        attach_function :vector_vector_d_match_at,:rbind_vector_vector_DMatch_at,[VectorVectorDMatch,:size_t],VectorDMatch
        attach_function :vector_vector_d_match_front,:rbind_vector_vector_DMatch_front,[VectorVectorDMatch],VectorDMatch
        attach_function :vector_vector_d_match_back,:rbind_vector_vector_DMatch_back,[VectorVectorDMatch],VectorDMatch
        attach_function :vector_vector_d_match_data,:rbind_vector_vector_DMatch_data,[VectorVectorDMatch],:pointer
        attach_function :vector_vector_d_match_push_back,:rbind_vector_vector_DMatch_push_back,[VectorVectorDMatch,VectorDMatch],:void
        attach_function :vector_vector_d_match_pop_back,:rbind_vector_vector_DMatch_pop_back,[VectorVectorDMatch],:void
        attach_function :vector_vector_d_match_swap,:rbind_vector_vector_DMatch_swap,[VectorVectorDMatch,VectorVectorDMatch],:void
        
        #methods for Ptr_DescriptorMatcher
        attach_function :delete_ptr_descriptor_matcher,:rbind_delete_Ptr_DescriptorMatcher,[PtrDescriptorMatcher],:void
        attach_function :delete_ptr_descriptor_matcher_struct,:rbind_delete_Ptr_DescriptorMatcher,[PtrDescriptorMatcherStruct],:void
        attach_function :ptr_descriptor_matcher_ptr_descriptor_matcher,:rbind_Ptr_DescriptorMatcher_Ptr_DescriptorMatcher,[PtrDescriptorMatcher],PtrDescriptorMatcher
        attach_function :ptr_descriptor_matcher_addref,:rbind_Ptr_DescriptorMatcher_addref,[PtrDescriptorMatcher],:void
        attach_function :ptr_descriptor_matcher_release,:rbind_Ptr_DescriptorMatcher_release,[PtrDescriptorMatcher],:void
        attach_function :ptr_descriptor_matcher_delete_obj,:rbind_Ptr_DescriptorMatcher_delete_obj,[PtrDescriptorMatcher],:void
        attach_function :ptr_descriptor_matcher_empty,:rbind_Ptr_DescriptorMatcher_empty,[PtrDescriptorMatcher],:bool
        attach_function :ptr_descriptor_matcher_get_obj,:rbind_Ptr_DescriptorMatcher_get_obj,[PtrDescriptorMatcher],Cv::DescriptorMatcher
        
        #methods for Ptr_flann_IndexParams
        attach_function :delete_ptr_flann_index_params,:rbind_delete_Ptr_flann_IndexParams,[PtrFlannIndexParams],:void
        attach_function :delete_ptr_flann_index_params_struct,:rbind_delete_Ptr_flann_IndexParams,[PtrFlannIndexParamsStruct],:void
        attach_function :ptr_flann_index_params_ptr_flann_index_params,:rbind_Ptr_flann_IndexParams_Ptr_flann_IndexParams,[PtrFlannIndexParams],PtrFlannIndexParams
        attach_function :ptr_flann_index_params_addref,:rbind_Ptr_flann_IndexParams_addref,[PtrFlannIndexParams],:void
        attach_function :ptr_flann_index_params_release,:rbind_Ptr_flann_IndexParams_release,[PtrFlannIndexParams],:void
        attach_function :ptr_flann_index_params_delete_obj,:rbind_Ptr_flann_IndexParams_delete_obj,[PtrFlannIndexParams],:void
        attach_function :ptr_flann_index_params_empty,:rbind_Ptr_flann_IndexParams_empty,[PtrFlannIndexParams],:bool
        attach_function :ptr_flann_index_params_get_obj,:rbind_Ptr_flann_IndexParams_get_obj,[PtrFlannIndexParams],Cv::Flann::IndexParams
        
        #methods for Ptr_flann_SearchParams
        attach_function :delete_ptr_flann_search_params,:rbind_delete_Ptr_flann_SearchParams,[PtrFlannSearchParams],:void
        attach_function :delete_ptr_flann_search_params_struct,:rbind_delete_Ptr_flann_SearchParams,[PtrFlannSearchParamsStruct],:void
        attach_function :ptr_flann_search_params_ptr_flann_search_params,:rbind_Ptr_flann_SearchParams_Ptr_flann_SearchParams,[PtrFlannSearchParams],PtrFlannSearchParams
        attach_function :ptr_flann_search_params_addref,:rbind_Ptr_flann_SearchParams_addref,[PtrFlannSearchParams],:void
        attach_function :ptr_flann_search_params_release,:rbind_Ptr_flann_SearchParams_release,[PtrFlannSearchParams],:void
        attach_function :ptr_flann_search_params_delete_obj,:rbind_Ptr_flann_SearchParams_delete_obj,[PtrFlannSearchParams],:void
        attach_function :ptr_flann_search_params_empty,:rbind_Ptr_flann_SearchParams_empty,[PtrFlannSearchParams],:bool
        attach_function :ptr_flann_search_params_get_obj,:rbind_Ptr_flann_SearchParams_get_obj,[PtrFlannSearchParams],Cv::Flann::SearchParams
        
        #methods for vector_uchar
        attach_function :delete_vector_uchar,:rbind_delete_vector_uchar,[VectorUchar],:void
        attach_function :delete_vector_uchar_struct,:rbind_delete_vector_uchar,[VectorUcharStruct],:void
        attach_function :vector_uchar_vector_uchar,:rbind_vector_uchar_vector_uchar,[],VectorUchar
        attach_function :vector_uchar_vector_uchar2,:rbind_vector_uchar_vector_uchar2,[VectorUchar],VectorUchar
        attach_function :vector_uchar_resize,:rbind_vector_uchar_resize,[VectorUchar,:size_t,:uchar],:void
        attach_function :vector_uchar_size,:rbind_vector_uchar_size,[VectorUchar],:size_t
        attach_function :vector_uchar_capacity,:rbind_vector_uchar_capacity,[VectorUchar],:size_t
        attach_function :vector_uchar_empty,:rbind_vector_uchar_empty,[VectorUchar],:bool
        attach_function :vector_uchar_reserve,:rbind_vector_uchar_reserve,[VectorUchar,:size_t],:void
        attach_function :vector_uchar_operator_array,:rbind_vector_uchar_operator_array,[VectorUchar,:size_t],:uchar
        attach_function :vector_uchar_at,:rbind_vector_uchar_at,[VectorUchar,:size_t],:uchar
        attach_function :vector_uchar_front,:rbind_vector_uchar_front,[VectorUchar],:uchar
        attach_function :vector_uchar_back,:rbind_vector_uchar_back,[VectorUchar],:uchar
        attach_function :vector_uchar_data,:rbind_vector_uchar_data,[VectorUchar],:pointer
        attach_function :vector_uchar_push_back,:rbind_vector_uchar_push_back,[VectorUchar,:uchar],:void
        attach_function :vector_uchar_pop_back,:rbind_vector_uchar_pop_back,[VectorUchar],:void
        attach_function :vector_uchar_swap,:rbind_vector_uchar_swap,[VectorUchar,VectorUchar],:void
        
        #methods for vector_Point2f
        attach_function :delete_vector_point_2f,:rbind_delete_vector_Point2f,[VectorPoint2f],:void
        attach_function :delete_vector_point_2f_struct,:rbind_delete_vector_Point2f,[VectorPoint2fStruct],:void
        attach_function :vector_point_2f_vector_point_2f,:rbind_vector_Point2f_vector_Point2f,[],VectorPoint2f
        attach_function :vector_point_2f_vector_point_2f2,:rbind_vector_Point2f_vector_Point2f2,[VectorPoint2f],VectorPoint2f
        attach_function :vector_point_2f_resize,:rbind_vector_Point2f_resize,[VectorPoint2f,:size_t,Cv::Point2f],:void
        attach_function :vector_point_2f_size,:rbind_vector_Point2f_size,[VectorPoint2f],:size_t
        attach_function :vector_point_2f_capacity,:rbind_vector_Point2f_capacity,[VectorPoint2f],:size_t
        attach_function :vector_point_2f_empty,:rbind_vector_Point2f_empty,[VectorPoint2f],:bool
        attach_function :vector_point_2f_reserve,:rbind_vector_Point2f_reserve,[VectorPoint2f,:size_t],:void
        attach_function :vector_point_2f_operator_array,:rbind_vector_Point2f_operator_array,[VectorPoint2f,:size_t],Cv::Point2f
        attach_function :vector_point_2f_at,:rbind_vector_Point2f_at,[VectorPoint2f,:size_t],Cv::Point2f
        attach_function :vector_point_2f_front,:rbind_vector_Point2f_front,[VectorPoint2f],Cv::Point2f
        attach_function :vector_point_2f_back,:rbind_vector_Point2f_back,[VectorPoint2f],Cv::Point2f
        attach_function :vector_point_2f_data,:rbind_vector_Point2f_data,[VectorPoint2f],:pointer
        attach_function :vector_point_2f_push_back,:rbind_vector_Point2f_push_back,[VectorPoint2f,Cv::Point2f],:void
        attach_function :vector_point_2f_pop_back,:rbind_vector_Point2f_pop_back,[VectorPoint2f],:void
        attach_function :vector_point_2f_swap,:rbind_vector_Point2f_swap,[VectorPoint2f,VectorPoint2f],:void
        
        #methods for vector_Vec4f
        attach_function :delete_vector_vec_4f,:rbind_delete_vector_Vec4f,[VectorVec4f],:void
        attach_function :delete_vector_vec_4f_struct,:rbind_delete_vector_Vec4f,[VectorVec4fStruct],:void
        attach_function :vector_vec_4f_vector_vec_4f,:rbind_vector_Vec4f_vector_Vec4f,[],VectorVec4f
        attach_function :vector_vec_4f_vector_vec_4f2,:rbind_vector_Vec4f_vector_Vec4f2,[VectorVec4f],VectorVec4f
        attach_function :vector_vec_4f_resize,:rbind_vector_Vec4f_resize,[VectorVec4f,:size_t,Cv::Vec4f],:void
        attach_function :vector_vec_4f_size,:rbind_vector_Vec4f_size,[VectorVec4f],:size_t
        attach_function :vector_vec_4f_capacity,:rbind_vector_Vec4f_capacity,[VectorVec4f],:size_t
        attach_function :vector_vec_4f_empty,:rbind_vector_Vec4f_empty,[VectorVec4f],:bool
        attach_function :vector_vec_4f_reserve,:rbind_vector_Vec4f_reserve,[VectorVec4f,:size_t],:void
        attach_function :vector_vec_4f_operator_array,:rbind_vector_Vec4f_operator_array,[VectorVec4f,:size_t],Cv::Vec4f
        attach_function :vector_vec_4f_at,:rbind_vector_Vec4f_at,[VectorVec4f,:size_t],Cv::Vec4f
        attach_function :vector_vec_4f_front,:rbind_vector_Vec4f_front,[VectorVec4f],Cv::Vec4f
        attach_function :vector_vec_4f_back,:rbind_vector_Vec4f_back,[VectorVec4f],Cv::Vec4f
        attach_function :vector_vec_4f_data,:rbind_vector_Vec4f_data,[VectorVec4f],:pointer
        attach_function :vector_vec_4f_push_back,:rbind_vector_Vec4f_push_back,[VectorVec4f,Cv::Vec4f],:void
        attach_function :vector_vec_4f_pop_back,:rbind_vector_Vec4f_pop_back,[VectorVec4f],:void
        attach_function :vector_vec_4f_swap,:rbind_vector_Vec4f_swap,[VectorVec4f,VectorVec4f],:void
        
        #methods for vector_Vec6f
        attach_function :delete_vector_vec_6f,:rbind_delete_vector_Vec6f,[VectorVec6f],:void
        attach_function :delete_vector_vec_6f_struct,:rbind_delete_vector_Vec6f,[VectorVec6fStruct],:void
        attach_function :vector_vec_6f_vector_vec_6f,:rbind_vector_Vec6f_vector_Vec6f,[],VectorVec6f
        attach_function :vector_vec_6f_vector_vec_6f2,:rbind_vector_Vec6f_vector_Vec6f2,[VectorVec6f],VectorVec6f
        attach_function :vector_vec_6f_resize,:rbind_vector_Vec6f_resize,[VectorVec6f,:size_t,Cv::Vec6f],:void
        attach_function :vector_vec_6f_size,:rbind_vector_Vec6f_size,[VectorVec6f],:size_t
        attach_function :vector_vec_6f_capacity,:rbind_vector_Vec6f_capacity,[VectorVec6f],:size_t
        attach_function :vector_vec_6f_empty,:rbind_vector_Vec6f_empty,[VectorVec6f],:bool
        attach_function :vector_vec_6f_reserve,:rbind_vector_Vec6f_reserve,[VectorVec6f,:size_t],:void
        attach_function :vector_vec_6f_operator_array,:rbind_vector_Vec6f_operator_array,[VectorVec6f,:size_t],Cv::Vec6f
        attach_function :vector_vec_6f_at,:rbind_vector_Vec6f_at,[VectorVec6f,:size_t],Cv::Vec6f
        attach_function :vector_vec_6f_front,:rbind_vector_Vec6f_front,[VectorVec6f],Cv::Vec6f
        attach_function :vector_vec_6f_back,:rbind_vector_Vec6f_back,[VectorVec6f],Cv::Vec6f
        attach_function :vector_vec_6f_data,:rbind_vector_Vec6f_data,[VectorVec6f],:pointer
        attach_function :vector_vec_6f_push_back,:rbind_vector_Vec6f_push_back,[VectorVec6f,Cv::Vec6f],:void
        attach_function :vector_vec_6f_pop_back,:rbind_vector_Vec6f_pop_back,[VectorVec6f],:void
        attach_function :vector_vec_6f_swap,:rbind_vector_Vec6f_swap,[VectorVec6f,VectorVec6f],:void
        
        #methods for vector_vector_Point2f
        attach_function :delete_vector_vector_point_2f,:rbind_delete_vector_vector_Point2f,[VectorVectorPoint2f],:void
        attach_function :delete_vector_vector_point_2f_struct,:rbind_delete_vector_vector_Point2f,[VectorVectorPoint2fStruct],:void
        attach_function :vector_vector_point_2f_vector_vector_point_2f,:rbind_vector_vector_Point2f_vector_vector_Point2f,[],VectorVectorPoint2f
        attach_function :vector_vector_point_2f_vector_vector_point_2f2,:rbind_vector_vector_Point2f_vector_vector_Point2f2,[VectorVectorPoint2f],VectorVectorPoint2f
        attach_function :vector_vector_point_2f_resize,:rbind_vector_vector_Point2f_resize,[VectorVectorPoint2f,:size_t,VectorPoint2f],:void
        attach_function :vector_vector_point_2f_size,:rbind_vector_vector_Point2f_size,[VectorVectorPoint2f],:size_t
        attach_function :vector_vector_point_2f_capacity,:rbind_vector_vector_Point2f_capacity,[VectorVectorPoint2f],:size_t
        attach_function :vector_vector_point_2f_empty,:rbind_vector_vector_Point2f_empty,[VectorVectorPoint2f],:bool
        attach_function :vector_vector_point_2f_reserve,:rbind_vector_vector_Point2f_reserve,[VectorVectorPoint2f,:size_t],:void
        attach_function :vector_vector_point_2f_operator_array,:rbind_vector_vector_Point2f_operator_array,[VectorVectorPoint2f,:size_t],VectorPoint2f
        attach_function :vector_vector_point_2f_at,:rbind_vector_vector_Point2f_at,[VectorVectorPoint2f,:size_t],VectorPoint2f
        attach_function :vector_vector_point_2f_front,:rbind_vector_vector_Point2f_front,[VectorVectorPoint2f],VectorPoint2f
        attach_function :vector_vector_point_2f_back,:rbind_vector_vector_Point2f_back,[VectorVectorPoint2f],VectorPoint2f
        attach_function :vector_vector_point_2f_data,:rbind_vector_vector_Point2f_data,[VectorVectorPoint2f],:pointer
        attach_function :vector_vector_point_2f_push_back,:rbind_vector_vector_Point2f_push_back,[VectorVectorPoint2f,VectorPoint2f],:void
        attach_function :vector_vector_point_2f_pop_back,:rbind_vector_vector_Point2f_pop_back,[VectorVectorPoint2f],:void
        attach_function :vector_vector_point_2f_swap,:rbind_vector_vector_Point2f_swap,[VectorVectorPoint2f,VectorVectorPoint2f],:void
        
        #methods for CvStatModel
        attach_function :delete_cv_stat_model,:rbind_delete_CvStatModel,[CvStatModel],:void
        attach_function :delete_cv_stat_model_struct,:rbind_delete_CvStatModel,[CvStatModelStruct],:void
        attach_function :cv_stat_model_save,:rbind_CvStatModel_save,[CvStatModel,:string,:string],:void
        attach_function :cv_stat_model_load,:rbind_CvStatModel_load,[CvStatModel,:string,:string],:void
        
        #methods for CvParamGrid
        attach_function :delete_cv_param_grid,:rbind_delete_CvParamGrid,[CvParamGrid],:void
        attach_function :delete_cv_param_grid_struct,:rbind_delete_CvParamGrid,[CvParamGridStruct],:void
        attach_function :cv_param_grid_get_min_val,:rbind_CvParamGrid_get_min_val,[CvParamGrid],:double
        attach_function :cv_param_grid_set_min_val,:rbind_CvParamGrid_set_min_val,[CvParamGrid,:double],:void
        attach_function :cv_param_grid_get_max_val,:rbind_CvParamGrid_get_max_val,[CvParamGrid],:double
        attach_function :cv_param_grid_set_max_val,:rbind_CvParamGrid_set_max_val,[CvParamGrid,:double],:void
        attach_function :cv_param_grid_get_step,:rbind_CvParamGrid_get_step,[CvParamGrid],:double
        attach_function :cv_param_grid_set_step,:rbind_CvParamGrid_set_step,[CvParamGrid,:double],:void
        
        #methods for CvNormalBayesClassifier
        attach_function :delete_cv_normal_bayes_classifier,:rbind_delete_CvNormalBayesClassifier,[CvNormalBayesClassifier],:void
        attach_function :delete_cv_normal_bayes_classifier_struct,:rbind_delete_CvNormalBayesClassifier,[CvNormalBayesClassifierStruct],:void
        attach_function :cv_normal_bayes_classifier_cv_normal_bayes_classifier,:rbind_CvNormalBayesClassifier_CvNormalBayesClassifier,[],CvNormalBayesClassifier
        attach_function :cv_normal_bayes_classifier_cv_normal_bayes_classifier2,:rbind_CvNormalBayesClassifier_CvNormalBayesClassifier2,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat],CvNormalBayesClassifier
        attach_function :cv_normal_bayes_classifier_clear,:rbind_CvNormalBayesClassifier_clear,[CvNormalBayesClassifier],:void
        attach_function :cv_normal_bayes_classifier_train,:rbind_CvNormalBayesClassifier_train,[CvNormalBayesClassifier,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,:bool],:bool
        attach_function :cv_normal_bayes_classifier_predict,:rbind_CvNormalBayesClassifier_predict,[CvNormalBayesClassifier,Cv::Mat,Cv::Mat],:float
        attach_function :cv_normal_bayes_classifier_save,:rbind_CvNormalBayesClassifier_save,[CvNormalBayesClassifier,:string,:string],:void
        attach_function :cv_normal_bayes_classifier_load,:rbind_CvNormalBayesClassifier_load,[CvNormalBayesClassifier,:string,:string],:void
        
        #methods for CvKNearest
        attach_function :delete_cvk_nearest,:rbind_delete_CvKNearest,[CvKNearest],:void
        attach_function :delete_cvk_nearest_struct,:rbind_delete_CvKNearest,[CvKNearestStruct],:void
        attach_function :cvk_nearest_cvk_nearest,:rbind_CvKNearest_CvKNearest,[],CvKNearest
        attach_function :cvk_nearest_cvk_nearest2,:rbind_CvKNearest_CvKNearest2,[Cv::Mat,Cv::Mat,Cv::Mat,:bool,:int],CvKNearest
        attach_function :cvk_nearest_train,:rbind_CvKNearest_train,[CvKNearest,Cv::Mat,Cv::Mat,Cv::Mat,:bool,:int,:bool],:bool
        attach_function :cvk_nearest_find_nearest,:rbind_CvKNearest_find_nearest,[CvKNearest,Cv::Mat,:int,Cv::Mat,Cv::Mat,Cv::Mat],:float
        attach_function :cvk_nearest_save,:rbind_CvKNearest_save,[CvKNearest,:string,:string],:void
        attach_function :cvk_nearest_load,:rbind_CvKNearest_load,[CvKNearest,:string,:string],:void
        
        #methods for CvSVMParams
        attach_function :delete_cvsvm_params,:rbind_delete_CvSVMParams,[CvSVMParams],:void
        attach_function :delete_cvsvm_params_struct,:rbind_delete_CvSVMParams,[CvSVMParamsStruct],:void
        attach_function :cvsvm_params_get_svm_type,:rbind_CvSVMParams_get_svm_type,[CvSVMParams],:int
        attach_function :cvsvm_params_set_svm_type,:rbind_CvSVMParams_set_svm_type,[CvSVMParams,:int],:void
        attach_function :cvsvm_params_get_kernel_type,:rbind_CvSVMParams_get_kernel_type,[CvSVMParams],:int
        attach_function :cvsvm_params_set_kernel_type,:rbind_CvSVMParams_set_kernel_type,[CvSVMParams,:int],:void
        attach_function :cvsvm_params_get_degree,:rbind_CvSVMParams_get_degree,[CvSVMParams],:double
        attach_function :cvsvm_params_set_degree,:rbind_CvSVMParams_set_degree,[CvSVMParams,:double],:void
        attach_function :cvsvm_params_get_gamma,:rbind_CvSVMParams_get_gamma,[CvSVMParams],:double
        attach_function :cvsvm_params_set_gamma,:rbind_CvSVMParams_set_gamma,[CvSVMParams,:double],:void
        attach_function :cvsvm_params_get_coef0,:rbind_CvSVMParams_get_coef0,[CvSVMParams],:double
        attach_function :cvsvm_params_set_coef0,:rbind_CvSVMParams_set_coef0,[CvSVMParams,:double],:void
        attach_function :cvsvm_params_get_c,:rbind_CvSVMParams_get_C,[CvSVMParams],:double
        attach_function :cvsvm_params_set_c,:rbind_CvSVMParams_set_C,[CvSVMParams,:double],:void
        attach_function :cvsvm_params_get_nu,:rbind_CvSVMParams_get_nu,[CvSVMParams],:double
        attach_function :cvsvm_params_set_nu,:rbind_CvSVMParams_set_nu,[CvSVMParams,:double],:void
        attach_function :cvsvm_params_getp,:rbind_CvSVMParams_get_p,[CvSVMParams],:double
        attach_function :cvsvm_params_setp,:rbind_CvSVMParams_set_p,[CvSVMParams,:double],:void
        attach_function :cvsvm_params_get_term_crit,:rbind_CvSVMParams_get_term_crit,[CvSVMParams],CvTermCriteria
        attach_function :cvsvm_params_set_term_crit,:rbind_CvSVMParams_set_term_crit,[CvSVMParams,CvTermCriteria],:void
        
        #methods for CvSVM
        attach_function :delete_cvsvm,:rbind_delete_CvSVM,[CvSVM],:void
        attach_function :delete_cvsvm_struct,:rbind_delete_CvSVM,[CvSVMStruct],:void
        attach_function :cvsvm_cvsvm,:rbind_CvSVM_CvSVM,[],CvSVM
        attach_function :cvsvm_cvsvm2,:rbind_CvSVM_CvSVM2,[Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvSVMParams],CvSVM
        attach_function :cvsvm_train,:rbind_CvSVM_train,[CvSVM,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvSVMParams],:bool
        attach_function :cvsvm_train_auto,:rbind_CvSVM_train_auto,[CvSVM,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvSVMParams,:int,CvParamGrid,CvParamGrid,CvParamGrid,CvParamGrid,CvParamGrid,CvParamGrid,:bool],:bool
        attach_function :cvsvm_predict,:rbind_CvSVM_predict,[CvSVM,Cv::Mat,:bool],:float
        attach_function :cvsvm_predict_all,:rbind_CvSVM_predict_all,[CvSVM,Cv::Mat,Cv::Mat],:void
        attach_function :cvsvm_get_support_vector_count,:rbind_CvSVM_get_support_vector_count,[CvSVM],:int
        attach_function :cvsvm_clear,:rbind_CvSVM_clear,[CvSVM],:void
        attach_function :cvsvm_get_var_count,:rbind_CvSVM_get_var_count,[CvSVM],:int
        attach_function :cvsvm_save,:rbind_CvSVM_save,[CvSVM,:string,:string],:void
        attach_function :cvsvm_load,:rbind_CvSVM_load,[CvSVM,:string,:string],:void
        
        #methods for CvDTreeParams
        attach_function :delete_cvd_tree_params,:rbind_delete_CvDTreeParams,[CvDTreeParams],:void
        attach_function :delete_cvd_tree_params_struct,:rbind_delete_CvDTreeParams,[CvDTreeParamsStruct],:void
        attach_function :cvd_tree_params_get_max_categories,:rbind_CvDTreeParams_get_max_categories,[CvDTreeParams],:int
        attach_function :cvd_tree_params_set_max_categories,:rbind_CvDTreeParams_set_max_categories,[CvDTreeParams,:int],:void
        attach_function :cvd_tree_params_get_max_depth,:rbind_CvDTreeParams_get_max_depth,[CvDTreeParams],:int
        attach_function :cvd_tree_params_set_max_depth,:rbind_CvDTreeParams_set_max_depth,[CvDTreeParams,:int],:void
        attach_function :cvd_tree_params_get_min_sample_count,:rbind_CvDTreeParams_get_min_sample_count,[CvDTreeParams],:int
        attach_function :cvd_tree_params_set_min_sample_count,:rbind_CvDTreeParams_set_min_sample_count,[CvDTreeParams,:int],:void
        attach_function :cvd_tree_params_get_cv_folds,:rbind_CvDTreeParams_get_cv_folds,[CvDTreeParams],:int
        attach_function :cvd_tree_params_set_cv_folds,:rbind_CvDTreeParams_set_cv_folds,[CvDTreeParams,:int],:void
        attach_function :cvd_tree_params_get_use_surrogates,:rbind_CvDTreeParams_get_use_surrogates,[CvDTreeParams],:bool
        attach_function :cvd_tree_params_set_use_surrogates,:rbind_CvDTreeParams_set_use_surrogates,[CvDTreeParams,:bool],:void
        attach_function :cvd_tree_params_get_use__1se_rule,:rbind_CvDTreeParams_get_use_1se_rule,[CvDTreeParams],:bool
        attach_function :cvd_tree_params_set_use__1se_rule,:rbind_CvDTreeParams_set_use_1se_rule,[CvDTreeParams,:bool],:void
        attach_function :cvd_tree_params_get_truncate_pruned_tree,:rbind_CvDTreeParams_get_truncate_pruned_tree,[CvDTreeParams],:bool
        attach_function :cvd_tree_params_set_truncate_pruned_tree,:rbind_CvDTreeParams_set_truncate_pruned_tree,[CvDTreeParams,:bool],:void
        attach_function :cvd_tree_params_get_regression_accuracy,:rbind_CvDTreeParams_get_regression_accuracy,[CvDTreeParams],:float
        attach_function :cvd_tree_params_set_regression_accuracy,:rbind_CvDTreeParams_set_regression_accuracy,[CvDTreeParams,:float],:void
        
        #methods for CvDTree
        attach_function :delete_cvd_tree,:rbind_delete_CvDTree,[CvDTree],:void
        attach_function :delete_cvd_tree_struct,:rbind_delete_CvDTree,[CvDTreeStruct],:void
        attach_function :cvd_tree_cvd_tree,:rbind_CvDTree_CvDTree,[],CvDTree
        attach_function :cvd_tree_train,:rbind_CvDTree_train,[CvDTree,Cv::Mat,:int,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvDTreeParams],:bool
        attach_function :cvd_tree_predict,:rbind_CvDTree_predict,[CvDTree,Cv::Mat,Cv::Mat,:bool],CvDTreeNode
        attach_function :cvd_tree_get_var_importance,:rbind_CvDTree_getVarImportance,[CvDTree],Cv::Mat
        attach_function :cvd_tree_clear,:rbind_CvDTree_clear,[CvDTree],:void
        attach_function :cvd_tree_save,:rbind_CvDTree_save,[CvDTree,:string,:string],:void
        attach_function :cvd_tree_load,:rbind_CvDTree_load,[CvDTree,:string,:string],:void
        
        #methods for CvRTParams
        attach_function :delete_cvrt_params,:rbind_delete_CvRTParams,[CvRTParams],:void
        attach_function :delete_cvrt_params_struct,:rbind_delete_CvRTParams,[CvRTParamsStruct],:void
        attach_function :cvrt_params_get_calc_var_importance,:rbind_CvRTParams_get_calc_var_importance,[CvRTParams],:bool
        attach_function :cvrt_params_set_calc_var_importance,:rbind_CvRTParams_set_calc_var_importance,[CvRTParams,:bool],:void
        attach_function :cvrt_params_get_nactive_vars,:rbind_CvRTParams_get_nactive_vars,[CvRTParams],:int
        attach_function :cvrt_params_set_nactive_vars,:rbind_CvRTParams_set_nactive_vars,[CvRTParams,:int],:void
        attach_function :cvrt_params_get_term_crit,:rbind_CvRTParams_get_term_crit,[CvRTParams],CvTermCriteria
        attach_function :cvrt_params_set_term_crit,:rbind_CvRTParams_set_term_crit,[CvRTParams,CvTermCriteria],:void
        
        #methods for CvRTrees
        attach_function :delete_cvr_trees,:rbind_delete_CvRTrees,[CvRTrees],:void
        attach_function :delete_cvr_trees_struct,:rbind_delete_CvRTrees,[CvRTreesStruct],:void
        attach_function :cvr_trees_cvr_trees,:rbind_CvRTrees_CvRTrees,[],CvRTrees
        attach_function :cvr_trees_train,:rbind_CvRTrees_train,[CvRTrees,Cv::Mat,:int,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvRTParams],:bool
        attach_function :cvr_trees_predict,:rbind_CvRTrees_predict,[CvRTrees,Cv::Mat,Cv::Mat],:float
        attach_function :cvr_trees_predict_prob,:rbind_CvRTrees_predict_prob,[CvRTrees,Cv::Mat,Cv::Mat],:float
        attach_function :cvr_trees_get_var_importance,:rbind_CvRTrees_getVarImportance,[CvRTrees],Cv::Mat
        attach_function :cvr_trees_clear,:rbind_CvRTrees_clear,[CvRTrees],:void
        attach_function :cvr_trees_save,:rbind_CvRTrees_save,[CvRTrees,:string,:string],:void
        attach_function :cvr_trees_load,:rbind_CvRTrees_load,[CvRTrees,:string,:string],:void
        
        #methods for CvERTrees
        attach_function :delete_cver_trees,:rbind_delete_CvERTrees,[CvERTrees],:void
        attach_function :delete_cver_trees_struct,:rbind_delete_CvERTrees,[CvERTreesStruct],:void
        attach_function :cver_trees_cver_trees,:rbind_CvERTrees_CvERTrees,[],CvERTrees
        attach_function :cver_trees_train,:rbind_CvERTrees_train,[CvERTrees,Cv::Mat,:int,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvRTParams],:bool
        attach_function :cver_trees_cvr_trees,:rbind_CvERTrees_CvRTrees,[],CvERTrees
        attach_function :cver_trees_predict,:rbind_CvERTrees_predict,[CvERTrees,Cv::Mat,Cv::Mat],:float
        attach_function :cver_trees_predict_prob,:rbind_CvERTrees_predict_prob,[CvERTrees,Cv::Mat,Cv::Mat],:float
        attach_function :cver_trees_get_var_importance,:rbind_CvERTrees_getVarImportance,[CvERTrees],Cv::Mat
        attach_function :cver_trees_clear,:rbind_CvERTrees_clear,[CvERTrees],:void
        attach_function :cver_trees_save,:rbind_CvERTrees_save,[CvERTrees,:string,:string],:void
        attach_function :cver_trees_load,:rbind_CvERTrees_load,[CvERTrees,:string,:string],:void
        
        #methods for CvBoostParams
        attach_function :delete_cv_boost_params,:rbind_delete_CvBoostParams,[CvBoostParams],:void
        attach_function :delete_cv_boost_params_struct,:rbind_delete_CvBoostParams,[CvBoostParamsStruct],:void
        attach_function :cv_boost_params_get_boost_type,:rbind_CvBoostParams_get_boost_type,[CvBoostParams],:int
        attach_function :cv_boost_params_set_boost_type,:rbind_CvBoostParams_set_boost_type,[CvBoostParams,:int],:void
        attach_function :cv_boost_params_get_weak_count,:rbind_CvBoostParams_get_weak_count,[CvBoostParams],:int
        attach_function :cv_boost_params_set_weak_count,:rbind_CvBoostParams_set_weak_count,[CvBoostParams,:int],:void
        attach_function :cv_boost_params_get_split_criteria,:rbind_CvBoostParams_get_split_criteria,[CvBoostParams],:int
        attach_function :cv_boost_params_set_split_criteria,:rbind_CvBoostParams_set_split_criteria,[CvBoostParams,:int],:void
        attach_function :cv_boost_params_get_weight_trim_rate,:rbind_CvBoostParams_get_weight_trim_rate,[CvBoostParams],:double
        attach_function :cv_boost_params_set_weight_trim_rate,:rbind_CvBoostParams_set_weight_trim_rate,[CvBoostParams,:double],:void
        
        #methods for CvBoost
        attach_function :delete_cv_boost,:rbind_delete_CvBoost,[CvBoost],:void
        attach_function :delete_cv_boost_struct,:rbind_delete_CvBoost,[CvBoostStruct],:void
        attach_function :cv_boost_cv_boost,:rbind_CvBoost_CvBoost,[],CvBoost
        attach_function :cv_boost_cv_boost2,:rbind_CvBoost_CvBoost2,[Cv::Mat,:int,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvBoostParams],CvBoost
        attach_function :cv_boost_train,:rbind_CvBoost_train,[CvBoost,Cv::Mat,:int,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvBoostParams,:bool],:bool
        attach_function :cv_boost_predict,:rbind_CvBoost_predict,[CvBoost,Cv::Mat,Cv::Mat,Cv::Range,:bool,:bool],:float
        attach_function :cv_boost_prune,:rbind_CvBoost_prune,[CvBoost,CvSlice],:void
        attach_function :cv_boost_clear,:rbind_CvBoost_clear,[CvBoost],:void
        attach_function :cv_boost_save,:rbind_CvBoost_save,[CvBoost,:string,:string],:void
        attach_function :cv_boost_load,:rbind_CvBoost_load,[CvBoost,:string,:string],:void
        
        #methods for CvGBTreesParams
        attach_function :delete_cvgb_trees_params,:rbind_delete_CvGBTreesParams,[CvGBTreesParams],:void
        attach_function :delete_cvgb_trees_params_struct,:rbind_delete_CvGBTreesParams,[CvGBTreesParamsStruct],:void
        attach_function :cvgb_trees_params_get_weak_count,:rbind_CvGBTreesParams_get_weak_count,[CvGBTreesParams],:int
        attach_function :cvgb_trees_params_set_weak_count,:rbind_CvGBTreesParams_set_weak_count,[CvGBTreesParams,:int],:void
        attach_function :cvgb_trees_params_get_loss_function_type,:rbind_CvGBTreesParams_get_loss_function_type,[CvGBTreesParams],:int
        attach_function :cvgb_trees_params_set_loss_function_type,:rbind_CvGBTreesParams_set_loss_function_type,[CvGBTreesParams,:int],:void
        attach_function :cvgb_trees_params_get_subsample_portion,:rbind_CvGBTreesParams_get_subsample_portion,[CvGBTreesParams],:float
        attach_function :cvgb_trees_params_set_subsample_portion,:rbind_CvGBTreesParams_set_subsample_portion,[CvGBTreesParams,:float],:void
        attach_function :cvgb_trees_params_get_shrinkage,:rbind_CvGBTreesParams_get_shrinkage,[CvGBTreesParams],:float
        attach_function :cvgb_trees_params_set_shrinkage,:rbind_CvGBTreesParams_set_shrinkage,[CvGBTreesParams,:float],:void
        
        #methods for CvGBTrees
        attach_function :delete_cvgb_trees,:rbind_delete_CvGBTrees,[CvGBTrees],:void
        attach_function :delete_cvgb_trees_struct,:rbind_delete_CvGBTrees,[CvGBTreesStruct],:void
        attach_function :cvgb_trees_cvgb_trees,:rbind_CvGBTrees_CvGBTrees,[],CvGBTrees
        attach_function :cvgb_trees_cvgb_trees2,:rbind_CvGBTrees_CvGBTrees2,[Cv::Mat,:int,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvGBTreesParams],CvGBTrees
        attach_function :cvgb_trees_clear,:rbind_CvGBTrees_clear,[CvGBTrees],:void
        attach_function :cvgb_trees_train,:rbind_CvGBTrees_train,[CvGBTrees,Cv::Mat,:int,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvGBTreesParams,:bool],:bool
        attach_function :cvgb_trees_predict,:rbind_CvGBTrees_predict,[CvGBTrees,Cv::Mat,Cv::Mat,Cv::Range,:int],:float
        attach_function :cvgb_trees_save,:rbind_CvGBTrees_save,[CvGBTrees,:string,:string],:void
        attach_function :cvgb_trees_load,:rbind_CvGBTrees_load,[CvGBTrees,:string,:string],:void
        
        #methods for CvANN_MLP_TrainParams
        attach_function :delete_cvann_mlp_train_params,:rbind_delete_CvANN_MLP_TrainParams,[CvANNMLPTrainParams],:void
        attach_function :delete_cvann_mlp_train_params_struct,:rbind_delete_CvANN_MLP_TrainParams,[CvANNMLPTrainParamsStruct],:void
        attach_function :cvann_mlp_train_params_get_term_crit,:rbind_CvANN_MLP_TrainParams_get_term_crit,[CvANNMLPTrainParams],CvTermCriteria
        attach_function :cvann_mlp_train_params_set_term_crit,:rbind_CvANN_MLP_TrainParams_set_term_crit,[CvANNMLPTrainParams,CvTermCriteria],:void
        attach_function :cvann_mlp_train_params_get_train_method,:rbind_CvANN_MLP_TrainParams_get_train_method,[CvANNMLPTrainParams],:int
        attach_function :cvann_mlp_train_params_set_train_method,:rbind_CvANN_MLP_TrainParams_set_train_method,[CvANNMLPTrainParams,:int],:void
        attach_function :cvann_mlp_train_params_get_bp_dw_scale,:rbind_CvANN_MLP_TrainParams_get_bp_dw_scale,[CvANNMLPTrainParams],:double
        attach_function :cvann_mlp_train_params_set_bp_dw_scale,:rbind_CvANN_MLP_TrainParams_set_bp_dw_scale,[CvANNMLPTrainParams,:double],:void
        attach_function :cvann_mlp_train_params_get_bp_moment_scale,:rbind_CvANN_MLP_TrainParams_get_bp_moment_scale,[CvANNMLPTrainParams],:double
        attach_function :cvann_mlp_train_params_set_bp_moment_scale,:rbind_CvANN_MLP_TrainParams_set_bp_moment_scale,[CvANNMLPTrainParams,:double],:void
        attach_function :cvann_mlp_train_params_get_rp_dw0,:rbind_CvANN_MLP_TrainParams_get_rp_dw0,[CvANNMLPTrainParams],:double
        attach_function :cvann_mlp_train_params_set_rp_dw0,:rbind_CvANN_MLP_TrainParams_set_rp_dw0,[CvANNMLPTrainParams,:double],:void
        attach_function :cvann_mlp_train_params_get_rp_dw_plus,:rbind_CvANN_MLP_TrainParams_get_rp_dw_plus,[CvANNMLPTrainParams],:double
        attach_function :cvann_mlp_train_params_set_rp_dw_plus,:rbind_CvANN_MLP_TrainParams_set_rp_dw_plus,[CvANNMLPTrainParams,:double],:void
        attach_function :cvann_mlp_train_params_get_rp_dw_minus,:rbind_CvANN_MLP_TrainParams_get_rp_dw_minus,[CvANNMLPTrainParams],:double
        attach_function :cvann_mlp_train_params_set_rp_dw_minus,:rbind_CvANN_MLP_TrainParams_set_rp_dw_minus,[CvANNMLPTrainParams,:double],:void
        attach_function :cvann_mlp_train_params_get_rp_dw_min,:rbind_CvANN_MLP_TrainParams_get_rp_dw_min,[CvANNMLPTrainParams],:double
        attach_function :cvann_mlp_train_params_set_rp_dw_min,:rbind_CvANN_MLP_TrainParams_set_rp_dw_min,[CvANNMLPTrainParams,:double],:void
        attach_function :cvann_mlp_train_params_get_rp_dw_max,:rbind_CvANN_MLP_TrainParams_get_rp_dw_max,[CvANNMLPTrainParams],:double
        attach_function :cvann_mlp_train_params_set_rp_dw_max,:rbind_CvANN_MLP_TrainParams_set_rp_dw_max,[CvANNMLPTrainParams,:double],:void
        
        #methods for CvANN_MLP
        attach_function :delete_cvann_mlp,:rbind_delete_CvANN_MLP,[CvANNMLP],:void
        attach_function :delete_cvann_mlp_struct,:rbind_delete_CvANN_MLP,[CvANNMLPStruct],:void
        attach_function :cvann_mlp_cvann_mlp,:rbind_CvANN_MLP_CvANN_MLP,[],CvANNMLP
        attach_function :cvann_mlp_cvann_mlp2,:rbind_CvANN_MLP_CvANN_MLP2,[Cv::Mat,:int,:double,:double],CvANNMLP
        attach_function :cvann_mlp_create,:rbind_CvANN_MLP_create,[CvANNMLP,Cv::Mat,:int,:double,:double],:void
        attach_function :cvann_mlp_train,:rbind_CvANN_MLP_train,[CvANNMLP,Cv::Mat,Cv::Mat,Cv::Mat,Cv::Mat,CvANNMLPTrainParams,:int],:int
        attach_function :cvann_mlp_predict,:rbind_CvANN_MLP_predict,[CvANNMLP,Cv::Mat,Cv::Mat],:float
        attach_function :cvann_mlp_clear,:rbind_CvANN_MLP_clear,[CvANNMLP],:void
        attach_function :cvann_mlp_save,:rbind_CvANN_MLP_save,[CvANNMLP,:string,:string],:void
        attach_function :cvann_mlp_load,:rbind_CvANN_MLP_load,[CvANNMLP,:string,:string],:void
        
        #methods for vector_Rect
        attach_function :delete_vector_rect,:rbind_delete_vector_Rect,[VectorRect],:void
        attach_function :delete_vector_rect_struct,:rbind_delete_vector_Rect,[VectorRectStruct],:void
        attach_function :vector_rect_vector_rect,:rbind_vector_Rect_vector_Rect,[],VectorRect
        attach_function :vector_rect_vector_rect2,:rbind_vector_Rect_vector_Rect2,[VectorRect],VectorRect
        attach_function :vector_rect_resize,:rbind_vector_Rect_resize,[VectorRect,:size_t,Cv::Rect],:void
        attach_function :vector_rect_size,:rbind_vector_Rect_size,[VectorRect],:size_t
        attach_function :vector_rect_capacity,:rbind_vector_Rect_capacity,[VectorRect],:size_t
        attach_function :vector_rect_empty,:rbind_vector_Rect_empty,[VectorRect],:bool
        attach_function :vector_rect_reserve,:rbind_vector_Rect_reserve,[VectorRect,:size_t],:void
        attach_function :vector_rect_operator_array,:rbind_vector_Rect_operator_array,[VectorRect,:size_t],Cv::Rect
        attach_function :vector_rect_at,:rbind_vector_Rect_at,[VectorRect,:size_t],Cv::Rect
        attach_function :vector_rect_front,:rbind_vector_Rect_front,[VectorRect],Cv::Rect
        attach_function :vector_rect_back,:rbind_vector_Rect_back,[VectorRect],Cv::Rect
        attach_function :vector_rect_data,:rbind_vector_Rect_data,[VectorRect],:pointer
        attach_function :vector_rect_push_back,:rbind_vector_Rect_push_back,[VectorRect,Cv::Rect],:void
        attach_function :vector_rect_pop_back,:rbind_vector_Rect_pop_back,[VectorRect],:void
        attach_function :vector_rect_swap,:rbind_vector_Rect_swap,[VectorRect,VectorRect],:void
        
        #methods for vector_double
        attach_function :delete_vector_double,:rbind_delete_vector_double,[VectorDouble],:void
        attach_function :delete_vector_double_struct,:rbind_delete_vector_double,[VectorDoubleStruct],:void
        attach_function :vector_double_vector_double,:rbind_vector_double_vector_double,[],VectorDouble
        attach_function :vector_double_vector_double2,:rbind_vector_double_vector_double2,[VectorDouble],VectorDouble
        attach_function :vector_double_resize,:rbind_vector_double_resize,[VectorDouble,:size_t,:double],:void
        attach_function :vector_double_size,:rbind_vector_double_size,[VectorDouble],:size_t
        attach_function :vector_double_capacity,:rbind_vector_double_capacity,[VectorDouble],:size_t
        attach_function :vector_double_empty,:rbind_vector_double_empty,[VectorDouble],:bool
        attach_function :vector_double_reserve,:rbind_vector_double_reserve,[VectorDouble,:size_t],:void
        attach_function :vector_double_operator_array,:rbind_vector_double_operator_array,[VectorDouble,:size_t],:double
        attach_function :vector_double_at,:rbind_vector_double_at,[VectorDouble,:size_t],:double
        attach_function :vector_double_front,:rbind_vector_double_front,[VectorDouble],:double
        attach_function :vector_double_back,:rbind_vector_double_back,[VectorDouble],:double
        attach_function :vector_double_data,:rbind_vector_double_data,[VectorDouble],:pointer
        attach_function :vector_double_push_back,:rbind_vector_double_push_back,[VectorDouble,:double],:void
        attach_function :vector_double_pop_back,:rbind_vector_double_pop_back,[VectorDouble],:void
        attach_function :vector_double_swap,:rbind_vector_double_swap,[VectorDouble,VectorDouble],:void
        
        #methods for Ptr_ChannelFeatureBuilder
        attach_function :delete_ptr_channel_feature_builder,:rbind_delete_Ptr_ChannelFeatureBuilder,[PtrChannelFeatureBuilder],:void
        attach_function :delete_ptr_channel_feature_builder_struct,:rbind_delete_Ptr_ChannelFeatureBuilder,[PtrChannelFeatureBuilderStruct],:void
        attach_function :ptr_channel_feature_builder_ptr_channel_feature_builder,:rbind_Ptr_ChannelFeatureBuilder_Ptr_ChannelFeatureBuilder,[PtrChannelFeatureBuilder],PtrChannelFeatureBuilder
        attach_function :ptr_channel_feature_builder_addref,:rbind_Ptr_ChannelFeatureBuilder_addref,[PtrChannelFeatureBuilder],:void
        attach_function :ptr_channel_feature_builder_release,:rbind_Ptr_ChannelFeatureBuilder_release,[PtrChannelFeatureBuilder],:void
        attach_function :ptr_channel_feature_builder_delete_obj,:rbind_Ptr_ChannelFeatureBuilder_delete_obj,[PtrChannelFeatureBuilder],:void
        attach_function :ptr_channel_feature_builder_empty,:rbind_Ptr_ChannelFeatureBuilder_empty,[PtrChannelFeatureBuilder],:bool
        attach_function :ptr_channel_feature_builder_get_obj,:rbind_Ptr_ChannelFeatureBuilder_get_obj,[PtrChannelFeatureBuilder],Cv::Softcascade::ChannelFeatureBuilder
        
        #methods for CvEMParams
        attach_function :delete_cvem_params,:rbind_delete_CvEMParams,[CvEMParams],:void
        attach_function :delete_cvem_params_struct,:rbind_delete_CvEMParams,[CvEMParamsStruct],:void
        attach_function :cvem_params_get_nclusters,:rbind_CvEMParams_get_nclusters,[CvEMParams],:int
        attach_function :cvem_params_set_nclusters,:rbind_CvEMParams_set_nclusters,[CvEMParams,:int],:void
        attach_function :cvem_params_get_cov_mat_type,:rbind_CvEMParams_get_cov_mat_type,[CvEMParams],:int
        attach_function :cvem_params_set_cov_mat_type,:rbind_CvEMParams_set_cov_mat_type,[CvEMParams,:int],:void
        attach_function :cvem_params_get_start_step,:rbind_CvEMParams_get_start_step,[CvEMParams],:int
        attach_function :cvem_params_set_start_step,:rbind_CvEMParams_set_start_step,[CvEMParams,:int],:void
        attach_function :cvem_params_get_term_crit,:rbind_CvEMParams_get_term_crit,[CvEMParams],CvTermCriteria
        attach_function :cvem_params_set_term_crit,:rbind_CvEMParams_set_term_crit,[CvEMParams,CvTermCriteria],:void
        
        #methods for CvEM
        attach_function :delete_cvem,:rbind_delete_CvEM,[CvEM],:void
        attach_function :delete_cvem_struct,:rbind_delete_CvEM,[CvEMStruct],:void
        attach_function :cvem_cvem,:rbind_CvEM_CvEM,[],CvEM
        attach_function :cvem_cvem2,:rbind_CvEM_CvEM2,[Cv::Mat,Cv::Mat,CvEMParams],CvEM
        attach_function :cvem_train,:rbind_CvEM_train,[CvEM,Cv::Mat,Cv::Mat,CvEMParams,Cv::Mat],:bool
        attach_function :cvem_predict,:rbind_CvEM_predict,[CvEM,Cv::Mat,Cv::Mat],:float
        attach_function :cvem_calc_likelihood,:rbind_CvEM_calcLikelihood,[CvEM,Cv::Mat],:double
        attach_function :cvem_getn_clusters,:rbind_CvEM_getNClusters,[CvEM],:int
        attach_function :cvem_get_means,:rbind_CvEM_getMeans,[CvEM],Cv::Mat
        attach_function :cvem_get_covs,:rbind_CvEM_getCovs,[CvEM,VectorMat],:void
        attach_function :cvem_get_weights,:rbind_CvEM_getWeights,[CvEM],Cv::Mat
        attach_function :cvem_get_probs,:rbind_CvEM_getProbs,[CvEM],Cv::Mat
        attach_function :cvem_get_likelihood,:rbind_CvEM_getLikelihood,[CvEM],:double
        attach_function :cvem_clear,:rbind_CvEM_clear,[CvEM],:void
        attach_function :cvem_save,:rbind_CvEM_save,[CvEM,:string,:string],:void
        attach_function :cvem_load,:rbind_CvEM_load,[CvEM,:string,:string],:void
        
        #methods for vector_char
        attach_function :delete_vector_char,:rbind_delete_vector_char,[VectorChar],:void
        attach_function :delete_vector_char_struct,:rbind_delete_vector_char,[VectorCharStruct],:void
        attach_function :vector_char_vector_char,:rbind_vector_char_vector_char,[],VectorChar
        attach_function :vector_char_vector_char2,:rbind_vector_char_vector_char2,[VectorChar],VectorChar
        attach_function :vector_char_resize,:rbind_vector_char_resize,[VectorChar,:size_t,:char],:void
        attach_function :vector_char_size,:rbind_vector_char_size,[VectorChar],:size_t
        attach_function :vector_char_capacity,:rbind_vector_char_capacity,[VectorChar],:size_t
        attach_function :vector_char_empty,:rbind_vector_char_empty,[VectorChar],:bool
        attach_function :vector_char_reserve,:rbind_vector_char_reserve,[VectorChar,:size_t],:void
        attach_function :vector_char_operator_array,:rbind_vector_char_operator_array,[VectorChar,:size_t],:char
        attach_function :vector_char_at,:rbind_vector_char_at,[VectorChar,:size_t],:char
        attach_function :vector_char_front,:rbind_vector_char_front,[VectorChar],:char
        attach_function :vector_char_back,:rbind_vector_char_back,[VectorChar],:char
        attach_function :vector_char_data,:rbind_vector_char_data,[VectorChar],:pointer
        attach_function :vector_char_push_back,:rbind_vector_char_push_back,[VectorChar,:char],:void
        attach_function :vector_char_pop_back,:rbind_vector_char_pop_back,[VectorChar],:void
        attach_function :vector_char_swap,:rbind_vector_char_swap,[VectorChar,VectorChar],:void
        
        #methods for vector_Point3f
        attach_function :delete_vector_point_3f,:rbind_delete_vector_Point3f,[VectorPoint3f],:void
        attach_function :delete_vector_point_3f_struct,:rbind_delete_vector_Point3f,[VectorPoint3fStruct],:void
        attach_function :vector_point_3f_vector_point_3f,:rbind_vector_Point3f_vector_Point3f,[],VectorPoint3f
        attach_function :vector_point_3f_vector_point_3f2,:rbind_vector_Point3f_vector_Point3f2,[VectorPoint3f],VectorPoint3f
        attach_function :vector_point_3f_resize,:rbind_vector_Point3f_resize,[VectorPoint3f,:size_t,Cv::Point3f],:void
        attach_function :vector_point_3f_size,:rbind_vector_Point3f_size,[VectorPoint3f],:size_t
        attach_function :vector_point_3f_capacity,:rbind_vector_Point3f_capacity,[VectorPoint3f],:size_t
        attach_function :vector_point_3f_empty,:rbind_vector_Point3f_empty,[VectorPoint3f],:bool
        attach_function :vector_point_3f_reserve,:rbind_vector_Point3f_reserve,[VectorPoint3f,:size_t],:void
        attach_function :vector_point_3f_operator_array,:rbind_vector_Point3f_operator_array,[VectorPoint3f,:size_t],Cv::Point3f
        attach_function :vector_point_3f_at,:rbind_vector_Point3f_at,[VectorPoint3f,:size_t],Cv::Point3f
        attach_function :vector_point_3f_front,:rbind_vector_Point3f_front,[VectorPoint3f],Cv::Point3f
        attach_function :vector_point_3f_back,:rbind_vector_Point3f_back,[VectorPoint3f],Cv::Point3f
        attach_function :vector_point_3f_data,:rbind_vector_Point3f_data,[VectorPoint3f],:pointer
        attach_function :vector_point_3f_push_back,:rbind_vector_Point3f_push_back,[VectorPoint3f,Cv::Point3f],:void
        attach_function :vector_point_3f_pop_back,:rbind_vector_Point3f_pop_back,[VectorPoint3f],:void
        attach_function :vector_point_3f_swap,:rbind_vector_Point3f_swap,[VectorPoint3f,VectorPoint3f],:void
        
        #methods for vector_Point3d
        attach_function :delete_vector_point_3d,:rbind_delete_vector_Point3d,[VectorPoint3d],:void
        attach_function :delete_vector_point_3d_struct,:rbind_delete_vector_Point3d,[VectorPoint3dStruct],:void
        attach_function :vector_point_3d_vector_point_3d,:rbind_vector_Point3d_vector_Point3d,[],VectorPoint3d
        attach_function :vector_point_3d_vector_point_3d2,:rbind_vector_Point3d_vector_Point3d2,[VectorPoint3d],VectorPoint3d
        attach_function :vector_point_3d_resize,:rbind_vector_Point3d_resize,[VectorPoint3d,:size_t,Cv::Point3d],:void
        attach_function :vector_point_3d_size,:rbind_vector_Point3d_size,[VectorPoint3d],:size_t
        attach_function :vector_point_3d_capacity,:rbind_vector_Point3d_capacity,[VectorPoint3d],:size_t
        attach_function :vector_point_3d_empty,:rbind_vector_Point3d_empty,[VectorPoint3d],:bool
        attach_function :vector_point_3d_reserve,:rbind_vector_Point3d_reserve,[VectorPoint3d,:size_t],:void
        attach_function :vector_point_3d_operator_array,:rbind_vector_Point3d_operator_array,[VectorPoint3d,:size_t],Cv::Point3d
        attach_function :vector_point_3d_at,:rbind_vector_Point3d_at,[VectorPoint3d,:size_t],Cv::Point3d
        attach_function :vector_point_3d_front,:rbind_vector_Point3d_front,[VectorPoint3d],Cv::Point3d
        attach_function :vector_point_3d_back,:rbind_vector_Point3d_back,[VectorPoint3d],Cv::Point3d
        attach_function :vector_point_3d_data,:rbind_vector_Point3d_data,[VectorPoint3d],:pointer
        attach_function :vector_point_3d_push_back,:rbind_vector_Point3d_push_back,[VectorPoint3d,Cv::Point3d],:void
        attach_function :vector_point_3d_pop_back,:rbind_vector_Point3d_pop_back,[VectorPoint3d],:void
        attach_function :vector_point_3d_swap,:rbind_vector_Point3d_swap,[VectorPoint3d,VectorPoint3d],:void
        
    end
end
