# wrapper for root
module OpenCV2_49
    CV_CONTOUR_TREES_MATCH_I1 = 1
    CV_FACE_MOUTH = 0
    CV_FACE_LEFT_EYE = 1
    CV_FACE_RIGHT_EYE = 2


    # wrapper for cv
    module Cv
        CV_MAX_DIM = 32
        IPL_BORDER_CONSTANT = 0
        IPL_BORDER_REPLICATE = 1
        IPL_BORDER_REFLECT = 2
        IPL_BORDER_WRAP = 3
        IPL_BORDER_REFLECT_101 = 4
        IPL_BORDER_TRANSPARENT = 5
        CV_LMEDS = 4
        CV_RANSAC = 8
        CV_ITERATIVE = 0
        CV_EPNP = 1
        CV_P3P = 2
        CV_CALIB_USE_INTRINSIC_GUESS = 0x00001
        CV_CALIB_FIX_ASPECT_RATIO = 0x00002
        CV_CALIB_FIX_PRINCIPAL_POINT = 0x00004
        CV_CALIB_ZERO_TANGENT_DIST = 0x00008
        CV_CALIB_FIX_FOCAL_LENGTH = 0x00010
        CV_CALIB_FIX_K1 = 0x00020
        CV_CALIB_FIX_K2 = 0x00040
        CV_CALIB_FIX_K3 = 0x00080
        CV_CALIB_FIX_K4 = 0x00800
        CV_CALIB_FIX_K5 = 0x01000
        CV_CALIB_FIX_K6 = 0x02000
        CV_CALIB_RATIONAL_MODEL = 0x04000
        CV_CALIB_THIN_PRISM_MODEL = 0x08000
        CV_CALIB_FIX_S1_S2_S3_S4 = 0x10000
        CV_CALIB_FIX_INTRINSIC = 0x00100
        CV_CALIB_SAME_FOCAL_LENGTH = 0x00200
        CV_CALIB_ZERO_DISPARITY = 0x00400
        CV_FM_7POINT = 1
        CV_FM_8POINT = 2
        CV_FM_LMEDS = 4
        CV_FM_RANSAC = 8
        CV_AFM_4POINT = 16
        CV_AFM_LMEDS = 32
        CV_AFM_RANSAC = 64
        CV_WINDOW_NORMAL = 0x00000000
        CV_WINDOW_AUTOSIZE = 0x00000001
        CV_WINDOW_OPENGL = 0x00001000
        CV_WINDOW_FULLSCREEN = 1
        CV_WINDOW_FREERATIO = 0x00000100
        CV_WINDOW_KEEPRATIO = 0x00000000
        CV_WND_PROP_FULLSCREEN = 0
        CV_WND_PROP_AUTOSIZE = 1
        CV_WND_PROP_ASPECT_RATIO = 2
        CV_WND_PROP_OPENGL = 3
        CV_8U = 0
        CV_8S = 1
        CV_16U = 2
        CV_16S = 3
        CV_32S = 4
        CV_32F = 5
        CV_64F = 6
        CV_8UC1 = (1-1)*8 + CV_8U
        CV_8UC2 = (2-1)*8 + CV_8U
        CV_8UC3 = (3-1)*8 + CV_8U
        CV_8UC4 = (4-1)*8 + CV_8U
        CV_8SC1 = (1-1)*8 + CV_8S
        CV_8SC2 = (2-1)*8 + CV_8S
        CV_8SC3 = (3-1)*8 + CV_8S
        CV_8SC4 = (4-1)*8 + CV_8S
        CV_16UC1 = (1-1)*8 + CV_16U
        CV_16UC2 = (2-1)*8 + CV_16U
        CV_16UC3 = (3-1)*8 + CV_16U
        CV_16UC4 = (4-1)*8 + CV_16U
        CV_16SC1 = (1-1)*8 + CV_16S
        CV_16SC2 = (2-1)*8 + CV_16S
        CV_16SC3 = (3-1)*8 + CV_16S
        CV_16SC4 = (4-1)*8 + CV_16S
        CV_32SC1 = (1-1)*8 + CV_32S
        CV_32SC2 = (2-1)*8 + CV_32S
        CV_32SC3 = (3-1)*8 + CV_32S
        CV_32SC4 = (4-1)*8 + CV_32S
        CV_32FC1 = (1-1)*8 + CV_32F
        CV_32FC2 = (2-1)*8 + CV_32F
        CV_32FC3 = (3-1)*8 + CV_32F
        CV_32FC4 = (4-1)*8 + CV_32F
        CV_64FC1 = (1-1)*8 + CV_64F
        CV_64FC2 = (2-1)*8 + CV_64F
        CV_64FC3 = (3-1)*8 + CV_64F
        CV_64FC4 = (4-1)*8 + CV_64F
        CV_CN_MAX = 512
        CV_CN_SHIFT = 3
        CV_DEPTH_MAX = (1 << CV_CN_SHIFT)
        CV_MAT_CN_MASK = ((CV_CN_MAX - 1) << CV_CN_SHIFT)
        CV_MAT_TYPE_MASK = (CV_DEPTH_MAX*CV_CN_MAX - 1)
        CV_MAT_CONT_FLAG_SHIFT = 14
        CV_MAT_CONT_FLAG = (1 << CV_MAT_CONT_FLAG_SHIFT)
        CV_SUBMAT_FLAG_SHIFT = 15
        CV_SUBMAT_FLAG = (1 << CV_SUBMAT_FLAG_SHIFT)
        SORT_EVERY_ROW = 0
        SORT_EVERY_COLUMN = 1
        SORT_ASCENDING = 0
        SORT_DESCENDING = 16
        COVAR_SCRAMBLED = 0
        COVAR_NORMAL = 1
        COVAR_USE_AVG = 2
        COVAR_SCALE = 4
        COVAR_ROWS = 8
        COVAR_COLS = 16
        KMEANS_RANDOM_CENTERS = 0
        KMEANS_PP_CENTERS = 2
        KMEANS_USE_INITIAL_LABELS = 1
        FILLED = -1
        LINE_4 = 4
        LINE_8 = 8
        LINE_AA = 16
        FONT_HERSHEY_SIMPLEX = 0
        FONT_HERSHEY_PLAIN = 1
        FONT_HERSHEY_DUPLEX = 2
        FONT_HERSHEY_COMPLEX = 3
        FONT_HERSHEY_TRIPLEX = 4
        FONT_HERSHEY_COMPLEX_SMALL = 5
        FONT_HERSHEY_SCRIPT_SIMPLEX = 6
        FONT_HERSHEY_SCRIPT_COMPLEX = 7
        FONT_ITALIC = 16
        REDUCE_SUM = 0
        REDUCE_AVG = 1
        REDUCE_MAX = 2
        REDUCE_MIN = 3
        DECOMP_LU = 0
        DECOMP_SVD = 1
        DECOMP_EIG = 2
        DECOMP_CHOLESKY = 3
        DECOMP_QR = 4
        DECOMP_NORMAL = 16
        NORM_INF = 1
        NORM_L1 = 2
        NORM_L2 = 4
        NORM_L2SQR = 5
        NORM_HAMMING = 6
        NORM_HAMMING2 = 7
        NORM_TYPE_MASK = 7
        NORM_RELATIVE = 8
        NORM_MINMAX = 32
        CMP_EQ = 0
        CMP_GT = 1
        CMP_GE = 2
        CMP_LT = 3
        CMP_LE = 4
        CMP_NE = 5
        GEMM_1_T = 1
        GEMM_2_T = 2
        GEMM_3_T = 4
        DFT_INVERSE = 1
        DFT_SCALE = 2
        DFT_ROWS = 4
        DFT_COMPLEX_OUTPUT = 16
        DFT_REAL_OUTPUT = 32
        DCT_INVERSE = DFT_INVERSE
        DCT_ROWS = DFT_ROWS
        BORDER_CONSTANT = 0
        BORDER_REPLICATE = 1
        BORDER_REFLECT = 2
        BORDER_WRAP = 3
        BORDER_REFLECT_101 = 4
        BORDER_TRANSPARENT = 5
        BORDER_REFLECT101 = BORDER_REFLECT_101
        BORDER_DEFAULT = BORDER_REFLECT_101
        BORDER_ISOLATED = 16
        ROTATION = 1
        TRANSLATION = 2
        RIGID_BODY_MOTION = 4
        COLORMAP_AUTUMN = 0
        COLORMAP_BONE = 1
        COLORMAP_JET = 2
        COLORMAP_WINTER = 3
        COLORMAP_RAINBOW = 4
        COLORMAP_OCEAN = 5
        COLORMAP_SUMMER = 6
        COLORMAP_SPRING = 7
        COLORMAP_COOL = 8
        COLORMAP_HSV = 9
        COLORMAP_PINK = 10
        COLORMAP_HOT = 11
        LMEDS = 4
        RANSAC = 8
        ITERATIVE = 0
        EPNP = 1
        P3P = 2
        CALIB_CB_ADAPTIVE_THRESH = 1
        CALIB_CB_NORMALIZE_IMAGE = 2
        CALIB_CB_FILTER_QUADS = 4
        CALIB_CB_FAST_CHECK = 8
        CALIB_CB_SYMMETRIC_GRID = 1
        CALIB_CB_ASYMMETRIC_GRID = 2
        CALIB_CB_CLUSTERING = 4
        CALIB_USE_INTRINSIC_GUESS = 0x00001
        CALIB_FIX_ASPECT_RATIO = 0x00002
        CALIB_FIX_PRINCIPAL_POINT = 0x00004
        CALIB_ZERO_TANGENT_DIST = 0x00008
        CALIB_FIX_FOCAL_LENGTH = 0x00010
        CALIB_FIX_K1 = 0x00020
        CALIB_FIX_K2 = 0x00040
        CALIB_FIX_K3 = 0x00080
        CALIB_FIX_K4 = 0x00800
        CALIB_FIX_K5 = 0x01000
        CALIB_FIX_K6 = 0x02000
        CALIB_RATIONAL_MODEL = 0x04000
        CALIB_THIN_PRISM_MODEL = 0x08000
        CALIB_FIX_S1_S2_S3_S4 = 0x10000
        CALIB_FIX_INTRINSIC = 0x00100
        CALIB_SAME_FOCAL_LENGTH = 0x00200
        CALIB_ZERO_DISPARITY = 0x00400
        FM_7POINT = 1
        FM_8POINT = 2
        FM_LMEDS = 4
        FM_RANSAC = 8
        WINDOW_NORMAL = 0x00000000
        WINDOW_AUTOSIZE = 0x00000001
        WINDOW_OPENGL = 0x00001000
        WINDOW_FULLSCREEN = 1
        WINDOW_FREERATIO = 0x00000100
        WINDOW_KEEPRATIO = 0x00000000
        WND_PROP_FULLSCREEN = 0
        WND_PROP_AUTOSIZE = 1
        WND_PROP_ASPECT_RATIO = 2
        WND_PROP_OPENGL = 3
        EVENT_MOUSEMOVE = 0
        EVENT_LBUTTONDOWN = 1
        EVENT_RBUTTONDOWN = 2
        EVENT_MBUTTONDOWN = 3
        EVENT_LBUTTONUP = 4
        EVENT_RBUTTONUP = 5
        EVENT_MBUTTONUP = 6
        EVENT_LBUTTONDBLCLK = 7
        EVENT_RBUTTONDBLCLK = 8
        EVENT_MBUTTONDBLCLK = 9
        EVENT_FLAG_LBUTTON = 1
        EVENT_FLAG_RBUTTON = 2
        EVENT_FLAG_MBUTTON = 4
        EVENT_FLAG_CTRLKEY = 8
        EVENT_FLAG_SHIFTKEY = 16
        EVENT_FLAG_ALTKEY = 32
        QT_FONT_LIGHT = 25
        QT_FONT_NORMAL = 50
        QT_FONT_DEMIBOLD = 63
        QT_FONT_BOLD = 75
        QT_FONT_BLACK = 87
        QT_STYLE_NORMAL = 0
        QT_STYLE_ITALIC = 1
        QT_STYLE_OBLIQUE = 2
        QT_PUSH_BUTTON = 0
        QT_CHECKBOX = 1
        QT_RADIOBOX = 2
        IMREAD_UNCHANGED = -1
        IMREAD_GRAYSCALE = 0
        IMREAD_COLOR = 1
        IMREAD_ANYDEPTH = 2
        IMREAD_ANYCOLOR = 4
        IMWRITE_JPEG_QUALITY = 1
        IMWRITE_PNG_COMPRESSION = 16
        IMWRITE_PNG_STRATEGY = 17
        IMWRITE_PNG_BILEVEL = 18
        IMWRITE_PXM_BINARY = 32
        IMWRITE_WEBP_QUALITY = 64
        IMWRITE_PNG_STRATEGY_DEFAULT = 0
        IMWRITE_PNG_STRATEGY_FILTERED = 1
        IMWRITE_PNG_STRATEGY_HUFFMAN_ONLY = 2
        IMWRITE_PNG_STRATEGY_RLE = 3
        IMWRITE_PNG_STRATEGY_FIXED = 4
        CAP_ANY = 0
        CAP_VFW = 200
        CAP_V4L = 200
        CAP_V4L2 = CAP_V4L
        CAP_FIREWARE = 300
        CAP_FIREWIRE = CAP_FIREWARE
        CAP_IEEE1394 = CAP_FIREWARE
        CAP_DC1394 = CAP_FIREWARE
        CAP_CMU1394 = CAP_FIREWARE
        CAP_QT = 500
        CAP_UNICAP = 600
        CAP_DSHOW = 700
        CAP_PVAPI = 800
        CAP_OPENNI = 900
        CAP_OPENNI_ASUS = 910
        CAP_ANDROID = 1000
        CAP_XIAPI = 1100
        CAP_AVFOUNDATION = 1200
        CAP_GIGANETIX = 1300
        CAP_MSMF = 1400
        CAP_PROP_POS_MSEC = 0
        CAP_PROP_POS_FRAMES = 1
        CAP_PROP_POS_AVI_RATIO = 2
        CAP_PROP_FRAME_WIDTH = 3
        CAP_PROP_FRAME_HEIGHT = 4
        CAP_PROP_FPS = 5
        CAP_PROP_FOURCC = 6
        CAP_PROP_FRAME_COUNT = 7
        CAP_PROP_FORMAT = 8
        CAP_PROP_MODE = 9
        CAP_PROP_BRIGHTNESS = 10
        CAP_PROP_CONTRAST = 11
        CAP_PROP_SATURATION = 12
        CAP_PROP_HUE = 13
        CAP_PROP_GAIN = 14
        CAP_PROP_EXPOSURE = 15
        CAP_PROP_CONVERT_RGB = 16
        CAP_PROP_WHITE_BALANCE_BLUE_U = 17
        CAP_PROP_RECTIFICATION = 18
        CAP_PROP_MONOCROME = 19
        CAP_PROP_SHARPNESS = 20
        CAP_PROP_AUTO_EXPOSURE = 21
        CAP_PROP_GAMMA = 22
        CAP_PROP_TEMPERATURE = 23
        CAP_PROP_TRIGGER = 24
        CAP_PROP_TRIGGER_DELAY = 25
        CAP_PROP_WHITE_BALANCE_RED_V = 26
        CAP_PROP_ZOOM = 27
        CAP_PROP_FOCUS = 28
        CAP_PROP_GUID = 29
        CAP_PROP_ISO_SPEED = 30
        CAP_PROP_BACKLIGHT = 32
        CAP_PROP_PAN = 33
        CAP_PROP_TILT = 34
        CAP_PROP_ROLL = 35
        CAP_PROP_IRIS = 36
        CAP_PROP_SETTINGS = 37
        CAP_PROP_DC1394_OFF = -4
        CAP_PROP_DC1394_MODE_MANUAL = -3
        CAP_PROP_DC1394_MODE_AUTO = -2
        CAP_PROP_DC1394_MODE_ONE_PUSH_AUTO = -1
        CAP_PROP_DC1394_MAX = 31
        CAP_OPENNI_DEPTH_GENERATOR = 1 << 31
        CAP_OPENNI_IMAGE_GENERATOR = 1 << 30
        CAP_OPENNI_GENERATORS_MASK = CAP_OPENNI_DEPTH_GENERATOR + CAP_OPENNI_IMAGE_GENERATOR
        CAP_PROP_OPENNI_OUTPUT_MODE = 100
        CAP_PROP_OPENNI_FRAME_MAX_DEPTH = 101
        CAP_PROP_OPENNI_BASELINE = 102
        CAP_PROP_OPENNI_FOCAL_LENGTH = 103
        CAP_PROP_OPENNI_REGISTRATION = 104
        CAP_PROP_OPENNI_REGISTRATION_ON = CAP_PROP_OPENNI_REGISTRATION
        CAP_PROP_OPENNI_APPROX_FRAME_SYNC = 105
        CAP_PROP_OPENNI_MAX_BUFFER_SIZE = 106
        CAP_PROP_OPENNI_CIRCLE_BUFFER = 107
        CAP_PROP_OPENNI_MAX_TIME_DURATION = 108
        CAP_PROP_OPENNI_GENERATOR_PRESENT = 109
        CAP_OPENNI_IMAGE_GENERATOR_PRESENT = CAP_OPENNI_IMAGE_GENERATOR + CAP_PROP_OPENNI_GENERATOR_PRESENT
        CAP_OPENNI_IMAGE_GENERATOR_OUTPUT_MODE = CAP_OPENNI_IMAGE_GENERATOR + CAP_PROP_OPENNI_OUTPUT_MODE
        CAP_OPENNI_DEPTH_GENERATOR_BASELINE = CAP_OPENNI_DEPTH_GENERATOR + CAP_PROP_OPENNI_BASELINE
        CAP_OPENNI_DEPTH_GENERATOR_FOCAL_LENGTH = CAP_OPENNI_DEPTH_GENERATOR + CAP_PROP_OPENNI_FOCAL_LENGTH
        CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION = CAP_OPENNI_DEPTH_GENERATOR + CAP_PROP_OPENNI_REGISTRATION
        CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION_ON = CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION
        CAP_OPENNI_DEPTH_MAP = 0
        CAP_OPENNI_POINT_CLOUD_MAP = 1
        CAP_OPENNI_DISPARITY_MAP = 2
        CAP_OPENNI_DISPARITY_MAP_32F = 3
        CAP_OPENNI_VALID_DEPTH_MASK = 4
        CAP_OPENNI_BGR_IMAGE = 5
        CAP_OPENNI_GRAY_IMAGE = 6
        CAP_OPENNI_VGA_30HZ = 0
        CAP_OPENNI_SXGA_15HZ = 1
        CAP_OPENNI_SXGA_30HZ = 2
        CAP_OPENNI_QVGA_30HZ = 3
        CAP_OPENNI_QVGA_60HZ = 4
        CAP_PROP_GSTREAMER_QUEUE_LENGTH = 200
        CAP_PROP_PVAPI_MULTICASTIP = 300
        CAP_PROP_XI_DOWNSAMPLING = 400
        CAP_PROP_XI_DATA_FORMAT = 401
        CAP_PROP_XI_OFFSET_X = 402
        CAP_PROP_XI_OFFSET_Y = 403
        CAP_PROP_XI_TRG_SOURCE = 404
        CAP_PROP_XI_TRG_SOFTWARE = 405
        CAP_PROP_XI_GPI_SELECTOR = 406
        CAP_PROP_XI_GPI_MODE = 407
        CAP_PROP_XI_GPI_LEVEL = 408
        CAP_PROP_XI_GPO_SELECTOR = 409
        CAP_PROP_XI_GPO_MODE = 410
        CAP_PROP_XI_LED_SELECTOR = 411
        CAP_PROP_XI_LED_MODE = 412
        CAP_PROP_XI_MANUAL_WB = 413
        CAP_PROP_XI_AUTO_WB = 414
        CAP_PROP_XI_AEAG = 415
        CAP_PROP_XI_EXP_PRIORITY = 416
        CAP_PROP_XI_AE_MAX_LIMIT = 417
        CAP_PROP_XI_AG_MAX_LIMIT = 418
        CAP_PROP_XI_AEAG_LEVEL = 419
        CAP_PROP_XI_TIMEOUT = 420
        CAP_PROP_ANDROID_AUTOGRAB = 1024
        CAP_PROP_ANDROID_PREVIEW_SIZES_STRING = 1025
        CAP_PROP_ANDROID_PREVIEW_FORMAT = 1026
        CAP_PROP_ANDROID_FLASH_MODE = 8001
        CAP_PROP_ANDROID_FOCUS_MODE = 8002
        CAP_PROP_ANDROID_WHITE_BALANCE = 8003
        CAP_PROP_ANDROID_ANTIBANDING = 8004
        CAP_PROP_ANDROID_FOCAL_LENGTH = 8005
        CAP_PROP_ANDROID_FOCUS_DISTANCE_NEAR = 8006
        CAP_PROP_ANDROID_FOCUS_DISTANCE_OPTIMAL = 8007
        CAP_PROP_ANDROID_FOCUS_DISTANCE_FAR = 8008
        CAP_ANDROID_COLOR_FRAME_BGR = 0
        CAP_ANDROID_COLOR_FRAME = CAP_ANDROID_COLOR_FRAME_BGR
        CAP_ANDROID_GREY_FRAME = 1
        CAP_ANDROID_COLOR_FRAME_RGB = 2
        CAP_ANDROID_COLOR_FRAME_BGRA = 3
        CAP_ANDROID_COLOR_FRAME_RGBA = 4
        CAP_ANDROID_FLASH_MODE_AUTO = 0
        CAP_ANDROID_FLASH_MODE_OFF = 1
        CAP_ANDROID_FLASH_MODE_ON = 2
        CAP_ANDROID_FLASH_MODE_RED_EYE = 3
        CAP_ANDROID_FLASH_MODE_TORCH = 4
        CAP_ANDROID_FOCUS_MODE_AUTO = 0
        CAP_ANDROID_FOCUS_MODE_CONTINUOUS_VIDEO = 1
        CAP_ANDROID_FOCUS_MODE_EDOF = 2
        CAP_ANDROID_FOCUS_MODE_FIXED = 3
        CAP_ANDROID_FOCUS_MODE_INFINITY = 4
        CAP_ANDROID_FOCUS_MODE_MACRO = 5
        CAP_ANDROID_WHITE_BALANCE_AUTO = 0
        CAP_ANDROID_WHITE_BALANCE_CLOUDY_DAYLIGHT = 1
        CAP_ANDROID_WHITE_BALANCE_DAYLIGHT = 2
        CAP_ANDROID_WHITE_BALANCE_FLUORESCENT = 3
        CAP_ANDROID_WHITE_BALANCE_INCANDESCENT = 4
        CAP_ANDROID_WHITE_BALANCE_SHADE = 5
        CAP_ANDROID_WHITE_BALANCE_TWILIGHT = 6
        CAP_ANDROID_WHITE_BALANCE_WARM_FLUORESCENT = 7
        CAP_ANDROID_ANTIBANDING_50HZ = 0
        CAP_ANDROID_ANTIBANDING_60HZ = 1
        CAP_ANDROID_ANTIBANDING_AUTO = 2
        CAP_ANDROID_ANTIBANDING_OFF = 3
        CAP_PROP_IOS_DEVICE_FOCUS = 9001
        CAP_PROP_IOS_DEVICE_EXPOSURE = 9002
        CAP_PROP_IOS_DEVICE_FLASH = 9003
        CAP_PROP_IOS_DEVICE_WHITEBALANCE = 9004
        CAP_PROP_IOS_DEVICE_TORCH = 9005
        CAP_PROP_GIGA_FRAME_OFFSET_X = 10001
        CAP_PROP_GIGA_FRAME_OFFSET_Y = 10002
        CAP_PROP_GIGA_FRAME_WIDTH_MAX = 10003
        CAP_PROP_GIGA_FRAME_HEIGH_MAX = 10004
        CAP_PROP_GIGA_FRAME_SENS_WIDTH = 10005
        CAP_PROP_GIGA_FRAME_SENS_HEIGH = 10006
        KERNEL_GENERAL = 0
        KERNEL_SYMMETRICAL = 1
        KERNEL_ASYMMETRICAL = 2
        KERNEL_SMOOTH = 4
        KERNEL_INTEGER = 8
        MORPH_ERODE = 0
        MORPH_DILATE = 1
        MORPH_OPEN = 2
        MORPH_CLOSE = 3
        MORPH_GRADIENT = 4
        MORPH_TOPHAT = 5
        MORPH_BLACKHAT = 6
        MORPH_RECT = 0
        MORPH_CROSS = 1
        MORPH_ELLIPSE = 2
        INTER_NEAREST = 0
        INTER_LINEAR = 1
        INTER_CUBIC = 2
        INTER_AREA = 3
        INTER_LANCZOS4 = 4
        INTER_MAX = 7
        WARP_INVERSE_MAP = 16
        INTER_BITS = 5
        INTER_BITS2 = INTER_BITS * 2
        INTER_TAB_SIZE = 1 << INTER_BITS
        INTER_TAB_SIZE2 = INTER_TAB_SIZE * INTER_TAB_SIZE
        DIST_USER = -1
        DIST_L1 = 1
        DIST_L2 = 2
        DIST_C = 3
        DIST_L12 = 4
        DIST_FAIR = 5
        DIST_WELSCH = 6
        DIST_HUBER = 7
        DIST_MASK_3 = 3
        DIST_MASK_5 = 5
        DIST_MASK_PRECISE = 0
        THRESH_BINARY = 0
        THRESH_BINARY_INV = 1
        THRESH_TRUNC = 2
        THRESH_TOZERO = 3
        THRESH_TOZERO_INV = 4
        THRESH_MASK = 7
        THRESH_OTSU = 8
        ADAPTIVE_THRESH_MEAN_C = 0
        ADAPTIVE_THRESH_GAUSSIAN_C = 1
        PROJ_SPHERICAL_ORTHO = 0
        PROJ_SPHERICAL_EQRECT = 1
        GC_BGD = 0
        GC_FGD = 1
        GC_PR_BGD = 2
        GC_PR_FGD = 3
        GC_INIT_WITH_RECT = 0
        GC_INIT_WITH_MASK = 1
        GC_EVAL = 2
        DIST_LABEL_CCOMP = 0
        DIST_LABEL_PIXEL = 1
        FLOODFILL_FIXED_RANGE = 1 << 16
        FLOODFILL_MASK_ONLY = 1 << 17
        TM_SQDIFF = 0
        TM_SQDIFF_NORMED = 1
        TM_CCORR = 2
        TM_CCORR_NORMED = 3
        TM_CCOEFF = 4
        TM_CCOEFF_NORMED = 5
        CC_STAT_LEFT = 0
        CC_STAT_TOP = 1
        CC_STAT_WIDTH = 2
        CC_STAT_HEIGHT = 3
        CC_STAT_AREA = 4
        CC_STAT_MAX = 5
        RETR_EXTERNAL = 0
        RETR_LIST = 1
        RETR_CCOMP = 2
        RETR_TREE = 3
        RETR_FLOODFILL = 4
        CHAIN_APPROX_NONE = 1
        CHAIN_APPROX_SIMPLE = 2
        CHAIN_APPROX_TC89_L1 = 3
        CHAIN_APPROX_TC89_KCOS = 4
        HOUGH_STANDARD = 0
        HOUGH_PROBABILISTIC = 1
        HOUGH_MULTI_SCALE = 2
        HOUGH_GRADIENT = 3
        HISTCMP_CORREL = 0
        HISTCMP_CHISQR = 1
        HISTCMP_INTERSECT = 2
        HISTCMP_BHATTACHARYYA = 3
        HISTCMP_HELLINGER = HISTCMP_BHATTACHARYYA
        COLOR_BGR2BGRA = 0
        COLOR_RGB2RGBA = COLOR_BGR2BGRA
        COLOR_BGRA2BGR = 1
        COLOR_RGBA2RGB = COLOR_BGRA2BGR
        COLOR_BGR2RGBA = 2
        COLOR_RGB2BGRA = COLOR_BGR2RGBA
        COLOR_RGBA2BGR = 3
        COLOR_BGRA2RGB = COLOR_RGBA2BGR
        COLOR_BGR2RGB = 4
        COLOR_RGB2BGR = COLOR_BGR2RGB
        COLOR_BGRA2RGBA = 5
        COLOR_RGBA2BGRA = COLOR_BGRA2RGBA
        COLOR_BGR2GRAY = 6
        COLOR_RGB2GRAY = 7
        COLOR_GRAY2BGR = 8
        COLOR_GRAY2RGB = COLOR_GRAY2BGR
        COLOR_GRAY2BGRA = 9
        COLOR_GRAY2RGBA = COLOR_GRAY2BGRA
        COLOR_BGRA2GRAY = 10
        COLOR_RGBA2GRAY = 11
        COLOR_BGR2BGR565 = 12
        COLOR_RGB2BGR565 = 13
        COLOR_BGR5652BGR = 14
        COLOR_BGR5652RGB = 15
        COLOR_BGRA2BGR565 = 16
        COLOR_RGBA2BGR565 = 17
        COLOR_BGR5652BGRA = 18
        COLOR_BGR5652RGBA = 19
        COLOR_GRAY2BGR565 = 20
        COLOR_BGR5652GRAY = 21
        COLOR_BGR2BGR555 = 22
        COLOR_RGB2BGR555 = 23
        COLOR_BGR5552BGR = 24
        COLOR_BGR5552RGB = 25
        COLOR_BGRA2BGR555 = 26
        COLOR_RGBA2BGR555 = 27
        COLOR_BGR5552BGRA = 28
        COLOR_BGR5552RGBA = 29
        COLOR_GRAY2BGR555 = 30
        COLOR_BGR5552GRAY = 31
        COLOR_BGR2XYZ = 32
        COLOR_RGB2XYZ = 33
        COLOR_XYZ2BGR = 34
        COLOR_XYZ2RGB = 35
        COLOR_BGR2YCrCb = 36
        COLOR_RGB2YCrCb = 37
        COLOR_YCrCb2BGR = 38
        COLOR_YCrCb2RGB = 39
        COLOR_BGR2HSV = 40
        COLOR_RGB2HSV = 41
        COLOR_BGR2Lab = 44
        COLOR_RGB2Lab = 45
        COLOR_BGR2Luv = 50
        COLOR_RGB2Luv = 51
        COLOR_BGR2HLS = 52
        COLOR_RGB2HLS = 53
        COLOR_HSV2BGR = 54
        COLOR_HSV2RGB = 55
        COLOR_Lab2BGR = 56
        COLOR_Lab2RGB = 57
        COLOR_Luv2BGR = 58
        COLOR_Luv2RGB = 59
        COLOR_HLS2BGR = 60
        COLOR_HLS2RGB = 61
        COLOR_BGR2HSV_FULL = 66
        COLOR_RGB2HSV_FULL = 67
        COLOR_BGR2HLS_FULL = 68
        COLOR_RGB2HLS_FULL = 69
        COLOR_HSV2BGR_FULL = 70
        COLOR_HSV2RGB_FULL = 71
        COLOR_HLS2BGR_FULL = 72
        COLOR_HLS2RGB_FULL = 73
        COLOR_LBGR2Lab = 74
        COLOR_LRGB2Lab = 75
        COLOR_LBGR2Luv = 76
        COLOR_LRGB2Luv = 77
        COLOR_Lab2LBGR = 78
        COLOR_Lab2LRGB = 79
        COLOR_Luv2LBGR = 80
        COLOR_Luv2LRGB = 81
        COLOR_BGR2YUV = 82
        COLOR_RGB2YUV = 83
        COLOR_YUV2BGR = 84
        COLOR_YUV2RGB = 85
        COLOR_YUV2RGB_NV12 = 90
        COLOR_YUV2BGR_NV12 = 91
        COLOR_YUV2RGB_NV21 = 92
        COLOR_YUV2BGR_NV21 = 93
        COLOR_YUV420sp2RGB = COLOR_YUV2RGB_NV21
        COLOR_YUV420sp2BGR = COLOR_YUV2BGR_NV21
        COLOR_YUV2RGBA_NV12 = 94
        COLOR_YUV2BGRA_NV12 = 95
        COLOR_YUV2RGBA_NV21 = 96
        COLOR_YUV2BGRA_NV21 = 97
        COLOR_YUV420sp2RGBA = COLOR_YUV2RGBA_NV21
        COLOR_YUV420sp2BGRA = COLOR_YUV2BGRA_NV21
        COLOR_YUV2RGB_YV12 = 98
        COLOR_YUV2BGR_YV12 = 99
        COLOR_YUV2RGB_IYUV = 100
        COLOR_YUV2BGR_IYUV = 101
        COLOR_YUV2RGB_I420 = COLOR_YUV2RGB_IYUV
        COLOR_YUV2BGR_I420 = COLOR_YUV2BGR_IYUV
        COLOR_YUV420p2RGB = COLOR_YUV2RGB_YV12
        COLOR_YUV420p2BGR = COLOR_YUV2BGR_YV12
        COLOR_YUV2RGBA_YV12 = 102
        COLOR_YUV2BGRA_YV12 = 103
        COLOR_YUV2RGBA_IYUV = 104
        COLOR_YUV2BGRA_IYUV = 105
        COLOR_YUV2RGBA_I420 = COLOR_YUV2RGBA_IYUV
        COLOR_YUV2BGRA_I420 = COLOR_YUV2BGRA_IYUV
        COLOR_YUV420p2RGBA = COLOR_YUV2RGBA_YV12
        COLOR_YUV420p2BGRA = COLOR_YUV2BGRA_YV12
        COLOR_YUV2GRAY_420 = 106
        COLOR_YUV2GRAY_NV21 = COLOR_YUV2GRAY_420
        COLOR_YUV2GRAY_NV12 = COLOR_YUV2GRAY_420
        COLOR_YUV2GRAY_YV12 = COLOR_YUV2GRAY_420
        COLOR_YUV2GRAY_IYUV = COLOR_YUV2GRAY_420
        COLOR_YUV2GRAY_I420 = COLOR_YUV2GRAY_420
        COLOR_YUV420sp2GRAY = COLOR_YUV2GRAY_420
        COLOR_YUV420p2GRAY = COLOR_YUV2GRAY_420
        COLOR_YUV2RGB_UYVY = 107
        COLOR_YUV2BGR_UYVY = 108
        COLOR_YUV2RGB_Y422 = COLOR_YUV2RGB_UYVY
        COLOR_YUV2BGR_Y422 = COLOR_YUV2BGR_UYVY
        COLOR_YUV2RGB_UYNV = COLOR_YUV2RGB_UYVY
        COLOR_YUV2BGR_UYNV = COLOR_YUV2BGR_UYVY
        COLOR_YUV2RGBA_UYVY = 111
        COLOR_YUV2BGRA_UYVY = 112
        COLOR_YUV2RGBA_Y422 = COLOR_YUV2RGBA_UYVY
        COLOR_YUV2BGRA_Y422 = COLOR_YUV2BGRA_UYVY
        COLOR_YUV2RGBA_UYNV = COLOR_YUV2RGBA_UYVY
        COLOR_YUV2BGRA_UYNV = COLOR_YUV2BGRA_UYVY
        COLOR_YUV2RGB_YUY2 = 115
        COLOR_YUV2BGR_YUY2 = 116
        COLOR_YUV2RGB_YVYU = 117
        COLOR_YUV2BGR_YVYU = 118
        COLOR_YUV2RGB_YUYV = COLOR_YUV2RGB_YUY2
        COLOR_YUV2BGR_YUYV = COLOR_YUV2BGR_YUY2
        COLOR_YUV2RGB_YUNV = COLOR_YUV2RGB_YUY2
        COLOR_YUV2BGR_YUNV = COLOR_YUV2BGR_YUY2
        COLOR_YUV2RGBA_YUY2 = 119
        COLOR_YUV2BGRA_YUY2 = 120
        COLOR_YUV2RGBA_YVYU = 121
        COLOR_YUV2BGRA_YVYU = 122
        COLOR_YUV2RGBA_YUYV = COLOR_YUV2RGBA_YUY2
        COLOR_YUV2BGRA_YUYV = COLOR_YUV2BGRA_YUY2
        COLOR_YUV2RGBA_YUNV = COLOR_YUV2RGBA_YUY2
        COLOR_YUV2BGRA_YUNV = COLOR_YUV2BGRA_YUY2
        COLOR_YUV2GRAY_UYVY = 123
        COLOR_YUV2GRAY_YUY2 = 124
        COLOR_YUV2GRAY_Y422 = COLOR_YUV2GRAY_UYVY
        COLOR_YUV2GRAY_UYNV = COLOR_YUV2GRAY_UYVY
        COLOR_YUV2GRAY_YVYU = COLOR_YUV2GRAY_YUY2
        COLOR_YUV2GRAY_YUYV = COLOR_YUV2GRAY_YUY2
        COLOR_YUV2GRAY_YUNV = COLOR_YUV2GRAY_YUY2
        COLOR_RGBA2mRGBA = 125
        COLOR_mRGBA2RGBA = 126
        COLOR_RGB2YUV_I420 = 127
        COLOR_BGR2YUV_I420 = 128
        COLOR_RGB2YUV_IYUV = COLOR_RGB2YUV_I420
        COLOR_BGR2YUV_IYUV = COLOR_BGR2YUV_I420
        COLOR_RGBA2YUV_I420 = 129
        COLOR_BGRA2YUV_I420 = 130
        COLOR_RGBA2YUV_IYUV = COLOR_RGBA2YUV_I420
        COLOR_BGRA2YUV_IYUV = COLOR_BGRA2YUV_I420
        COLOR_RGB2YUV_YV12 = 131
        COLOR_BGR2YUV_YV12 = 132
        COLOR_RGBA2YUV_YV12 = 133
        COLOR_BGRA2YUV_YV12 = 134
        COLOR_BayerBG2BGR = 46
        COLOR_BayerGB2BGR = 47
        COLOR_BayerRG2BGR = 48
        COLOR_BayerGR2BGR = 49
        COLOR_BayerBG2RGB = COLOR_BayerRG2BGR
        COLOR_BayerGB2RGB = COLOR_BayerGR2BGR
        COLOR_BayerRG2RGB = COLOR_BayerBG2BGR
        COLOR_BayerGR2RGB = COLOR_BayerGB2BGR
        COLOR_BayerBG2GRAY = 86
        COLOR_BayerGB2GRAY = 87
        COLOR_BayerRG2GRAY = 88
        COLOR_BayerGR2GRAY = 89
        COLOR_BayerBG2BGR_VNG = 62
        COLOR_BayerGB2BGR_VNG = 63
        COLOR_BayerRG2BGR_VNG = 64
        COLOR_BayerGR2BGR_VNG = 65
        COLOR_BayerBG2RGB_VNG = COLOR_BayerRG2BGR_VNG
        COLOR_BayerGB2RGB_VNG = COLOR_BayerGR2BGR_VNG
        COLOR_BayerRG2RGB_VNG = COLOR_BayerBG2BGR_VNG
        COLOR_BayerGR2RGB_VNG = COLOR_BayerGB2BGR_VNG
        COLOR_BayerBG2BGR_EA = 135
        COLOR_BayerGB2BGR_EA = 136
        COLOR_BayerRG2BGR_EA = 137
        COLOR_BayerGR2BGR_EA = 138
        COLOR_BayerBG2RGB_EA = COLOR_BayerRG2BGR_EA
        COLOR_BayerGB2RGB_EA = COLOR_BayerGR2BGR_EA
        COLOR_BayerRG2RGB_EA = COLOR_BayerBG2BGR_EA
        COLOR_BayerGR2RGB_EA = COLOR_BayerGB2BGR_EA
        COLOR_COLORCVT_MAX = 139
        CASCADE_DO_CANNY_PRUNING = 1
        CASCADE_SCALE_IMAGE = 2
        CASCADE_FIND_BIGGEST_OBJECT = 4
        CASCADE_DO_ROUGH_SEARCH = 8
        INPAINT_NS = 0
        INPAINT_TELEA = 1

        # wrapper for int cv::borderInterpolate(int p, int len, int borderType)
        def self.border_interpolate(p, len, border_type)
            Rbind::cv_border_interpolate(p, len, border_type)
        end

        # wrapper for void cv::copyMakeBorder(const cv::Mat src, cv::Mat dst, int top, int bottom, int left, int right, int borderType, const cv::Scalar value=Scalar())
        def self.copy_make_border(src, dst, top, bottom, left, right, border_type, value = Cv::Scalar.new())
            Rbind::cv_copy_make_border(src, dst, top, bottom, left, right, border_type, value)
        end

        # wrapper for void cv::add(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, const cv::Mat mask=Mat(), int dtype=-1)
        def self.add(_src1, _src2, dst, mask = Cv::Mat.new(), dtype = -1)
            Rbind::cv_add(_src1, _src2, dst, mask, dtype)
        end

        # wrapper for void cv::subtract(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, const cv::Mat mask=Mat(), int dtype=-1)
        def self.subtract(_src1, _src2, dst, mask = Cv::Mat.new(), dtype = -1)
            Rbind::cv_subtract(_src1, _src2, dst, mask, dtype)
        end

        # wrapper for void cv::multiply(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, double scale=1, int dtype=-1)
        def self.multiply(_src1, _src2, dst, scale = 1, dtype = -1)
            Rbind::cv_multiply(_src1, _src2, dst, scale, dtype)
        end

        # wrapper for overloaded method divide
        def self.divide(*args)
            # wrapper for void cv::divide(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, double scale=1, int dtype=-1)
            @@cv_divide_defaults0 ||= [nil, nil, nil, 1, -1]
            if(args.size >= 3 && args.size <= 5)
                args.size.upto(4) do |i|
                    args[i] = @@cv_divide_defaults0[i]
                end
                begin
                    return Rbind::cv_divide(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for void cv::divide(double scale, const cv::Mat src2, cv::Mat dst, int dtype=-1)
            @@cv_divide2_defaults1 ||= [nil, nil, nil, -1]
            if(args.size >= 3 && args.size <= 4)
                args.size.upto(3) do |i|
                    args[i] = @@cv_divide2_defaults1[i]
                end
                begin
                    return Rbind::cv_divide2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
        end

        # wrapper for void cv::scaleAdd(const cv::Mat src1, double alpha, const cv::Mat src2, cv::Mat dst)
        def self.scale_add(_src1, alpha, _src2, dst)
            Rbind::cv_scale_add(_src1, alpha, _src2, dst)
        end

        # wrapper for void cv::addWeighted(const cv::Mat src1, double alpha, const cv::Mat src2, double beta, double gamma, cv::Mat dst, int dtype=-1)
        def self.add_weighted(_src1, alpha, _src2, beta, gamma, dst, dtype = -1)
            Rbind::cv_add_weighted(_src1, alpha, _src2, beta, gamma, dst, dtype)
        end

        # wrapper for void cv::convertScaleAbs(const cv::Mat src, cv::Mat dst, double alpha=1, double beta=0)
        def self.convert_scale_abs(src, dst, alpha = 1, beta = 0)
            Rbind::cv_convert_scale_abs(src, dst, alpha, beta)
        end

        # wrapper for void cv::LUT(const cv::Mat src, const cv::Mat lut, cv::Mat dst)
        def self.lut(src, lut, dst)
            Rbind::cv_lut(src, lut, dst)
        end

        # wrapper for cv::Scalar cv::sum(const cv::Mat src)
        def self.sum_elems(src)
            Rbind::cv_sum_elems(src)
        end

        # wrapper for int cv::countNonZero(const cv::Mat src)
        def self.count_non_zero(src)
            Rbind::cv_count_non_zero(src)
        end

        # wrapper for void cv::findNonZero(const cv::Mat src, cv::Mat idx)
        def self.find_non_zero(src, idx)
            Rbind::cv_find_non_zero(src, idx)
        end

        # wrapper for cv::Scalar cv::mean(const cv::Mat src, const cv::Mat mask=Mat())
        def self.mean(src, mask = Cv::Mat.new())
            Rbind::cv_mean(src, mask)
        end

        # wrapper for void cv::meanStdDev(const cv::Mat src, cv::Mat mean, cv::Mat stddev, const cv::Mat mask=Mat())
        def self.mean_std_dev(src, mean, stddev, mask = Cv::Mat.new())
            Rbind::cv_mean_std_dev(src, mean, stddev, mask)
        end

        # wrapper for overloaded method norm
        def self.norm(*args)
            # wrapper for double cv::norm(const cv::Mat src1, int normType=NORM_L2, const cv::Mat mask=Mat())
            @@cv_norm_defaults0 ||= [nil, NORM_L2, Cv::Mat.new()]
            if(args.size >= 1 && args.size <= 3)
                args.size.upto(2) do |i|
                    args[i] = @@cv_norm_defaults0[i]
                end
                begin
                    return Rbind::cv_norm(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for double cv::norm(const cv::Mat src1, const cv::Mat src2, int normType=NORM_L2, const cv::Mat mask=Mat())
            @@cv_norm2_defaults1 ||= [nil, nil, NORM_L2, Cv::Mat.new()]
            if(args.size >= 2 && args.size <= 4)
                args.size.upto(3) do |i|
                    args[i] = @@cv_norm2_defaults1[i]
                end
                begin
                    return Rbind::cv_norm2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
        end

        # wrapper for double cv::PSNR(const cv::Mat src1, const cv::Mat src2)
        def self.psnr(_src1, _src2)
            Rbind::cv_psnr(_src1, _src2)
        end

        # wrapper for void cv::batchDistance(const cv::Mat src1, const cv::Mat src2, cv::Mat dist, int dtype, cv::Mat nidx, int normType=NORM_L2, int K=0, const cv::Mat mask=Mat(), int update=0, bool crosscheck=false)
        def self.batch_distance(_src1, _src2, dist, dtype, nidx, norm_type = NORM_L2, k = 0, mask = Cv::Mat.new(), update = 0, crosscheck = false)
            Rbind::cv_batch_distance(_src1, _src2, dist, dtype, nidx, norm_type, k, mask, update, crosscheck)
        end

        # wrapper for void cv::normalize(const cv::Mat src, cv::Mat dst, double alpha=1, double beta=0, int norm_type=NORM_L2, int dtype=-1, const cv::Mat mask=Mat())
        def self.normalize(src, dst, alpha = 1, beta = 0, norm_type = NORM_L2, dtype = -1, mask = Cv::Mat.new())
            Rbind::cv_normalize(src, dst, alpha, beta, norm_type, dtype, mask)
        end

        # wrapper for void cv::minMaxLoc(const cv::Mat src, double *minVal, double *maxVal=0, cv::Point *minLoc=0, cv::Point *maxLoc=0, const cv::Mat mask=Mat())
        def self.min_max_loc(src, min_val, max_val = 0, min_loc = 0, max_loc = 0, mask = Cv::Mat.new())
            Rbind::cv_min_max_loc(src, min_val, max_val, min_loc, max_loc, mask)
        end

        # wrapper for void cv::reduce(const cv::Mat src, cv::Mat dst, int dim, int rtype, int dtype=-1)
        def self.reduce(src, dst, dim, rtype, dtype = -1)
            Rbind::cv_reduce(src, dst, dim, rtype, dtype)
        end

        # wrapper for void cv::merge(const vector_Mat mv, cv::Mat dst)
        def self.merge(mv, dst)
            Rbind::cv_merge(mv, dst)
        end

        # wrapper for void cv::split(const cv::Mat m, vector_Mat mv)
        def self.split(m, mv)
            Rbind::cv_split(m, mv)
        end

        # wrapper for void cv::mixChannels(const vector_Mat src, vector_Mat dst, const vector_int fromTo)
        def self.mix_channels(src, dst, from_to)
            Rbind::cv_mix_channels(src, dst, from_to)
        end

        # wrapper for void cv::extractChannel(const cv::Mat src, cv::Mat dst, int coi)
        def self.extract_channel(src, dst, coi)
            Rbind::cv_extract_channel(src, dst, coi)
        end

        # wrapper for void cv::insertChannel(const cv::Mat src, cv::Mat dst, int coi)
        def self.insert_channel(src, dst, coi)
            Rbind::cv_insert_channel(src, dst, coi)
        end

        # wrapper for void cv::flip(const cv::Mat src, cv::Mat dst, int flipCode)
        def self.flip(src, dst, flip_code)
            Rbind::cv_flip(src, dst, flip_code)
        end

        # wrapper for void cv::repeat(const cv::Mat src, int ny, int nx, cv::Mat dst)
        def self.repeat(src, ny, nx, dst)
            Rbind::cv_repeat(src, ny, nx, dst)
        end

        # wrapper for void cv::hconcat(const vector_Mat src, cv::Mat dst)
        def self.hconcat(src, dst)
            Rbind::cv_hconcat(src, dst)
        end

        # wrapper for void cv::vconcat(const vector_Mat src, cv::Mat dst)
        def self.vconcat(src, dst)
            Rbind::cv_vconcat(src, dst)
        end

        # wrapper for void cv::bitwise_and(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, const cv::Mat mask=Mat())
        def self.bitwise_and(_src1, _src2, dst, mask = Cv::Mat.new())
            Rbind::cv_bitwise_and(_src1, _src2, dst, mask)
        end

        # wrapper for void cv::bitwise_or(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, const cv::Mat mask=Mat())
        def self.bitwise_or(_src1, _src2, dst, mask = Cv::Mat.new())
            Rbind::cv_bitwise_or(_src1, _src2, dst, mask)
        end

        # wrapper for void cv::bitwise_xor(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, const cv::Mat mask=Mat())
        def self.bitwise_xor(_src1, _src2, dst, mask = Cv::Mat.new())
            Rbind::cv_bitwise_xor(_src1, _src2, dst, mask)
        end

        # wrapper for void cv::bitwise_not(const cv::Mat src, cv::Mat dst, const cv::Mat mask=Mat())
        def self.bitwise_not(src, dst, mask = Cv::Mat.new())
            Rbind::cv_bitwise_not(src, dst, mask)
        end

        # wrapper for void cv::absdiff(const cv::Mat src1, const cv::Mat src2, cv::Mat dst)
        def self.absdiff(_src1, _src2, dst)
            Rbind::cv_absdiff(_src1, _src2, dst)
        end

        # wrapper for void cv::inRange(const cv::Mat src, const cv::Mat lowerb, const cv::Mat upperb, cv::Mat dst)
        def self.in_range(src, lowerb, upperb, dst)
            Rbind::cv_in_range(src, lowerb, upperb, dst)
        end

        # wrapper for void cv::compare(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, int cmpop)
        def self.compare(_src1, _src2, dst, cmpop)
            Rbind::cv_compare(_src1, _src2, dst, cmpop)
        end

        # wrapper for void cv::min(const cv::Mat src1, const cv::Mat src2, cv::Mat dst)
        def self.min(_src1, _src2, dst)
            Rbind::cv_min(_src1, _src2, dst)
        end

        # wrapper for void cv::max(const cv::Mat src1, const cv::Mat src2, cv::Mat dst)
        def self.max(_src1, _src2, dst)
            Rbind::cv_max(_src1, _src2, dst)
        end

        # wrapper for void cv::sqrt(const cv::Mat src, cv::Mat dst)
        def self.sqrt(src, dst)
            Rbind::cv_sqrt(src, dst)
        end

        # wrapper for void cv::pow(const cv::Mat src, double power, cv::Mat dst)
        def self.pow(src, power, dst)
            Rbind::cv_pow(src, power, dst)
        end

        # wrapper for void cv::exp(const cv::Mat src, cv::Mat dst)
        def self.exp(src, dst)
            Rbind::cv_exp(src, dst)
        end

        # wrapper for void cv::log(const cv::Mat src, cv::Mat dst)
        def self.log(src, dst)
            Rbind::cv_log(src, dst)
        end

        # wrapper for void cv::polarToCart(const cv::Mat magnitude, const cv::Mat angle, cv::Mat x, cv::Mat y, bool angleInDegrees=false)
        def self.polar_to_cart(magnitude, angle, x, y, angle_in_degrees = false)
            Rbind::cv_polar_to_cart(magnitude, angle, x, y, angle_in_degrees)
        end

        # wrapper for void cv::cartToPolar(const cv::Mat x, const cv::Mat y, cv::Mat magnitude, cv::Mat angle, bool angleInDegrees=false)
        def self.cart_to_polar(x, y, magnitude, angle, angle_in_degrees = false)
            Rbind::cv_cart_to_polar(x, y, magnitude, angle, angle_in_degrees)
        end

        # wrapper for void cv::phase(const cv::Mat x, const cv::Mat y, cv::Mat angle, bool angleInDegrees=false)
        def self.phase(x, y, angle, angle_in_degrees = false)
            Rbind::cv_phase(x, y, angle, angle_in_degrees)
        end

        # wrapper for void cv::magnitude(const cv::Mat x, const cv::Mat y, cv::Mat magnitude)
        def self.magnitude(x, y, magnitude)
            Rbind::cv_magnitude(x, y, magnitude)
        end

        # wrapper for bool cv::checkRange(const cv::Mat a, bool quiet=true, cv::Point *pos=0, double minVal=-DBL_MAX, double maxVal=DBL_MAX)
        def self.check_range(a, quiet = true, pos = 0, min_val = -DBL_MAX, max_val = DBL_MAX)
            Rbind::cv_check_range(a, quiet, pos, min_val, max_val)
        end

        # wrapper for void cv::patchNaNs(cv::Mat a, double val=0)
        def self.patch_na_ns(a, val = 0)
            Rbind::cv_patch_na_ns(a, val)
        end

        # wrapper for void cv::gemm(const cv::Mat src1, const cv::Mat src2, double alpha, const cv::Mat src3, double gamma, cv::Mat dst, int flags=0)
        def self.gemm(_src1, _src2, alpha, _src3, gamma, dst, flags = 0)
            Rbind::cv_gemm(_src1, _src2, alpha, _src3, gamma, dst, flags)
        end

        # wrapper for void cv::mulTransposed(const cv::Mat src, cv::Mat dst, bool aTa, const cv::Mat delta=Mat(), double scale=1, int dtype=-1)
        def self.mul_transposed(src, dst, a_ta, delta = Cv::Mat.new(), scale = 1, dtype = -1)
            Rbind::cv_mul_transposed(src, dst, a_ta, delta, scale, dtype)
        end

        # wrapper for void cv::transpose(const cv::Mat src, cv::Mat dst)
        def self.transpose(src, dst)
            Rbind::cv_transpose(src, dst)
        end

        # wrapper for void cv::transform(const cv::Mat src, cv::Mat dst, const cv::Mat m)
        def self.transform(src, dst, m)
            Rbind::cv_transform(src, dst, m)
        end

        # wrapper for void cv::perspectiveTransform(const cv::Mat src, cv::Mat dst, const cv::Mat m)
        def self.perspective_transform(src, dst, m)
            Rbind::cv_perspective_transform(src, dst, m)
        end

        # wrapper for void cv::completeSymm(cv::Mat mtx, bool lowerToUpper=false)
        def self.complete_symm(mtx, lower_to_upper = false)
            Rbind::cv_complete_symm(mtx, lower_to_upper)
        end

        # wrapper for void cv::setIdentity(cv::Mat mtx, const cv::Scalar s=Scalar(1))
        def self.set_identity(mtx, s = Cv::Scalar.new(1))
            Rbind::cv_set_identity(mtx, s)
        end

        # wrapper for double cv::determinant(const cv::Mat mtx)
        def self.determinant(mtx)
            Rbind::cv_determinant(mtx)
        end

        # wrapper for cv::Scalar cv::trace(const cv::Mat mtx)
        def self.trace(mtx)
            Rbind::cv_trace(mtx)
        end

        # wrapper for double cv::invert(const cv::Mat src, cv::Mat dst, int flags=DECOMP_LU)
        def self.invert(src, dst, flags = DECOMP_LU)
            Rbind::cv_invert(src, dst, flags)
        end

        # wrapper for bool cv::solve(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, int flags=DECOMP_LU)
        def self.solve(_src1, _src2, dst, flags = DECOMP_LU)
            Rbind::cv_solve(_src1, _src2, dst, flags)
        end

        # wrapper for void cv::sort(const cv::Mat src, cv::Mat dst, int flags)
        def self.sort(src, dst, flags)
            Rbind::cv_sort(src, dst, flags)
        end

        # wrapper for void cv::sortIdx(const cv::Mat src, cv::Mat dst, int flags)
        def self.sort_idx(src, dst, flags)
            Rbind::cv_sort_idx(src, dst, flags)
        end

        # wrapper for int cv::solveCubic(const cv::Mat coeffs, cv::Mat roots)
        def self.solve_cubic(coeffs, roots)
            Rbind::cv_solve_cubic(coeffs, roots)
        end

        # wrapper for double cv::solvePoly(const cv::Mat coeffs, cv::Mat roots, int maxIters=300)
        def self.solve_poly(coeffs, roots, max_iters = 300)
            Rbind::cv_solve_poly(coeffs, roots, max_iters)
        end

        # wrapper for bool cv::eigen(const cv::Mat src, cv::Mat eigenvalues, cv::Mat eigenvectors=Mat())
        def self.eigen(src, eigenvalues, eigenvectors = Cv::Mat.new())
            Rbind::cv_eigen(src, eigenvalues, eigenvectors)
        end

        # wrapper for void cv::calcCovarMatrix(const cv::Mat samples, cv::Mat covar, cv::Mat mean, int flags, int ctype=CV_64F)
        def self.calc_covar_matrix(samples, covar, mean, flags, ctype = CV_64F)
            Rbind::cv_calc_covar_matrix(samples, covar, mean, flags, ctype)
        end

        # wrapper for overloaded method pca_compute
        def self.pca_compute(*args)
            # wrapper for void cv::PCACompute(const cv::Mat data, cv::Mat mean, cv::Mat eigenvectors, int maxComponents=0)
            @@cv_pca_compute_defaults0 ||= [nil, nil, nil, 0]
            if(args.size >= 3 && args.size <= 4)
                args.size.upto(3) do |i|
                    args[i] = @@cv_pca_compute_defaults0[i]
                end
                begin
                    return Rbind::cv_pca_compute(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for void cv::PCACompute(const cv::Mat data, cv::Mat mean, cv::Mat eigenvectors, double retainedVariance)
            @@cv_pca_compute2_defaults1 ||= [nil, nil, nil, nil]
            if(args.size >= 4 && args.size <= 4)
                args.size.upto(3) do |i|
                    args[i] = @@cv_pca_compute2_defaults1[i]
                end
                begin
                    return Rbind::cv_pca_compute2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
        end

        # wrapper for void cv::PCAProject(const cv::Mat data, const cv::Mat mean, const cv::Mat eigenvectors, cv::Mat result)
        def self.pca_project(data, mean, eigenvectors, result)
            Rbind::cv_pca_project(data, mean, eigenvectors, result)
        end

        # wrapper for void cv::PCABackProject(const cv::Mat data, const cv::Mat mean, const cv::Mat eigenvectors, cv::Mat result)
        def self.pca_back_project(data, mean, eigenvectors, result)
            Rbind::cv_pca_back_project(data, mean, eigenvectors, result)
        end

        # wrapper for void cv::SVDecomp(const cv::Mat src, cv::Mat w, cv::Mat u, cv::Mat vt, int flags=0)
        def self.sv_decomp(src, w, u, vt, flags = 0)
            Rbind::cv_sv_decomp(src, w, u, vt, flags)
        end

        # wrapper for void cv::SVBackSubst(const cv::Mat w, const cv::Mat u, const cv::Mat vt, const cv::Mat rhs, cv::Mat dst)
        def self.sv_back_subst(w, u, vt, rhs, dst)
            Rbind::cv_sv_back_subst(w, u, vt, rhs, dst)
        end

        # wrapper for double cv::Mahalanobis(const cv::Mat v1, const cv::Mat v2, const cv::Mat icovar)
        def self.mahalanobis(_v1, _v2, icovar)
            Rbind::cv_mahalanobis(_v1, _v2, icovar)
        end

        # wrapper for void cv::dft(const cv::Mat src, cv::Mat dst, int flags=0, int nonzeroRows=0)
        def self.dft(src, dst, flags = 0, nonzero_rows = 0)
            Rbind::cv_dft(src, dst, flags, nonzero_rows)
        end

        # wrapper for void cv::idft(const cv::Mat src, cv::Mat dst, int flags=0, int nonzeroRows=0)
        def self.idft(src, dst, flags = 0, nonzero_rows = 0)
            Rbind::cv_idft(src, dst, flags, nonzero_rows)
        end

        # wrapper for void cv::dct(const cv::Mat src, cv::Mat dst, int flags=0)
        def self.dct(src, dst, flags = 0)
            Rbind::cv_dct(src, dst, flags)
        end

        # wrapper for void cv::idct(const cv::Mat src, cv::Mat dst, int flags=0)
        def self.idct(src, dst, flags = 0)
            Rbind::cv_idct(src, dst, flags)
        end

        # wrapper for void cv::mulSpectrums(const cv::Mat a, const cv::Mat b, cv::Mat c, int flags, bool conjB=false)
        def self.mul_spectrums(a, b, c, flags, conj_b = false)
            Rbind::cv_mul_spectrums(a, b, c, flags, conj_b)
        end

        # wrapper for int cv::getOptimalDFTSize(int vecsize)
        def self.get_optimaldft_size(vecsize)
            Rbind::cv_get_optimaldft_size(vecsize)
        end

        # wrapper for double cv::kmeans(const cv::Mat data, int K, cv::Mat bestLabels, const cv::TermCriteria criteria, int attempts, int flags, cv::Mat centers=Mat())
        def self.kmeans(data, k, best_labels, criteria, attempts, flags, centers = Cv::Mat.new())
            Rbind::cv_kmeans(data, k, best_labels, criteria, attempts, flags, centers)
        end

        # wrapper for void cv::randu(cv::Mat dst, const cv::Mat low, const cv::Mat high)
        def self.randu(dst, low, high)
            Rbind::cv_randu(dst, low, high)
        end

        # wrapper for void cv::randn(cv::Mat dst, const cv::Mat mean, const cv::Mat stddev)
        def self.randn(dst, mean, stddev)
            Rbind::cv_randn(dst, mean, stddev)
        end

        # wrapper for void cv::randShuffle(cv::Mat dst, double iterFactor=1., cv::RNG *rng=0)
        def self.rand_shuffle(dst, iter_factor = 1.0, rng = 0)
            Rbind::cv_rand_shuffle(dst, iter_factor, rng)
        end

        # wrapper for void cv::line(cv::Mat img, const cv::Point pt1, const cv::Point pt2, const cv::Scalar color, int thickness=1, int lineType=LINE_8, int shift=0)
        def self.line(img, _pt1, _pt2, color, thickness = 1, line_type = LINE_8, shift = 0)
            Rbind::cv_line(img, _pt1, _pt2, color, thickness, line_type, shift)
        end

        # wrapper for void cv::rectangle(cv::Mat img, const cv::Point pt1, const cv::Point pt2, const cv::Scalar color, int thickness=1, int lineType=LINE_8, int shift=0)
        def self.rectangle(img, _pt1, _pt2, color, thickness = 1, line_type = LINE_8, shift = 0)
            Rbind::cv_rectangle(img, _pt1, _pt2, color, thickness, line_type, shift)
        end

        # wrapper for void cv::circle(cv::Mat img, const cv::Point center, int radius, const cv::Scalar color, int thickness=1, int lineType=LINE_8, int shift=0)
        def self.circle(img, center, radius, color, thickness = 1, line_type = LINE_8, shift = 0)
            Rbind::cv_circle(img, center, radius, color, thickness, line_type, shift)
        end

        # wrapper for overloaded method ellipse
        def self.ellipse(*args)
            # wrapper for void cv::ellipse(cv::Mat img, const cv::Point center, const cv::Size axes, double angle, double startAngle, double endAngle, const cv::Scalar color, int thickness=1, int lineType=LINE_8, int shift=0)
            @@cv_ellipse_defaults0 ||= [nil, nil, nil, nil, nil, nil, nil, 1, LINE_8, 0]
            if(args.size >= 7 && args.size <= 10)
                args.size.upto(9) do |i|
                    args[i] = @@cv_ellipse_defaults0[i]
                end
                begin
                    return Rbind::cv_ellipse(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for void cv::ellipse(cv::Mat img, const cv::RotatedRect box, const cv::Scalar color, int thickness=1, int lineType=LINE_8)
            @@cv_ellipse2_defaults1 ||= [nil, nil, nil, 1, LINE_8]
            if(args.size >= 3 && args.size <= 5)
                args.size.upto(4) do |i|
                    args[i] = @@cv_ellipse2_defaults1[i]
                end
                begin
                    return Rbind::cv_ellipse2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
        end

        # wrapper for void cv::fillConvexPoly(cv::Mat img, const cv::Mat points, const cv::Scalar color, int lineType=LINE_8, int shift=0)
        def self.fill_convex_poly(img, points, color, line_type = LINE_8, shift = 0)
            Rbind::cv_fill_convex_poly(img, points, color, line_type, shift)
        end

        # wrapper for void cv::fillPoly(cv::Mat img, const vector_Mat pts, const cv::Scalar color, int lineType=LINE_8, int shift=0, const cv::Point offset=Point())
        def self.fill_poly(img, pts, color, line_type = LINE_8, shift = 0, offset = Cv::Point.new())
            Rbind::cv_fill_poly(img, pts, color, line_type, shift, offset)
        end

        # wrapper for void cv::polylines(cv::Mat img, const vector_Mat pts, bool isClosed, const cv::Scalar color, int thickness=1, int lineType=LINE_8, int shift=0)
        def self.polylines(img, pts, is_closed, color, thickness = 1, line_type = LINE_8, shift = 0)
            Rbind::cv_polylines(img, pts, is_closed, color, thickness, line_type, shift)
        end

        # wrapper for void cv::drawContours(cv::Mat image, const vector_Mat contours, int contourIdx, const cv::Scalar color, int thickness=1, int lineType=LINE_8, const cv::Mat hierarchy=Mat(), int maxLevel=INT_MAX, const cv::Point offset=Point())
        def self.draw_contours(image, contours, contour_idx, color, thickness = 1, line_type = LINE_8, hierarchy = Cv::Mat.new(), max_level = INT_MAX, offset = Cv::Point.new())
            Rbind::cv_draw_contours(image, contours, contour_idx, color, thickness, line_type, hierarchy, max_level, offset)
        end

        # wrapper for bool cv::clipLine(const cv::Rect imgRect, cv::Point pt1, cv::Point pt2)
        def self.clip_line(img_rect, _pt1, _pt2)
            Rbind::cv_clip_line(img_rect, _pt1, _pt2)
        end

        # wrapper for void cv::ellipse2Poly(const cv::Point center, const cv::Size axes, int angle, int arcStart, int arcEnd, int delta, vector_Point pts)
        def self.ellipse2_poly(center, axes, angle, arc_start, arc_end, delta, pts)
            Rbind::cv_ellipse2_poly(center, axes, angle, arc_start, arc_end, delta, pts)
        end

        # wrapper for void cv::putText(cv::Mat img, const cv::String text, const cv::Point org, int fontFace, double fontScale, const cv::Scalar color, int thickness=1, int lineType=LINE_8, bool bottomLeftOrigin=false)
        def self.put_text(img, text, org, font_face, font_scale, color, thickness = 1, line_type = LINE_8, bottom_left_origin = false)
            Rbind::cv_put_text(img, text, org, font_face, font_scale, color, thickness, line_type, bottom_left_origin)
        end

        # wrapper for cv::Size cv::getTextSize(const cv::String text, int fontFace, double fontScale, int thickness, int *baseLine)
        def self.get_text_size(text, font_face, font_scale, thickness, base_line)
            Rbind::cv_get_text_size(text, font_face, font_scale, thickness, base_line)
        end

        # wrapper for cv::String cv::getBuildInformation()
        def self.get_build_information()
            Rbind::cv_get_build_information()
        end

        # wrapper for int64 cv::getTickCount()
        def self.get_tick_count()
            Rbind::cv_get_tick_count()
        end

        # wrapper for double cv::getTickFrequency()
        def self.get_tick_frequency()
            Rbind::cv_get_tick_frequency()
        end

        # wrapper for int64 cv::getCPUTickCount()
        def self.getcpu_tick_count()
            Rbind::cv_getcpu_tick_count()
        end

        # wrapper for bool cv::checkHardwareSupport(int feature)
        def self.check_hardware_support(feature)
            Rbind::cv_check_hardware_support(feature)
        end

        # wrapper for int cv::getNumberOfCPUs()
        def self.get_number_ofcp_us()
            Rbind::cv_get_number_ofcp_us()
        end

        # wrapper for void cv::setUseOptimized(bool onoff)
        def self.set_use_optimized(onoff)
            Rbind::cv_set_use_optimized(onoff)
        end

        # wrapper for bool cv::useOptimized()
        def self.use_optimized()
            Rbind::cv_use_optimized()
        end

        # wrapper for float cv::cubeRoot(float val)
        def self.cube_root(val)
            Rbind::cv_cube_root(val)
        end

        # wrapper for float cv::fastAtan2(float y, float x)
        def self.fast_atan2(y, x)
            Rbind::cv_fast_atan2(y, x)
        end

        # wrapper for int cv::chamerMatching(cv::Mat img, cv::Mat templ, vector_vector_Point results, vector_float cost, double templScale=1, int maxMatches=20, double minMatchDistance=1.0, int padX=3, int padY=3, int scales=5, double minScale=0.6, double maxScale=1.6, double orientationWeight=0.5, double truncate=20)
        def self.chamer_matching(img, templ, results, cost, templ_scale = 1, max_matches = 20, min_match_distance = 1.0, pad_x = 3, pad_y = 3, scales = 5, min_scale = 0.6, max_scale = 1.6, orientation_weight = 0.5, truncate = 20)
            Rbind::cv_chamer_matching(img, templ, results, cost, templ_scale, max_matches, min_match_distance, pad_x, pad_y, scales, min_scale, max_scale, orientation_weight, truncate)
        end

        # wrapper for Ptr_FaceRecognizer cv::createEigenFaceRecognizer(int num_components=0, double threshold=DBL_MAX)
        def self.create_eigen_face_recognizer(num_components = 0, threshold = DBL_MAX)
            Rbind::cv_create_eigen_face_recognizer(num_components, threshold)
        end

        # wrapper for Ptr_FaceRecognizer cv::createFisherFaceRecognizer(int num_components=0, double threshold=DBL_MAX)
        def self.create_fisher_face_recognizer(num_components = 0, threshold = DBL_MAX)
            Rbind::cv_create_fisher_face_recognizer(num_components, threshold)
        end

        # wrapper for Ptr_FaceRecognizer cv::createLBPHFaceRecognizer(int radius=1, int neighbors=8, int grid_x=8, int grid_y=8, double threshold=DBL_MAX)
        def self.createlbph_face_recognizer(radius = 1, neighbors = 8, grid_x = 8, grid_y = 8, threshold = DBL_MAX)
            Rbind::cv_createlbph_face_recognizer(radius, neighbors, grid_x, grid_y, threshold)
        end

        # wrapper for void cv::applyColorMap(const cv::Mat src, cv::Mat dst, int colormap)
        def self.apply_color_map(src, dst, colormap)
            Rbind::cv_apply_color_map(src, dst, colormap)
        end

        # wrapper for void cv::Rodrigues(const cv::Mat src, cv::Mat dst, cv::Mat jacobian=Mat())
        def self.rodrigues(src, dst, jacobian = Cv::Mat.new())
            Rbind::cv_rodrigues(src, dst, jacobian)
        end

        # wrapper for cv::Mat cv::findHomography(const cv::Mat srcPoints, const cv::Mat dstPoints, int method=0, double ransacReprojThreshold=3, cv::Mat mask=Mat())
        def self.find_homography(src_points, dst_points, method = 0, ransac_reproj_threshold = 3, mask = Cv::Mat.new())
            Rbind::cv_find_homography(src_points, dst_points, method, ransac_reproj_threshold, mask)
        end

        # wrapper for cv::Vec3d cv::RQDecomp3x3(const cv::Mat src, cv::Mat mtxR, cv::Mat mtxQ, cv::Mat Qx=Mat(), cv::Mat Qy=Mat(), cv::Mat Qz=Mat())
        def self.rq_decomp_3x3(src, mtx_r, mtx_q, qx = Cv::Mat.new(), qy = Cv::Mat.new(), qz = Cv::Mat.new())
            Rbind::cv_rq_decomp_3x3(src, mtx_r, mtx_q, qx, qy, qz)
        end

        # wrapper for void cv::decomposeProjectionMatrix(const cv::Mat projMatrix, cv::Mat cameraMatrix, cv::Mat rotMatrix, cv::Mat transVect, cv::Mat rotMatrixX=Mat(), cv::Mat rotMatrixY=Mat(), cv::Mat rotMatrixZ=Mat(), cv::Mat eulerAngles=Mat())
        def self.decompose_projection_matrix(proj_matrix, camera_matrix, rot_matrix, trans_vect, rot_matrix_x = Cv::Mat.new(), rot_matrix_y = Cv::Mat.new(), rot_matrix_z = Cv::Mat.new(), euler_angles = Cv::Mat.new())
            Rbind::cv_decompose_projection_matrix(proj_matrix, camera_matrix, rot_matrix, trans_vect, rot_matrix_x, rot_matrix_y, rot_matrix_z, euler_angles)
        end

        # wrapper for void cv::matMulDeriv(const cv::Mat A, const cv::Mat B, cv::Mat dABdA, cv::Mat dABdB)
        def self.mat_mul_deriv(a, b, d_a_bd_a, d_a_bd_b)
            Rbind::cv_mat_mul_deriv(a, b, d_a_bd_a, d_a_bd_b)
        end

        # wrapper for void cv::composeRT(const cv::Mat rvec1, const cv::Mat tvec1, const cv::Mat rvec2, const cv::Mat tvec2, cv::Mat rvec3, cv::Mat tvec3, cv::Mat dr3dr1=Mat(), cv::Mat dr3dt1=Mat(), cv::Mat dr3dr2=Mat(), cv::Mat dr3dt2=Mat(), cv::Mat dt3dr1=Mat(), cv::Mat dt3dt1=Mat(), cv::Mat dt3dr2=Mat(), cv::Mat dt3dt2=Mat())
        def self.composert(_rvec1, _tvec1, _rvec2, _tvec2, _rvec3, _tvec3, _dr3dr1 = Cv::Mat.new(), _dr3dt1 = Cv::Mat.new(), _dr3dr2 = Cv::Mat.new(), _dr3dt2 = Cv::Mat.new(), _dt3dr1 = Cv::Mat.new(), _dt3dt1 = Cv::Mat.new(), _dt3dr2 = Cv::Mat.new(), _dt3dt2 = Cv::Mat.new())
            Rbind::cv_composert(_rvec1, _tvec1, _rvec2, _tvec2, _rvec3, _tvec3, _dr3dr1, _dr3dt1, _dr3dr2, _dr3dt2, _dt3dr1, _dt3dt1, _dt3dr2, _dt3dt2)
        end

        # wrapper for void cv::projectPoints(const cv::Mat objectPoints, const cv::Mat rvec, const cv::Mat tvec, const cv::Mat cameraMatrix, const cv::Mat distCoeffs, cv::Mat imagePoints, cv::Mat jacobian=Mat(), double aspectRatio=0)
        def self.project_points(object_points, rvec, tvec, camera_matrix, dist_coeffs, image_points, jacobian = Cv::Mat.new(), aspect_ratio = 0)
            Rbind::cv_project_points(object_points, rvec, tvec, camera_matrix, dist_coeffs, image_points, jacobian, aspect_ratio)
        end

        # wrapper for bool cv::solvePnP(const cv::Mat objectPoints, const cv::Mat imagePoints, const cv::Mat cameraMatrix, const cv::Mat distCoeffs, cv::Mat rvec, cv::Mat tvec, bool useExtrinsicGuess=false, int flags=ITERATIVE)
        def self.solve_pnp(object_points, image_points, camera_matrix, dist_coeffs, rvec, tvec, use_extrinsic_guess = false, flags = ITERATIVE)
            Rbind::cv_solve_pnp(object_points, image_points, camera_matrix, dist_coeffs, rvec, tvec, use_extrinsic_guess, flags)
        end

        # wrapper for void cv::solvePnPRansac(const cv::Mat objectPoints, const cv::Mat imagePoints, const cv::Mat cameraMatrix, const cv::Mat distCoeffs, cv::Mat rvec, cv::Mat tvec, bool useExtrinsicGuess=false, int iterationsCount=100, float reprojectionError=8.0, int minInliersCount=100, cv::Mat inliers=Mat(), int flags=ITERATIVE)
        def self.solve_pnp_ransac(object_points, image_points, camera_matrix, dist_coeffs, rvec, tvec, use_extrinsic_guess = false, iterations_count = 100, reprojection_error = 8.0, min_inliers_count = 100, inliers = Cv::Mat.new(), flags = ITERATIVE)
            Rbind::cv_solve_pnp_ransac(object_points, image_points, camera_matrix, dist_coeffs, rvec, tvec, use_extrinsic_guess, iterations_count, reprojection_error, min_inliers_count, inliers, flags)
        end

        # wrapper for cv::Mat cv::initCameraMatrix2D(const vector_Mat objectPoints, const vector_Mat imagePoints, const cv::Size imageSize, double aspectRatio=1.0)
        def self.init_camera_matrix2d(object_points, image_points, image_size, aspect_ratio = 1.0)
            Rbind::cv_init_camera_matrix2d(object_points, image_points, image_size, aspect_ratio)
        end

        # wrapper for bool cv::findChessboardCorners(const cv::Mat image, const cv::Size patternSize, cv::Mat corners, int flags=CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE)
        def self.find_chessboard_corners(image, pattern_size, corners, flags = CALIB_CB_ADAPTIVE_THRESH + CALIB_CB_NORMALIZE_IMAGE)
            Rbind::cv_find_chessboard_corners(image, pattern_size, corners, flags)
        end

        # wrapper for void cv::drawChessboardCorners(cv::Mat image, const cv::Size patternSize, const cv::Mat corners, bool patternWasFound)
        def self.draw_chessboard_corners(image, pattern_size, corners, pattern_was_found)
            Rbind::cv_draw_chessboard_corners(image, pattern_size, corners, pattern_was_found)
        end

        # wrapper for bool cv::findCirclesGrid(const cv::Mat image, const cv::Size patternSize, cv::Mat centers, int flags=CALIB_CB_SYMMETRIC_GRID, const Ptr_FeatureDetector blobDetector=new SimpleBlobDetector())
        def self.find_circles_grid(image, pattern_size, centers, flags = CALIB_CB_SYMMETRIC_GRID, blob_detector = Cv::SimpleBlobDetector.new())
            Rbind::cv_find_circles_grid(image, pattern_size, centers, flags, blob_detector)
        end

        # wrapper for double cv::calibrateCamera(const vector_Mat objectPoints, const vector_Mat imagePoints, const cv::Size imageSize, cv::Mat cameraMatrix, cv::Mat distCoeffs, vector_Mat rvecs, vector_Mat tvecs, int flags=0, const cv::TermCriteria criteria=TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON))
        def self.calibrate_camera(object_points, image_points, image_size, camera_matrix, dist_coeffs, rvecs, tvecs, flags = 0, criteria = Cv::TermCriteria.new( TermCriteria::COUNT + TermCriteria::EPS, 30, DBL_EPSILON))
            Rbind::cv_calibrate_camera(object_points, image_points, image_size, camera_matrix, dist_coeffs, rvecs, tvecs, flags, criteria)
        end

        # wrapper for void cv::calibrationMatrixValues(const cv::Mat cameraMatrix, const cv::Size imageSize, double apertureWidth, double apertureHeight, double fovx, double fovy, double focalLength, cv::Point2d principalPoint, double aspectRatio)
        def self.calibration_matrix_values(camera_matrix, image_size, aperture_width, aperture_height, fovx, fovy, focal_length, principal_point, aspect_ratio)
            Rbind::cv_calibration_matrix_values(camera_matrix, image_size, aperture_width, aperture_height, fovx, fovy, focal_length, principal_point, aspect_ratio)
        end

        # wrapper for double cv::stereoCalibrate(const vector_Mat objectPoints, const vector_Mat imagePoints1, const vector_Mat imagePoints2, cv::Mat cameraMatrix1, cv::Mat distCoeffs1, cv::Mat cameraMatrix2, cv::Mat distCoeffs2, const cv::Size imageSize, cv::Mat R, cv::Mat T, cv::Mat E, cv::Mat F, const cv::TermCriteria criteria=TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6), int flags=CALIB_FIX_INTRINSIC)
        def self.stereo_calibrate(object_points, _image_points1, _image_points2, _camera_matrix1, _dist_coeffs1, _camera_matrix2, _dist_coeffs2, image_size, r, t, e, f, criteria = Cv::TermCriteria.new(TermCriteria::COUNT+TermCriteria::EPS, 30, 1e-6), flags = CALIB_FIX_INTRINSIC)
            Rbind::cv_stereo_calibrate(object_points, _image_points1, _image_points2, _camera_matrix1, _dist_coeffs1, _camera_matrix2, _dist_coeffs2, image_size, r, t, e, f, criteria, flags)
        end

        # wrapper for void cv::stereoRectify(const cv::Mat cameraMatrix1, const cv::Mat distCoeffs1, const cv::Mat cameraMatrix2, const cv::Mat distCoeffs2, const cv::Size imageSize, const cv::Mat R, const cv::Mat T, cv::Mat R1, cv::Mat R2, cv::Mat P1, cv::Mat P2, cv::Mat Q, int flags=CALIB_ZERO_DISPARITY, double alpha=-1, const cv::Size newImageSize=Size(), cv::Rect *validPixROI1=0, cv::Rect *validPixROI2=0)
        def self.stereo_rectify(_camera_matrix1, _dist_coeffs1, _camera_matrix2, _dist_coeffs2, image_size, r, t, _r1, _r2, _p1, _p2, q, flags = CALIB_ZERO_DISPARITY, alpha = -1, new_image_size = Cv::Size.new(), _valid_pix_r_o_i1 = 0, _valid_pix_r_o_i2 = 0)
            Rbind::cv_stereo_rectify(_camera_matrix1, _dist_coeffs1, _camera_matrix2, _dist_coeffs2, image_size, r, t, _r1, _r2, _p1, _p2, q, flags, alpha, new_image_size, _valid_pix_r_o_i1, _valid_pix_r_o_i2)
        end

        # wrapper for bool cv::stereoRectifyUncalibrated(const cv::Mat points1, const cv::Mat points2, const cv::Mat F, const cv::Size imgSize, cv::Mat H1, cv::Mat H2, double threshold=5)
        def self.stereo_rectify_uncalibrated(_points1, _points2, f, img_size, _h1, _h2, threshold = 5)
            Rbind::cv_stereo_rectify_uncalibrated(_points1, _points2, f, img_size, _h1, _h2, threshold)
        end

        # wrapper for float cv::rectify3Collinear(const cv::Mat cameraMatrix1, const cv::Mat distCoeffs1, const cv::Mat cameraMatrix2, const cv::Mat distCoeffs2, const cv::Mat cameraMatrix3, const cv::Mat distCoeffs3, const vector_Mat imgpt1, const vector_Mat imgpt3, const cv::Size imageSize, const cv::Mat R12, const cv::Mat T12, const cv::Mat R13, const cv::Mat T13, cv::Mat R1, cv::Mat R2, cv::Mat R3, cv::Mat P1, cv::Mat P2, cv::Mat P3, cv::Mat Q, double alpha, const cv::Size newImgSize, cv::Rect *roi1, cv::Rect *roi2, int flags)
        def self.rectify3_collinear(_camera_matrix1, _dist_coeffs1, _camera_matrix2, _dist_coeffs2, _camera_matrix3, _dist_coeffs3, _imgpt1, _imgpt3, image_size, _r12, _t12, _r13, _t13, _r1, _r2, _r3, _p1, _p2, _p3, q, alpha, new_img_size, _roi1, _roi2, flags)
            Rbind::cv_rectify3_collinear(_camera_matrix1, _dist_coeffs1, _camera_matrix2, _dist_coeffs2, _camera_matrix3, _dist_coeffs3, _imgpt1, _imgpt3, image_size, _r12, _t12, _r13, _t13, _r1, _r2, _r3, _p1, _p2, _p3, q, alpha, new_img_size, _roi1, _roi2, flags)
        end

        # wrapper for cv::Mat cv::getOptimalNewCameraMatrix(const cv::Mat cameraMatrix, const cv::Mat distCoeffs, const cv::Size imageSize, double alpha, const cv::Size newImgSize=Size(), cv::Rect *validPixROI=0, bool centerPrincipalPoint=false)
        def self.get_optimal_new_camera_matrix(camera_matrix, dist_coeffs, image_size, alpha, new_img_size = Cv::Size.new(), valid_pix_r_o_i = 0, center_principal_point = false)
            Rbind::cv_get_optimal_new_camera_matrix(camera_matrix, dist_coeffs, image_size, alpha, new_img_size, valid_pix_r_o_i, center_principal_point)
        end

        # wrapper for void cv::convertPointsToHomogeneous(const cv::Mat src, cv::Mat dst)
        def self.convert_points_to_homogeneous(src, dst)
            Rbind::cv_convert_points_to_homogeneous(src, dst)
        end

        # wrapper for void cv::convertPointsFromHomogeneous(const cv::Mat src, cv::Mat dst)
        def self.convert_points_from_homogeneous(src, dst)
            Rbind::cv_convert_points_from_homogeneous(src, dst)
        end

        # wrapper for cv::Mat cv::findFundamentalMat(const cv::Mat points1, const cv::Mat points2, int method=FM_RANSAC, double param1=3., double param2=0.99, cv::Mat mask=Mat())
        def self.find_fundamental_mat(_points1, _points2, method = FM_RANSAC, _param1 = 3.0, _param2 = 0.99, mask = Cv::Mat.new())
            Rbind::cv_find_fundamental_mat(_points1, _points2, method, _param1, _param2, mask)
        end

        # wrapper for void cv::triangulatePoints(const cv::Mat projMatr1, const cv::Mat projMatr2, const cv::Mat projPoints1, const cv::Mat projPoints2, cv::Mat points4D)
        def self.triangulate_points(_proj_matr1, _proj_matr2, _proj_points1, _proj_points2, _points4_d)
            Rbind::cv_triangulate_points(_proj_matr1, _proj_matr2, _proj_points1, _proj_points2, _points4_d)
        end

        # wrapper for void cv::correctMatches(const cv::Mat F, const cv::Mat points1, const cv::Mat points2, cv::Mat newPoints1, cv::Mat newPoints2)
        def self.correct_matches(f, _points1, _points2, _new_points1, _new_points2)
            Rbind::cv_correct_matches(f, _points1, _points2, _new_points1, _new_points2)
        end

        # wrapper for void cv::filterSpeckles(cv::Mat img, double newVal, int maxSpeckleSize, double maxDiff, cv::Mat buf=Mat())
        def self.filter_speckles(img, new_val, max_speckle_size, max_diff, buf = Cv::Mat.new())
            Rbind::cv_filter_speckles(img, new_val, max_speckle_size, max_diff, buf)
        end

        # wrapper for cv::Rect cv::getValidDisparityROI(const cv::Rect roi1, const cv::Rect roi2, int minDisparity, int numberOfDisparities, int SADWindowSize)
        def self.get_valid_disparityroi(_roi1, _roi2, min_disparity, number_of_disparities, s_a_d_window_size)
            Rbind::cv_get_valid_disparityroi(_roi1, _roi2, min_disparity, number_of_disparities, s_a_d_window_size)
        end

        # wrapper for void cv::validateDisparity(cv::Mat disparity, const cv::Mat cost, int minDisparity, int numberOfDisparities, int disp12MaxDisp=1)
        def self.validate_disparity(disparity, cost, min_disparity, number_of_disparities, _disp12_max_disp = 1)
            Rbind::cv_validate_disparity(disparity, cost, min_disparity, number_of_disparities, _disp12_max_disp)
        end

        # wrapper for void cv::reprojectImageTo3D(const cv::Mat disparity, cv::Mat _3dImage, const cv::Mat Q, bool handleMissingValues=false, int ddepth=-1)
        def self.reproject_image_to3d(disparity, __3d_image, q, handle_missing_values = false, ddepth = -1)
            Rbind::cv_reproject_image_to3d(disparity, __3d_image, q, handle_missing_values, ddepth)
        end

        # wrapper for int cv::estimateAffine3D(const cv::Mat src, const cv::Mat dst, cv::Mat out, cv::Mat inliers, double ransacThreshold=3, double confidence=0.99)
        def self.estimate_affine3d(src, dst, out, inliers, ransac_threshold = 3, confidence = 0.99)
            Rbind::cv_estimate_affine3d(src, dst, out, inliers, ransac_threshold, confidence)
        end

        # wrapper for Ptr_StereoBM cv::createStereoBM(int numDisparities=0, int blockSize=21)
        def self.create_stereobm(num_disparities = 0, block_size = 21)
            Rbind::cv_create_stereobm(num_disparities, block_size)
        end

        # wrapper for Ptr_StereoSGBM cv::createStereoSGBM(int minDisparity, int numDisparities, int blockSize, int P1=0, int P2=0, int disp12MaxDiff=0, int preFilterCap=0, int uniquenessRatio=0, int speckleWindowSize=0, int speckleRange=0, int mode=StereoSGBM::MODE_SGBM)
        def self.create_stereosgbm(min_disparity, num_disparities, block_size, _p1 = 0, _p2 = 0, _disp12_max_diff = 0, pre_filter_cap = 0, uniqueness_ratio = 0, speckle_window_size = 0, speckle_range = 0, mode = StereoSGBM::MODE_SGBM)
            Rbind::cv_create_stereosgbm(min_disparity, num_disparities, block_size, _p1, _p2, _disp12_max_diff, pre_filter_cap, uniqueness_ratio, speckle_window_size, speckle_range, mode)
        end

        # wrapper for void cv::drawKeypoints(const cv::Mat image, const vector_KeyPoint keypoints, cv::Mat outImage, const cv::Scalar color=Scalar::all(-1), int flags=DrawMatchesFlags::DEFAULT)
        def self.draw_keypoints(image, keypoints, out_image, color = Cv::Scalar::all(-1), flags = DrawMatchesFlags::DEFAULT)
            Rbind::cv_draw_keypoints(image, keypoints, out_image, color, flags)
        end

        # wrapper for void cv::namedWindow(const cv::String winname, int flags=WINDOW_AUTOSIZE)
        def self.named_window(winname, flags = WINDOW_AUTOSIZE)
            Rbind::cv_named_window(winname, flags)
        end

        # wrapper for void cv::destroyWindow(const cv::String winname)
        def self.destroy_window(winname)
            Rbind::cv_destroy_window(winname)
        end

        # wrapper for void cv::destroyAllWindows()
        def self.destroy_all_windows()
            Rbind::cv_destroy_all_windows()
        end

        # wrapper for int cv::startWindowThread()
        def self.start_window_thread()
            Rbind::cv_start_window_thread()
        end

        # wrapper for int cv::waitKey(int delay=0)
        def self.wait_key(delay = 0)
            Rbind::cv_wait_key(delay)
        end

        # wrapper for void cv::imshow(const cv::String winname, const cv::Mat mat)
        def self.imshow(winname, mat)
            Rbind::cv_imshow(winname, mat)
        end

        # wrapper for void cv::resizeWindow(const cv::String winname, int width, int height)
        def self.resize_window(winname, width, height)
            Rbind::cv_resize_window(winname, width, height)
        end

        # wrapper for void cv::moveWindow(const cv::String winname, int x, int y)
        def self.move_window(winname, x, y)
            Rbind::cv_move_window(winname, x, y)
        end

        # wrapper for void cv::setWindowProperty(const cv::String winname, int prop_id, double prop_value)
        def self.set_window_property(winname, prop_id, prop_value)
            Rbind::cv_set_window_property(winname, prop_id, prop_value)
        end

        # wrapper for double cv::getWindowProperty(const cv::String winname, int prop_id)
        def self.get_window_property(winname, prop_id)
            Rbind::cv_get_window_property(winname, prop_id)
        end

        # wrapper for int cv::getTrackbarPos(const cv::String trackbarname, const cv::String winname)
        def self.get_trackbar_pos(trackbarname, winname)
            Rbind::cv_get_trackbar_pos(trackbarname, winname)
        end

        # wrapper for void cv::setTrackbarPos(const cv::String trackbarname, const cv::String winname, int pos)
        def self.set_trackbar_pos(trackbarname, winname, pos)
            Rbind::cv_set_trackbar_pos(trackbarname, winname, pos)
        end

        # wrapper for cv::Mat cv::imread(const cv::String filename, int flags=IMREAD_COLOR)
        def self.imread(filename, flags = IMREAD_COLOR)
            Rbind::cv_imread(filename, flags)
        end

        # wrapper for bool cv::imwrite(const cv::String filename, const cv::Mat img, const vector_int params=vector_int())
        def self.imwrite(filename, img, params = VectorInt.new())
            Rbind::cv_imwrite(filename, img, params)
        end

        # wrapper for cv::Mat cv::imdecode(const cv::Mat buf, int flags)
        def self.imdecode(buf, flags)
            Rbind::cv_imdecode(buf, flags)
        end

        # wrapper for bool cv::imencode(const cv::String ext, const cv::Mat img, vector_uchar buf, const vector_int params=vector_int())
        def self.imencode(ext, img, buf, params = VectorInt.new())
            Rbind::cv_imencode(ext, img, buf, params)
        end

        # wrapper for cv::Mat cv::getGaussianKernel(int ksize, double sigma, int ktype=CV_64F)
        def self.get_gaussian_kernel(ksize, sigma, ktype = CV_64F)
            Rbind::cv_get_gaussian_kernel(ksize, sigma, ktype)
        end

        # wrapper for void cv::getDerivKernels(cv::Mat kx, cv::Mat ky, int dx, int dy, int ksize, bool normalize=false, int ktype=CV_32F)
        def self.get_deriv_kernels(kx, ky, dx, dy, ksize, normalize = false, ktype = CV_32F)
            Rbind::cv_get_deriv_kernels(kx, ky, dx, dy, ksize, normalize, ktype)
        end

        # wrapper for cv::Mat cv::getGaborKernel(const cv::Size ksize, double sigma, double theta, double lambd, double gamma, double psi=CV_PI*0.5, int ktype=CV_64F)
        def self.get_gabor_kernel(ksize, sigma, theta, lambd, gamma, psi = CV_PI*0.5, ktype = CV_64F)
            Rbind::cv_get_gabor_kernel(ksize, sigma, theta, lambd, gamma, psi, ktype)
        end

        # wrapper for cv::Mat cv::getStructuringElement(int shape, const cv::Size ksize, const cv::Point anchor=Point(-1,-1))
        def self.get_structuring_element(shape, ksize, anchor = Cv::Point.new(-1,-1))
            Rbind::cv_get_structuring_element(shape, ksize, anchor)
        end

        # wrapper for void cv::medianBlur(const cv::Mat src, cv::Mat dst, int ksize)
        def self.median_blur(src, dst, ksize)
            Rbind::cv_median_blur(src, dst, ksize)
        end

        # wrapper for void cv::GaussianBlur(const cv::Mat src, cv::Mat dst, const cv::Size ksize, double sigmaX, double sigmaY=0, int borderType=BORDER_DEFAULT)
        def self.gaussian_blur(src, dst, ksize, sigma_x, sigma_y = 0, border_type = BORDER_DEFAULT)
            Rbind::cv_gaussian_blur(src, dst, ksize, sigma_x, sigma_y, border_type)
        end

        # wrapper for void cv::bilateralFilter(const cv::Mat src, cv::Mat dst, int d, double sigmaColor, double sigmaSpace, int borderType=BORDER_DEFAULT)
        def self.bilateral_filter(src, dst, d, sigma_color, sigma_space, border_type = BORDER_DEFAULT)
            Rbind::cv_bilateral_filter(src, dst, d, sigma_color, sigma_space, border_type)
        end

        # wrapper for void cv::boxFilter(const cv::Mat src, cv::Mat dst, int ddepth, const cv::Size ksize, const cv::Point anchor=Point(-1,-1), bool normalize=true, int borderType=BORDER_DEFAULT)
        def self.box_filter(src, dst, ddepth, ksize, anchor = Cv::Point.new(-1,-1), normalize = true, border_type = BORDER_DEFAULT)
            Rbind::cv_box_filter(src, dst, ddepth, ksize, anchor, normalize, border_type)
        end

        # wrapper for void cv::blur(const cv::Mat src, cv::Mat dst, const cv::Size ksize, const cv::Point anchor=Point(-1,-1), int borderType=BORDER_DEFAULT)
        def self.blur(src, dst, ksize, anchor = Cv::Point.new(-1,-1), border_type = BORDER_DEFAULT)
            Rbind::cv_blur(src, dst, ksize, anchor, border_type)
        end

        # wrapper for void cv::filter2D(const cv::Mat src, cv::Mat dst, int ddepth, const cv::Mat kernel, const cv::Point anchor=Point(-1,-1), double delta=0, int borderType=BORDER_DEFAULT)
        def self.filter2d(src, dst, ddepth, kernel, anchor = Cv::Point.new(-1,-1), delta = 0, border_type = BORDER_DEFAULT)
            Rbind::cv_filter2d(src, dst, ddepth, kernel, anchor, delta, border_type)
        end

        # wrapper for void cv::sepFilter2D(const cv::Mat src, cv::Mat dst, int ddepth, const cv::Mat kernelX, const cv::Mat kernelY, const cv::Point anchor=Point(-1,-1), double delta=0, int borderType=BORDER_DEFAULT)
        def self.sep_filter2d(src, dst, ddepth, kernel_x, kernel_y, anchor = Cv::Point.new(-1,-1), delta = 0, border_type = BORDER_DEFAULT)
            Rbind::cv_sep_filter2d(src, dst, ddepth, kernel_x, kernel_y, anchor, delta, border_type)
        end

        # wrapper for void cv::Sobel(const cv::Mat src, cv::Mat dst, int ddepth, int dx, int dy, int ksize=3, double scale=1, double delta=0, int borderType=BORDER_DEFAULT)
        def self.sobel(src, dst, ddepth, dx, dy, ksize = 3, scale = 1, delta = 0, border_type = BORDER_DEFAULT)
            Rbind::cv_sobel(src, dst, ddepth, dx, dy, ksize, scale, delta, border_type)
        end

        # wrapper for void cv::Scharr(const cv::Mat src, cv::Mat dst, int ddepth, int dx, int dy, double scale=1, double delta=0, int borderType=BORDER_DEFAULT)
        def self.scharr(src, dst, ddepth, dx, dy, scale = 1, delta = 0, border_type = BORDER_DEFAULT)
            Rbind::cv_scharr(src, dst, ddepth, dx, dy, scale, delta, border_type)
        end

        # wrapper for void cv::Laplacian(const cv::Mat src, cv::Mat dst, int ddepth, int ksize=1, double scale=1, double delta=0, int borderType=BORDER_DEFAULT)
        def self.laplacian(src, dst, ddepth, ksize = 1, scale = 1, delta = 0, border_type = BORDER_DEFAULT)
            Rbind::cv_laplacian(src, dst, ddepth, ksize, scale, delta, border_type)
        end

        # wrapper for void cv::Canny(const cv::Mat image, cv::Mat edges, double threshold1, double threshold2, int apertureSize=3, bool L2gradient=false)
        def self.canny(image, edges, _threshold1, _threshold2, aperture_size = 3, _l2gradient = false)
            Rbind::cv_canny(image, edges, _threshold1, _threshold2, aperture_size, _l2gradient)
        end

        # wrapper for void cv::cornerMinEigenVal(const cv::Mat src, cv::Mat dst, int blockSize, int ksize=3, int borderType=BORDER_DEFAULT)
        def self.corner_min_eigen_val(src, dst, block_size, ksize = 3, border_type = BORDER_DEFAULT)
            Rbind::cv_corner_min_eigen_val(src, dst, block_size, ksize, border_type)
        end

        # wrapper for void cv::cornerHarris(const cv::Mat src, cv::Mat dst, int blockSize, int ksize, double k, int borderType=BORDER_DEFAULT)
        def self.corner_harris(src, dst, block_size, ksize, k, border_type = BORDER_DEFAULT)
            Rbind::cv_corner_harris(src, dst, block_size, ksize, k, border_type)
        end

        # wrapper for void cv::cornerEigenValsAndVecs(const cv::Mat src, cv::Mat dst, int blockSize, int ksize, int borderType=BORDER_DEFAULT)
        def self.corner_eigen_vals_and_vecs(src, dst, block_size, ksize, border_type = BORDER_DEFAULT)
            Rbind::cv_corner_eigen_vals_and_vecs(src, dst, block_size, ksize, border_type)
        end

        # wrapper for void cv::preCornerDetect(const cv::Mat src, cv::Mat dst, int ksize, int borderType=BORDER_DEFAULT)
        def self.pre_corner_detect(src, dst, ksize, border_type = BORDER_DEFAULT)
            Rbind::cv_pre_corner_detect(src, dst, ksize, border_type)
        end

        # wrapper for void cv::cornerSubPix(const cv::Mat image, cv::Mat corners, const cv::Size winSize, const cv::Size zeroZone, const cv::TermCriteria criteria)
        def self.corner_sub_pix(image, corners, win_size, zero_zone, criteria)
            Rbind::cv_corner_sub_pix(image, corners, win_size, zero_zone, criteria)
        end

        # wrapper for void cv::goodFeaturesToTrack(const cv::Mat image, cv::Mat corners, int maxCorners, double qualityLevel, double minDistance, const cv::Mat mask=Mat(), int blockSize=3, bool useHarrisDetector=false, double k=0.04)
        def self.good_features_to_track(image, corners, max_corners, quality_level, min_distance, mask = Cv::Mat.new(), block_size = 3, use_harris_detector = false, k = 0.04)
            Rbind::cv_good_features_to_track(image, corners, max_corners, quality_level, min_distance, mask, block_size, use_harris_detector, k)
        end

        # wrapper for void cv::HoughLines(const cv::Mat image, cv::Mat lines, double rho, double theta, int threshold, double srn=0, double stn=0)
        def self.hough_lines(image, lines, rho, theta, threshold, srn = 0, stn = 0)
            Rbind::cv_hough_lines(image, lines, rho, theta, threshold, srn, stn)
        end

        # wrapper for void cv::HoughLinesP(const cv::Mat image, cv::Mat lines, double rho, double theta, int threshold, double minLineLength=0, double maxLineGap=0)
        def self.hough_linesp(image, lines, rho, theta, threshold, min_line_length = 0, max_line_gap = 0)
            Rbind::cv_hough_linesp(image, lines, rho, theta, threshold, min_line_length, max_line_gap)
        end

        # wrapper for void cv::HoughCircles(const cv::Mat image, cv::Mat circles, int method, double dp, double minDist, double param1=100, double param2=100, int minRadius=0, int maxRadius=0)
        def self.hough_circles(image, circles, method, dp, min_dist, _param1 = 100, _param2 = 100, min_radius = 0, max_radius = 0)
            Rbind::cv_hough_circles(image, circles, method, dp, min_dist, _param1, _param2, min_radius, max_radius)
        end

        # wrapper for void cv::erode(const cv::Mat src, cv::Mat dst, const cv::Mat kernel, const cv::Point anchor=Point(-1,-1), int iterations=1, int borderType=BORDER_CONSTANT, const cv::Scalar borderValue=morphologyDefaultBorderValue())
        def self.erode(src, dst, kernel, anchor = Cv::Point.new(-1,-1), iterations = 1, border_type = BORDER_CONSTANT, border_value = morphology_default_border_value())
            Rbind::cv_erode(src, dst, kernel, anchor, iterations, border_type, border_value)
        end

        # wrapper for void cv::dilate(const cv::Mat src, cv::Mat dst, const cv::Mat kernel, const cv::Point anchor=Point(-1,-1), int iterations=1, int borderType=BORDER_CONSTANT, const cv::Scalar borderValue=morphologyDefaultBorderValue())
        def self.dilate(src, dst, kernel, anchor = Cv::Point.new(-1,-1), iterations = 1, border_type = BORDER_CONSTANT, border_value = morphology_default_border_value())
            Rbind::cv_dilate(src, dst, kernel, anchor, iterations, border_type, border_value)
        end

        # wrapper for void cv::morphologyEx(const cv::Mat src, cv::Mat dst, int op, const cv::Mat kernel, const cv::Point anchor=Point(-1,-1), int iterations=1, int borderType=BORDER_CONSTANT, const cv::Scalar borderValue=morphologyDefaultBorderValue())
        def self.morphology_ex(src, dst, op, kernel, anchor = Cv::Point.new(-1,-1), iterations = 1, border_type = BORDER_CONSTANT, border_value = morphology_default_border_value())
            Rbind::cv_morphology_ex(src, dst, op, kernel, anchor, iterations, border_type, border_value)
        end

        # wrapper for void cv::resize(const cv::Mat src, cv::Mat dst, const cv::Size dsize, double fx=0, double fy=0, int interpolation=INTER_LINEAR)
        def self.resize(src, dst, dsize, fx = 0, fy = 0, interpolation = INTER_LINEAR)
            Rbind::cv_resize(src, dst, dsize, fx, fy, interpolation)
        end

        # wrapper for void cv::warpAffine(const cv::Mat src, cv::Mat dst, const cv::Mat M, const cv::Size dsize, int flags=INTER_LINEAR, int borderMode=BORDER_CONSTANT, const cv::Scalar borderValue=Scalar())
        def self.warp_affine(src, dst, m, dsize, flags = INTER_LINEAR, border_mode = BORDER_CONSTANT, border_value = Cv::Scalar.new())
            Rbind::cv_warp_affine(src, dst, m, dsize, flags, border_mode, border_value)
        end

        # wrapper for void cv::warpPerspective(const cv::Mat src, cv::Mat dst, const cv::Mat M, const cv::Size dsize, int flags=INTER_LINEAR, int borderMode=BORDER_CONSTANT, const cv::Scalar borderValue=Scalar())
        def self.warp_perspective(src, dst, m, dsize, flags = INTER_LINEAR, border_mode = BORDER_CONSTANT, border_value = Cv::Scalar.new())
            Rbind::cv_warp_perspective(src, dst, m, dsize, flags, border_mode, border_value)
        end

        # wrapper for void cv::remap(const cv::Mat src, cv::Mat dst, const cv::Mat map1, const cv::Mat map2, int interpolation, int borderMode=BORDER_CONSTANT, const cv::Scalar borderValue=Scalar())
        def self.remap(src, dst, _map1, _map2, interpolation, border_mode = BORDER_CONSTANT, border_value = Cv::Scalar.new())
            Rbind::cv_remap(src, dst, _map1, _map2, interpolation, border_mode, border_value)
        end

        # wrapper for void cv::convertMaps(const cv::Mat map1, const cv::Mat map2, cv::Mat dstmap1, cv::Mat dstmap2, int dstmap1type, bool nninterpolation=false)
        def self.convert_maps(_map1, _map2, _dstmap1, _dstmap2, _dstmap1type, nninterpolation = false)
            Rbind::cv_convert_maps(_map1, _map2, _dstmap1, _dstmap2, _dstmap1type, nninterpolation)
        end

        # wrapper for cv::Mat cv::getRotationMatrix2D(const cv::Point2f center, double angle, double scale)
        def self.get_rotation_matrix2d(center, angle, scale)
            Rbind::cv_get_rotation_matrix2d(center, angle, scale)
        end

        # wrapper for void cv::invertAffineTransform(const cv::Mat M, cv::Mat iM)
        def self.invert_affine_transform(m, i_m)
            Rbind::cv_invert_affine_transform(m, i_m)
        end

        # wrapper for cv::Mat cv::getPerspectiveTransform(const cv::Mat src, const cv::Mat dst)
        def self.get_perspective_transform(src, dst)
            Rbind::cv_get_perspective_transform(src, dst)
        end

        # wrapper for cv::Mat cv::getAffineTransform(const cv::Mat src, const cv::Mat dst)
        def self.get_affine_transform(src, dst)
            Rbind::cv_get_affine_transform(src, dst)
        end

        # wrapper for void cv::getRectSubPix(const cv::Mat image, const cv::Size patchSize, const cv::Point2f center, cv::Mat patch, int patchType=-1)
        def self.get_rect_sub_pix(image, patch_size, center, patch, patch_type = -1)
            Rbind::cv_get_rect_sub_pix(image, patch_size, center, patch, patch_type)
        end

        # wrapper for void cv::integral(const cv::Mat src, cv::Mat sum, int sdepth=-1)
        def self.integral(src, sum, sdepth = -1)
            Rbind::cv_integral(src, sum, sdepth)
        end

        # wrapper for void cv::integral(const cv::Mat src, cv::Mat sum, cv::Mat sqsum, int sdepth=-1)
        def self.integral2(src, sum, sqsum, sdepth = -1)
            Rbind::cv_integral2(src, sum, sqsum, sdepth)
        end

        # wrapper for void cv::integral(const cv::Mat src, cv::Mat sum, cv::Mat sqsum, cv::Mat tilted, int sdepth=-1)
        def self.integral3(src, sum, sqsum, tilted, sdepth = -1)
            Rbind::cv_integral3(src, sum, sqsum, tilted, sdepth)
        end

        # wrapper for void cv::accumulate(const cv::Mat src, cv::Mat dst, const cv::Mat mask=Mat())
        def self.accumulate(src, dst, mask = Cv::Mat.new())
            Rbind::cv_accumulate(src, dst, mask)
        end

        # wrapper for void cv::accumulateSquare(const cv::Mat src, cv::Mat dst, const cv::Mat mask=Mat())
        def self.accumulate_square(src, dst, mask = Cv::Mat.new())
            Rbind::cv_accumulate_square(src, dst, mask)
        end

        # wrapper for void cv::accumulateProduct(const cv::Mat src1, const cv::Mat src2, cv::Mat dst, const cv::Mat mask=Mat())
        def self.accumulate_product(_src1, _src2, dst, mask = Cv::Mat.new())
            Rbind::cv_accumulate_product(_src1, _src2, dst, mask)
        end

        # wrapper for void cv::accumulateWeighted(const cv::Mat src, cv::Mat dst, double alpha, const cv::Mat mask=Mat())
        def self.accumulate_weighted(src, dst, alpha, mask = Cv::Mat.new())
            Rbind::cv_accumulate_weighted(src, dst, alpha, mask)
        end

        # wrapper for cv::Point2d cv::phaseCorrelate(const cv::Mat src1, const cv::Mat src2, const cv::Mat window=Mat(), double *response=0)
        def self.phase_correlate(_src1, _src2, window = Cv::Mat.new(), response = 0)
            Rbind::cv_phase_correlate(_src1, _src2, window, response)
        end

        # wrapper for void cv::createHanningWindow(cv::Mat dst, const cv::Size winSize, int type)
        def self.create_hanning_window(dst, win_size, type)
            Rbind::cv_create_hanning_window(dst, win_size, type)
        end

        # wrapper for double cv::threshold(const cv::Mat src, cv::Mat dst, double thresh, double maxval, int type)
        def self.threshold(src, dst, thresh, maxval, type)
            Rbind::cv_threshold(src, dst, thresh, maxval, type)
        end

        # wrapper for void cv::adaptiveThreshold(const cv::Mat src, cv::Mat dst, double maxValue, int adaptiveMethod, int thresholdType, int blockSize, double C)
        def self.adaptive_threshold(src, dst, max_value, adaptive_method, threshold_type, block_size, c)
            Rbind::cv_adaptive_threshold(src, dst, max_value, adaptive_method, threshold_type, block_size, c)
        end

        # wrapper for void cv::pyrDown(const cv::Mat src, cv::Mat dst, const cv::Size dstsize=Size(), int borderType=BORDER_DEFAULT)
        def self.pyr_down(src, dst, dstsize = Cv::Size.new(), border_type = BORDER_DEFAULT)
            Rbind::cv_pyr_down(src, dst, dstsize, border_type)
        end

        # wrapper for void cv::pyrUp(const cv::Mat src, cv::Mat dst, const cv::Size dstsize=Size(), int borderType=BORDER_DEFAULT)
        def self.pyr_up(src, dst, dstsize = Cv::Size.new(), border_type = BORDER_DEFAULT)
            Rbind::cv_pyr_up(src, dst, dstsize, border_type)
        end

        # wrapper for void cv::undistort(const cv::Mat src, cv::Mat dst, const cv::Mat cameraMatrix, const cv::Mat distCoeffs, const cv::Mat newCameraMatrix=Mat())
        def self.undistort(src, dst, camera_matrix, dist_coeffs, new_camera_matrix = Cv::Mat.new())
            Rbind::cv_undistort(src, dst, camera_matrix, dist_coeffs, new_camera_matrix)
        end

        # wrapper for void cv::initUndistortRectifyMap(const cv::Mat cameraMatrix, const cv::Mat distCoeffs, const cv::Mat R, const cv::Mat newCameraMatrix, const cv::Size size, int m1type, cv::Mat map1, cv::Mat map2)
        def self.init_undistort_rectify_map(camera_matrix, dist_coeffs, r, new_camera_matrix, size, _m1type, _map1, _map2)
            Rbind::cv_init_undistort_rectify_map(camera_matrix, dist_coeffs, r, new_camera_matrix, size, _m1type, _map1, _map2)
        end

        # wrapper for float cv::initWideAngleProjMap(const cv::Mat cameraMatrix, const cv::Mat distCoeffs, const cv::Size imageSize, int destImageWidth, int m1type, cv::Mat map1, cv::Mat map2, int projType=PROJ_SPHERICAL_EQRECT, double alpha=0)
        def self.init_wide_angle_proj_map(camera_matrix, dist_coeffs, image_size, dest_image_width, _m1type, _map1, _map2, proj_type = PROJ_SPHERICAL_EQRECT, alpha = 0)
            Rbind::cv_init_wide_angle_proj_map(camera_matrix, dist_coeffs, image_size, dest_image_width, _m1type, _map1, _map2, proj_type, alpha)
        end

        # wrapper for cv::Mat cv::getDefaultNewCameraMatrix(const cv::Mat cameraMatrix, const cv::Size imgsize=Size(), bool centerPrincipalPoint=false)
        def self.get_default_new_camera_matrix(camera_matrix, imgsize = Cv::Size.new(), center_principal_point = false)
            Rbind::cv_get_default_new_camera_matrix(camera_matrix, imgsize, center_principal_point)
        end

        # wrapper for void cv::undistortPoints(const cv::Mat src, cv::Mat dst, const cv::Mat cameraMatrix, const cv::Mat distCoeffs, const cv::Mat R=Mat(), const cv::Mat P=Mat())
        def self.undistort_points(src, dst, camera_matrix, dist_coeffs, r = Cv::Mat.new(), p = Cv::Mat.new())
            Rbind::cv_undistort_points(src, dst, camera_matrix, dist_coeffs, r, p)
        end

        # wrapper for void cv::calcHist(const vector_Mat images, const vector_int channels, const cv::Mat mask, cv::Mat hist, const vector_int histSize, const vector_float ranges, bool accumulate=false)
        def self.calc_hist(images, channels, mask, hist, hist_size, ranges, accumulate = false)
            Rbind::cv_calc_hist(images, channels, mask, hist, hist_size, ranges, accumulate)
        end

        # wrapper for void cv::calcBackProject(const vector_Mat images, const vector_int channels, const cv::Mat hist, cv::Mat dst, const vector_float ranges, double scale)
        def self.calc_back_project(images, channels, hist, dst, ranges, scale)
            Rbind::cv_calc_back_project(images, channels, hist, dst, ranges, scale)
        end

        # wrapper for double cv::compareHist(const cv::Mat H1, const cv::Mat H2, int method)
        def self.compare_hist(_h1, _h2, method)
            Rbind::cv_compare_hist(_h1, _h2, method)
        end

        # wrapper for void cv::equalizeHist(const cv::Mat src, cv::Mat dst)
        def self.equalize_hist(src, dst)
            Rbind::cv_equalize_hist(src, dst)
        end

        # wrapper for void cv::watershed(const cv::Mat image, cv::Mat markers)
        def self.watershed(image, markers)
            Rbind::cv_watershed(image, markers)
        end

        # wrapper for void cv::pyrMeanShiftFiltering(const cv::Mat src, cv::Mat dst, double sp, double sr, int maxLevel=1, const cv::TermCriteria termcrit=TermCriteria(TermCriteria::MAX_ITER+TermCriteria::EPS,5,1))
        def self.pyr_mean_shift_filtering(src, dst, sp, sr, max_level = 1, termcrit = Cv::TermCriteria.new(TermCriteria::MAX_ITER+TermCriteria::EPS,5,1))
            Rbind::cv_pyr_mean_shift_filtering(src, dst, sp, sr, max_level, termcrit)
        end

        # wrapper for void cv::grabCut(const cv::Mat img, cv::Mat mask, const cv::Rect rect, cv::Mat bgdModel, cv::Mat fgdModel, int iterCount, int mode=GC_EVAL)
        def self.grab_cut(img, mask, rect, bgd_model, fgd_model, iter_count, mode = GC_EVAL)
            Rbind::cv_grab_cut(img, mask, rect, bgd_model, fgd_model, iter_count, mode)
        end

        # wrapper for void cv::distanceTransform(const cv::Mat src, cv::Mat dst, cv::Mat labels, int distanceType, int maskSize, int labelType=DIST_LABEL_CCOMP)
        def self.distance_transform_with_labels(src, dst, labels, distance_type, mask_size, label_type = DIST_LABEL_CCOMP)
            Rbind::cv_distance_transform_with_labels(src, dst, labels, distance_type, mask_size, label_type)
        end

        # wrapper for void cv::distanceTransform(const cv::Mat src, cv::Mat dst, int distanceType, int maskSize)
        def self.distance_transform(src, dst, distance_type, mask_size)
            Rbind::cv_distance_transform(src, dst, distance_type, mask_size)
        end

        # wrapper for int cv::floodFill(cv::Mat image, cv::Mat mask, const cv::Point seedPoint, const cv::Scalar newVal, cv::Rect *rect=0, const cv::Scalar loDiff=Scalar(), const cv::Scalar upDiff=Scalar(), int flags=4)
        def self.flood_fill(image, mask, seed_point, new_val, rect = 0, lo_diff = Cv::Scalar.new(), up_diff = Cv::Scalar.new(), flags = 4)
            Rbind::cv_flood_fill(image, mask, seed_point, new_val, rect, lo_diff, up_diff, flags)
        end

        # wrapper for void cv::cvtColor(const cv::Mat src, cv::Mat dst, int code, int dstCn=0)
        def self.cvt_color(src, dst, code, dst_cn = 0)
            Rbind::cv_cvt_color(src, dst, code, dst_cn)
        end

        # wrapper for void cv::demosaicing(const cv::Mat _src, cv::Mat _dst, int code, int dcn=0)
        def self.demosaicing(_src, _dst, code, dcn = 0)
            Rbind::cv_demosaicing(_src, _dst, code, dcn)
        end

        # wrapper for cv::Moments cv::moments(const cv::Mat array, bool binaryImage=false)
        def self.moments(array, binary_image = false)
            Rbind::cv_moments(array, binary_image)
        end

        # wrapper for void cv::HuMoments(const cv::Moments m, cv::Mat hu)
        def self.hu_moments(m, hu)
            Rbind::cv_hu_moments(m, hu)
        end

        # wrapper for void cv::matchTemplate(const cv::Mat image, const cv::Mat templ, cv::Mat result, int method)
        def self.match_template(image, templ, result, method)
            Rbind::cv_match_template(image, templ, result, method)
        end

        # wrapper for int cv::connectedComponents(const cv::Mat image, cv::Mat labels, int connectivity=8, int ltype=CV_32S)
        def self.connected_components(image, labels, connectivity = 8, ltype = CV_32S)
            Rbind::cv_connected_components(image, labels, connectivity, ltype)
        end

        # wrapper for int cv::connectedComponentsWithStats(const cv::Mat image, cv::Mat labels, cv::Mat stats, cv::Mat centroids, int connectivity=8, int ltype=CV_32S)
        def self.connected_components_with_stats(image, labels, stats, centroids, connectivity = 8, ltype = CV_32S)
            Rbind::cv_connected_components_with_stats(image, labels, stats, centroids, connectivity, ltype)
        end

        # wrapper for void cv::findContours(cv::Mat image, vector_Mat contours, cv::Mat hierarchy, int mode, int method, const cv::Point offset=Point())
        def self.find_contours(image, contours, hierarchy, mode, method, offset = Cv::Point.new())
            Rbind::cv_find_contours(image, contours, hierarchy, mode, method, offset)
        end

        # wrapper for void cv::approxPolyDP(const cv::Mat curve, cv::Mat approxCurve, double epsilon, bool closed)
        def self.approx_polydp(curve, approx_curve, epsilon, closed)
            Rbind::cv_approx_polydp(curve, approx_curve, epsilon, closed)
        end

        # wrapper for double cv::arcLength(const cv::Mat curve, bool closed)
        def self.arc_length(curve, closed)
            Rbind::cv_arc_length(curve, closed)
        end

        # wrapper for cv::Rect cv::boundingRect(const cv::Mat points)
        def self.bounding_rect(points)
            Rbind::cv_bounding_rect(points)
        end

        # wrapper for double cv::contourArea(const cv::Mat contour, bool oriented=false)
        def self.contour_area(contour, oriented = false)
            Rbind::cv_contour_area(contour, oriented)
        end

        # wrapper for cv::RotatedRect cv::minAreaRect(const cv::Mat points)
        def self.min_area_rect(points)
            Rbind::cv_min_area_rect(points)
        end

        # wrapper for void cv::minEnclosingCircle(const cv::Mat points, cv::Point2f center, float radius)
        def self.min_enclosing_circle(points, center, radius)
            Rbind::cv_min_enclosing_circle(points, center, radius)
        end

        # wrapper for double cv::matchShapes(const cv::Mat contour1, const cv::Mat contour2, int method, double parameter)
        def self.match_shapes(_contour1, _contour2, method, parameter)
            Rbind::cv_match_shapes(_contour1, _contour2, method, parameter)
        end

        # wrapper for void cv::convexHull(const cv::Mat points, cv::Mat hull, bool clockwise=false, bool returnPoints=true)
        def self.convex_hull(points, hull, clockwise = false, return_points = true)
            Rbind::cv_convex_hull(points, hull, clockwise, return_points)
        end

        # wrapper for void cv::convexityDefects(const cv::Mat contour, const cv::Mat convexhull, cv::Mat convexityDefects)
        def self.convexity_defects(contour, convexhull, convexity_defects)
            Rbind::cv_convexity_defects(contour, convexhull, convexity_defects)
        end

        # wrapper for bool cv::isContourConvex(const cv::Mat contour)
        def self.is_contour_convex(contour)
            Rbind::cv_is_contour_convex(contour)
        end

        # wrapper for float cv::intersectConvexConvex(const cv::Mat _p1, const cv::Mat _p2, cv::Mat _p12, bool handleNested=true)
        def self.intersect_convex_convex(__p1, __p2, __p12, handle_nested = true)
            Rbind::cv_intersect_convex_convex(__p1, __p2, __p12, handle_nested)
        end

        # wrapper for cv::RotatedRect cv::fitEllipse(const cv::Mat points)
        def self.fit_ellipse(points)
            Rbind::cv_fit_ellipse(points)
        end

        # wrapper for void cv::fitLine(const cv::Mat points, cv::Mat line, int distType, double param, double reps, double aeps)
        def self.fit_line(points, line, dist_type, param, reps, aeps)
            Rbind::cv_fit_line(points, line, dist_type, param, reps, aeps)
        end

        # wrapper for double cv::pointPolygonTest(const cv::Mat contour, const cv::Point2f pt, bool measureDist)
        def self.point_polygon_test(contour, pt, measure_dist)
            Rbind::cv_point_polygon_test(contour, pt, measure_dist)
        end

        # wrapper for void cv::groupRectangles(vector_Rect rectList, vector_int weights, int groupThreshold, double eps=0.2)
        def self.group_rectangles(rect_list, weights, group_threshold, eps = 0.2)
            Rbind::cv_group_rectangles(rect_list, weights, group_threshold, eps)
        end

        # wrapper for void cv::findDataMatrix(const cv::Mat image, vector_String codes, cv::Mat corners=Mat(), vector_Mat dmtx=vector_Mat())
        def self.find_data_matrix(image, codes, corners = Cv::Mat.new(), dmtx = VectorMat.new())
            Rbind::cv_find_data_matrix(image, codes, corners, dmtx)
        end

        # wrapper for void cv::drawDataMatrixCodes(cv::Mat image, const vector_String codes, const cv::Mat corners)
        def self.draw_data_matrix_codes(image, codes, corners)
            Rbind::cv_draw_data_matrix_codes(image, codes, corners)
        end

        # wrapper for void cv::inpaint(const cv::Mat src, const cv::Mat inpaintMask, cv::Mat dst, double inpaintRadius, int flags)
        def self.inpaint(src, inpaint_mask, dst, inpaint_radius, flags)
            Rbind::cv_inpaint(src, inpaint_mask, dst, inpaint_radius, flags)
        end

        # wrapper for void cv::fastNlMeansDenoising(const cv::Mat src, cv::Mat dst, float h=3, int templateWindowSize=7, int searchWindowSize=21)
        def self.fast_nl_means_denoising(src, dst, h = 3, template_window_size = 7, search_window_size = 21)
            Rbind::cv_fast_nl_means_denoising(src, dst, h, template_window_size, search_window_size)
        end

        # wrapper for void cv::fastNlMeansDenoisingColored(const cv::Mat src, cv::Mat dst, float h=3, float hColor=3, int templateWindowSize=7, int searchWindowSize=21)
        def self.fast_nl_means_denoising_colored(src, dst, h = 3, h_color = 3, template_window_size = 7, search_window_size = 21)
            Rbind::cv_fast_nl_means_denoising_colored(src, dst, h, h_color, template_window_size, search_window_size)
        end

        # wrapper for void cv::fastNlMeansDenoisingMulti(const vector_Mat srcImgs, cv::Mat dst, int imgToDenoiseIndex, int temporalWindowSize, float h=3, int templateWindowSize=7, int searchWindowSize=21)
        def self.fast_nl_means_denoising_multi(src_imgs, dst, img_to_denoise_index, temporal_window_size, h = 3, template_window_size = 7, search_window_size = 21)
            Rbind::cv_fast_nl_means_denoising_multi(src_imgs, dst, img_to_denoise_index, temporal_window_size, h, template_window_size, search_window_size)
        end

        # wrapper for void cv::fastNlMeansDenoisingColoredMulti(const vector_Mat srcImgs, cv::Mat dst, int imgToDenoiseIndex, int temporalWindowSize, float h=3, float hColor=3, int templateWindowSize=7, int searchWindowSize=21)
        def self.fast_nl_means_denoising_colored_multi(src_imgs, dst, img_to_denoise_index, temporal_window_size, h = 3, h_color = 3, template_window_size = 7, search_window_size = 21)
            Rbind::cv_fast_nl_means_denoising_colored_multi(src_imgs, dst, img_to_denoise_index, temporal_window_size, h, h_color, template_window_size, search_window_size)
        end

        # wrapper for void cv::drawMatches(const cv::Mat img1, const vector_KeyPoint keypoints1, const cv::Mat img2, const vector_KeyPoint keypoints2, const vector_DMatch matches1to2, cv::Mat outImg, const cv::Scalar matchColor=Scalar::all(-1), const cv::Scalar singlePointColor=Scalar::all(-1), const vector_char matchesMask=vector_char(), int flags=DrawMatchesFlags::DEFAULT)
        def self.draw_matches(_img1, _keypoints1, _img2, _keypoints2, _matches1to2, out_img, match_color = Cv::Scalar::all(-1), single_point_color = Cv::Scalar::all(-1), matches_mask = VectorChar.new(), flags = DrawMatchesFlags::DEFAULT)
            Rbind::cv_draw_matches(_img1, _keypoints1, _img2, _keypoints2, _matches1to2, out_img, match_color, single_point_color, matches_mask, flags)
        end

        # wrapper for cv::Scalar cv::morphologyDefaultBorderValue()
        def self.morphology_default_border_value()
            Rbind::cv_morphology_default_border_value()
        end

        # wrapper for cv::Mat cv::findEssentialMat(const cv::Mat points1, const cv::Mat points2, double focal=1.0, const cv::Point2d pp=Point2d(0, 0), int method=RANSAC, double prob=0.999, double threshold=1.0, cv::Mat mask=Mat()/O;)
        def self.find_essential_mat(_points1, _points2, focal = 1.0, pp = Cv::Point2d.new(0, 0), method = RANSAC, prob = 0.999, threshold = 1.0, mask = Cv::Mat.new())
            Rbind::cv_find_essential_mat(_points1, _points2, focal, pp, method, prob, threshold, mask)
        end

        # wrapper for int cv::recoverPose(const cv::Mat E, const cv::Mat points1, const cv::Mat points2, cv::Mat R, cv::Mat t, double focal=1.0, const cv::Point2d pp=Point2d(0, 0), cv::Mat mask=Mat()/IO;)
        def self.recover_pose(e, _points1, _points2, r, t, focal = 1.0, pp = Cv::Point2d.new(0, 0), mask = Cv::Mat.new())
            Rbind::cv_recover_pose(e, _points1, _points2, r, t, focal, pp, mask)
        end


        # wrapper for cv::InputArray
        module InputArray
            KINDSHIFT = 16



        end

        # object wrapping cv::Range
        class RangeStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_range_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Range
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(RangeStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Range::Range(int start, int end)
                @@cv_range_range_defaults0 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_range_range_defaults0[i]
                    end
                    begin
                        return Rbind::cv_range_range(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Range
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Range.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? RangeStruct
                                   ptr
                               else
                                   RangeStruct.new(FFI::AutoPointer.new(ptr,RangeStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for int start
            def start()
                Rbind::cv_range_get_start( self)
            end

            # wrapper for int start
            def start=(value)
                Rbind::cv_range_set_start( self, value)
            end

            # wrapper for int end
            def end()
                Rbind::cv_range_get_end( self)
            end

            # wrapper for int end
            def end=(value)
                Rbind::cv_range_set_end( self, value)
            end

            # wrapper for overloaded method size
            def size(*args)
                # wrapper for int cv::Range::size()
                @@cv_range_size_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_range_size_defaults0[i]
                    end
                    begin
                        return Rbind::cv_range_size(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for bool cv::Range::size()
                @@cv_range_size2_defaults1 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_range_size2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_range_size2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method all
            def all(*args)
                # wrapper for cv::Range cv::Range::all()
                @@cv_range_all_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_range_all_defaults0[i]
                    end
                    begin
                        result = Rbind::cv_range_all(self,*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Range cv::Range::all()
                @@cv_range_all2_defaults1 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_range_all2_defaults1[i]
                    end
                    begin
                        result = Rbind::cv_range_all2(self,*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for bool cv::Range::operator==(const cv::Range r)
            def ==(r)
                Rbind::cv_range_operator_equal( self, r)
            end

            # wrapper for bool cv::Range::operator!=(const cv::Range r)
            def !=(r)
                Rbind::cv_range_operator_unequal( self, r)
            end

            # wrapper for cv::Range cv::Range::operator&(const cv::Range r)
            def &(r)
                Rbind::cv_range_operator_and( self, r)
            end

            # wrapper for cv::Range cv::Range::operator+(int delta)
            def +(delta)
                Rbind::cv_range_operator_plus( self, delta)
            end

            # wrapper for cv::Range cv::Range::operator-(int delta)
            def -(delta)
                Rbind::cv_range_operator_minus( self, delta)
            end


            # types

        end

        # object wrapping cv::String
        class StringStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_string_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class String
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(StringStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::String::String()
                @@cv_string_string_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_string_string_defaults0[i]
                    end
                    begin
                        return Rbind::cv_string_string(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::String::String(c_string str, size_t length)
                @@cv_string_string2_defaults1 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_string_string2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_string_string2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::String::String(const cv::String other)
                @@cv_string_string3_defaults2 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_string_string3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_string_string3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? String
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                String.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? StringStruct
                                   ptr
                               else
                                   StringStruct.new(FFI::AutoPointer.new(ptr,StringStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for size_t cv::String::size()
            def size()
                Rbind::cv_string_size( self)
            end

            # wrapper for size_t cv::String::length()
            def length()
                Rbind::cv_string_length( self)
            end

            # wrapper for char cv::String::operator[](size_t idx)
            def [](idx)
                Rbind::cv_string_operator_array( self, idx)
            end

            # wrapper for const_c_string cv::String::c_str()
            def c_str()
                Rbind::cv_stringc_str( self)
            end

            # wrapper for bool cv::String::empty()
            def empty()
                Rbind::cv_string_empty( self)
            end

            # wrapper for void cv::String::clear()
            def clear()
                Rbind::cv_string_clear( self)
            end

            # wrapper for int cv::String::compare(const cv::String str)
            def compare(str)
                Rbind::cv_string_compare( self, str)
            end

            # wrapper for void cv::String::swap(cv::String str)
            def swap(str)
                Rbind::cv_string_swap( self, str)
            end


            # types

        end

        # object wrapping cv::Scalar
        class ScalarStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_scalar_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Scalar
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(ScalarStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Scalar::Scalar()
                @@cv_scalar_scalar_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_scalar_scalar_defaults0[i]
                    end
                    begin
                        return Rbind::cv_scalar_scalar(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Scalar::Scalar(double v0)
                @@cv_scalar_scalar2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_scalar_scalar2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_scalar_scalar2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Scalar::Scalar(double v0, double v1, double v2=0, double v3=0)
                @@cv_scalar_scalar3_defaults2 ||= [nil, nil, 0, 0]
                if(args.size >= 2 && args.size <= 4)
                    args.size.upto(3) do |i|
                        args[i] = @@cv_scalar_scalar3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_scalar_scalar3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Scalar
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Scalar.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? ScalarStruct
                                   ptr
                               else
                                   ScalarStruct.new(FFI::AutoPointer.new(ptr,ScalarStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for double *val
            def val()
                Rbind::cv_scalar_get_val( self)
            end

            # wrapper for cv::Scalar cv::Scalar::all(double v0)
            def self.all(_v0)
                Rbind::cv_scalar_all(_v0)
            end

            # wrapper for cv::Scalar cv::Scalar::mul(const cv::Scalar other, double scale=1)
            def mul(other, scale = 1)
                result = Rbind::cv_scalar_mul( self, other, scale)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Scalar cv::Scalar::conj()
            def conj()
                result = Rbind::cv_scalar_conj( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for bool cv::Scalar::isReal()
            def is_real()
                Rbind::cv_scalar_is_real( self)
            end

            # wrapper for double cv::Scalar::operator[](size_t elem)
            def [](elem)
                Rbind::cv_scalar_operator_array( self, elem)
            end


            # types

        end

        # object wrapping cv::Point
        class PointStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_point_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Point
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PointStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Point::Point(int x, int y)
                @@cv_point_point_defaults0 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_point_point_defaults0[i]
                    end
                    begin
                        return Rbind::cv_point_point(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Point::Point(const cv::Point pt)
                @@cv_point_point2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_point2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_point_point2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Point
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Point.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? PointStruct
                                   ptr
                               else
                                   PointStruct.new(FFI::AutoPointer.new(ptr,PointStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for int x
            def x()
                Rbind::cv_point_getx( self)
            end

            # wrapper for int x
            def x=(value)
                Rbind::cv_point_setx( self, value)
            end

            # wrapper for int y
            def y()
                Rbind::cv_point_gety( self)
            end

            # wrapper for int y
            def y=(value)
                Rbind::cv_point_sety( self, value)
            end

            # wrapper for overloaded method dot
            def dot(*args)
                # wrapper for int cv::Point::dot(const cv::Point pt)
                @@cv_point_dot_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_dot_defaults0[i]
                    end
                    begin
                        return Rbind::cv_point_dot(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for double cv::Point::dot(const cv::Point pt)
                @@cv_point_dot2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_dot2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_point_dot2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for double cv::Point::cross(const cv::Point pt)
            def cross(pt)
                Rbind::cv_point_cross( self, pt)
            end

            # wrapper for bool cv::Point::inside(const cv::Rect rect)
            def inside(rect)
                Rbind::cv_point_inside( self, rect)
            end

            # wrapper for void cv::Point::operator+(const cv::Point pt)
            def +(pt)
                Rbind::cv_point_operator_plus( self, pt)
            end


            # types

        end

        # object wrapping cv::Rect
        class RectStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_rect_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Rect
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(RectStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Rect::Rect()
                @@cv_rect_rect_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_rect_rect_defaults0[i]
                    end
                    begin
                        return Rbind::cv_rect_rect(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Rect::Rect(const cv::Rect rect)
                @@cv_rect_rect2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_rect_rect2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_rect_rect2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Rect::Rect(int x, int y, int width, int height)
                @@cv_rect_rect3_defaults2 ||= [nil, nil, nil, nil]
                if(args.size >= 4 && args.size <= 4)
                    args.size.upto(3) do |i|
                        args[i] = @@cv_rect_rect3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_rect_rect3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Rect
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Rect.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? RectStruct
                                   ptr
                               else
                                   RectStruct.new(FFI::AutoPointer.new(ptr,RectStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for int x
            def x()
                Rbind::cv_rect_getx( self)
            end

            # wrapper for int x
            def x=(value)
                Rbind::cv_rect_setx( self, value)
            end

            # wrapper for int y
            def y()
                Rbind::cv_rect_gety( self)
            end

            # wrapper for int y
            def y=(value)
                Rbind::cv_rect_sety( self, value)
            end

            # wrapper for int width
            def width()
                Rbind::cv_rect_get_width( self)
            end

            # wrapper for int width
            def width=(value)
                Rbind::cv_rect_set_width( self, value)
            end

            # wrapper for int height
            def height()
                Rbind::cv_rect_get_height( self)
            end

            # wrapper for int height
            def height=(value)
                Rbind::cv_rect_set_height( self, value)
            end

            # wrapper for cv::Point cv::Rect::tl()
            def tl()
                result = Rbind::cv_rect_tl( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Point cv::Rect::br()
            def br()
                result = Rbind::cv_rect_br( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Size cv::Rect::size()
            def size()
                result = Rbind::cv_rect_size( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::Rect::area()
            def area()
                Rbind::cv_rect_area( self)
            end

            # wrapper for bool cv::Rect::contains(const cv::Point point)
            def contains(point)
                Rbind::cv_rect_contains( self, point)
            end


            # types

        end

        # object wrapping cv::Point2f
        class Point2fStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_point_2f_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Point2f
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Point2fStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Point2f::Point2f(float x, float y)
                @@cv_point_2f_point_2f_defaults0 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_point_2f_point_2f_defaults0[i]
                    end
                    begin
                        return Rbind::cv_point_2f_point_2f(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Point2f::Point2f(const cv::Point2f pt)
                @@cv_point_2f_point_2f2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_2f_point_2f2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_point_2f_point_2f2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Point2f
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Point2f.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Point2fStruct
                                   ptr
                               else
                                   Point2fStruct.new(FFI::AutoPointer.new(ptr,Point2fStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for float x
            def x()
                Rbind::cv_point_2f_getx( self)
            end

            # wrapper for float x
            def x=(value)
                Rbind::cv_point_2f_setx( self, value)
            end

            # wrapper for float y
            def y()
                Rbind::cv_point_2f_gety( self)
            end

            # wrapper for float y
            def y=(value)
                Rbind::cv_point_2f_sety( self, value)
            end

            # wrapper for overloaded method dot
            def dot(*args)
                # wrapper for float cv::Point2f::dot(const cv::Point2f pt)
                @@cv_point_2f_dot_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_2f_dot_defaults0[i]
                    end
                    begin
                        return Rbind::cv_point_2f_dot(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for double cv::Point2f::dot(const cv::Point2f pt)
                @@cv_point_2f_dot2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_2f_dot2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_point_2f_dot2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for double cv::Point2f::cross(const cv::Point2f pt)
            def cross(pt)
                Rbind::cv_point_2f_cross( self, pt)
            end

            # wrapper for void cv::Point2f::operator+(const cv::Point2f pt)
            def +(pt)
                Rbind::cv_point_2f_operator_plus( self, pt)
            end


            # types

        end

        # object wrapping cv::Point2d
        class Point2dStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_point_2d_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Point2d
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Point2dStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Point2d::Point2d(double x, double y)
                @@cv_point_2d_point_2d_defaults0 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_point_2d_point_2d_defaults0[i]
                    end
                    begin
                        return Rbind::cv_point_2d_point_2d(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Point2d::Point2d(const cv::Point2d pt)
                @@cv_point_2d_point_2d2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_2d_point_2d2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_point_2d_point_2d2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Point2d
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Point2d.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Point2dStruct
                                   ptr
                               else
                                   Point2dStruct.new(FFI::AutoPointer.new(ptr,Point2dStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for double x
            def x()
                Rbind::cv_point_2d_getx( self)
            end

            # wrapper for double x
            def x=(value)
                Rbind::cv_point_2d_setx( self, value)
            end

            # wrapper for double y
            def y()
                Rbind::cv_point_2d_gety( self)
            end

            # wrapper for double y
            def y=(value)
                Rbind::cv_point_2d_sety( self, value)
            end

            # wrapper for void cv::Point2d::operator+(const cv::Point2d pt)
            def +(pt)
                Rbind::cv_point_2d_operator_plus( self, pt)
            end

            # wrapper for overloaded method dot
            def dot(*args)
                # wrapper for double cv::Point2d::dot(const cv::Point2d pt)
                @@cv_point_2d_dot_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_2d_dot_defaults0[i]
                    end
                    begin
                        return Rbind::cv_point_2d_dot(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for double cv::Point2d::dot(const cv::Point2d pt)
                @@cv_point_2d_dot2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_2d_dot2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_point_2d_dot2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for double cv::Point2d::cross(const cv::Point2d pt)
            def cross(pt)
                Rbind::cv_point_2d_cross( self, pt)
            end


            # types

        end

        # object wrapping cv::Point3f
        class Point3fStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_point_3f_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Point3f
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Point3fStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Point3f::Point3f(float x, float y, float z)
                @@cv_point_3f_point_3f_defaults0 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_point_3f_point_3f_defaults0[i]
                    end
                    begin
                        return Rbind::cv_point_3f_point_3f(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Point3f::Point3f(const cv::Point3f pt)
                @@cv_point_3f_point_3f2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_3f_point_3f2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_point_3f_point_3f2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Point3f
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Point3f.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Point3fStruct
                                   ptr
                               else
                                   Point3fStruct.new(FFI::AutoPointer.new(ptr,Point3fStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for float x
            def x()
                Rbind::cv_point_3f_getx( self)
            end

            # wrapper for float x
            def x=(value)
                Rbind::cv_point_3f_setx( self, value)
            end

            # wrapper for float y
            def y()
                Rbind::cv_point_3f_gety( self)
            end

            # wrapper for float y
            def y=(value)
                Rbind::cv_point_3f_sety( self, value)
            end

            # wrapper for float z
            def z()
                Rbind::cv_point_3f_getz( self)
            end

            # wrapper for float z
            def z=(value)
                Rbind::cv_point_3f_setz( self, value)
            end

            # wrapper for float cv::Point3f::dot(const cv::Point3f pt)
            def dot(pt)
                Rbind::cv_point_3f_dot( self, pt)
            end

            # wrapper for double cv::Point3f::ddot(const cv::Point3f pt)
            def ddot(pt)
                Rbind::cv_point_3f_ddot( self, pt)
            end

            # wrapper for cv::Point3f cv::Point3f::cross(const cv::Point3f pt)
            def cross(pt)
                result = Rbind::cv_point_3f_cross( self, pt)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::Point3f::operator+(const cv::Point3f pt)
            def +(pt)
                Rbind::cv_point_3f_operator_plus( self, pt)
            end


            # types

        end

        # object wrapping cv::Point3d
        class Point3dStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_point_3d_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Point3d
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Point3dStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Point3d::Point3d(double x, double y, double z)
                @@cv_point_3d_point_3d_defaults0 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_point_3d_point_3d_defaults0[i]
                    end
                    begin
                        return Rbind::cv_point_3d_point_3d(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Point3d::Point3d(const cv::Point3d pt)
                @@cv_point_3d_point_3d2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_point_3d_point_3d2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_point_3d_point_3d2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Point3d
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Point3d.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Point3dStruct
                                   ptr
                               else
                                   Point3dStruct.new(FFI::AutoPointer.new(ptr,Point3dStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for double x
            def x()
                Rbind::cv_point_3d_getx( self)
            end

            # wrapper for double x
            def x=(value)
                Rbind::cv_point_3d_setx( self, value)
            end

            # wrapper for double y
            def y()
                Rbind::cv_point_3d_gety( self)
            end

            # wrapper for double y
            def y=(value)
                Rbind::cv_point_3d_sety( self, value)
            end

            # wrapper for double z
            def z()
                Rbind::cv_point_3d_getz( self)
            end

            # wrapper for double z
            def z=(value)
                Rbind::cv_point_3d_setz( self, value)
            end

            # wrapper for double cv::Point3d::dot(const cv::Point3d pt)
            def dot(pt)
                Rbind::cv_point_3d_dot( self, pt)
            end

            # wrapper for double cv::Point3d::ddot(const cv::Point3d pt)
            def ddot(pt)
                Rbind::cv_point_3d_ddot( self, pt)
            end

            # wrapper for cv::Point3d cv::Point3d::cross(const cv::Point3d pt)
            def cross(pt)
                result = Rbind::cv_point_3d_cross( self, pt)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::Point3d::operator+(const cv::Point3d pt)
            def +(pt)
                Rbind::cv_point_3d_operator_plus( self, pt)
            end


            # types

        end

        # object wrapping cv::Size
        class SizeStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_size_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Size
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(SizeStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Size::Size()
                @@cv_size_size_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_size_size_defaults0[i]
                    end
                    begin
                        return Rbind::cv_size_size(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Size::Size(const cv::Size sz)
                @@cv_size_size2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_size_size2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_size_size2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Size::Size(const cv::Point pt)
                @@cv_size_size3_defaults2 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_size_size3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_size_size3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Size::Size(int width, int height)
                @@cv_size_size4_defaults3 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_size_size4_defaults3[i]
                    end
                    begin
                        return Rbind::cv_size_size4(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Size
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Size.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? SizeStruct
                                   ptr
                               else
                                   SizeStruct.new(FFI::AutoPointer.new(ptr,SizeStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for int width
            def width()
                Rbind::cv_size_get_width( self)
            end

            # wrapper for int width
            def width=(value)
                Rbind::cv_size_set_width( self, value)
            end

            # wrapper for int height
            def height()
                Rbind::cv_size_get_height( self)
            end

            # wrapper for int height
            def height=(value)
                Rbind::cv_size_set_height( self, value)
            end

            # wrapper for int cv::Size::area()
            def area()
                Rbind::cv_size_area( self)
            end


            # types

        end

        # object wrapping cv::Size2f
        class Size2fStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_size_2f_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Size2f
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Size2fStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Size2f::Size2f()
                @@cv_size_2f_size_2f_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_size_2f_size_2f_defaults0[i]
                    end
                    begin
                        return Rbind::cv_size_2f_size_2f(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Size2f::Size2f(const cv::Size2f sz)
                @@cv_size_2f_size_2f2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_size_2f_size_2f2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_size_2f_size_2f2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Size2f::Size2f(const cv::Point2f pt)
                @@cv_size_2f_size_2f3_defaults2 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_size_2f_size_2f3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_size_2f_size_2f3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Size2f::Size2f(int width, int height)
                @@cv_size_2f_size_2f4_defaults3 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_size_2f_size_2f4_defaults3[i]
                    end
                    begin
                        return Rbind::cv_size_2f_size_2f4(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Size2f
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Size2f.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Size2fStruct
                                   ptr
                               else
                                   Size2fStruct.new(FFI::AutoPointer.new(ptr,Size2fStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for int width
            def width()
                Rbind::cv_size_2f_get_width( self)
            end

            # wrapper for int width
            def width=(value)
                Rbind::cv_size_2f_set_width( self, value)
            end

            # wrapper for int height
            def height()
                Rbind::cv_size_2f_get_height( self)
            end

            # wrapper for int height
            def height=(value)
                Rbind::cv_size_2f_set_height( self, value)
            end

            # wrapper for int cv::Size2f::area()
            def area()
                Rbind::cv_size_2f_area( self)
            end


            # types

        end

        # object wrapping cv::RotatedRect
        class RotatedRectStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_rotated_rect_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class RotatedRect
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(RotatedRectStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::RotatedRect::RotatedRect()
                @@cv_rotated_rect_rotated_rect_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_rotated_rect_rotated_rect_defaults0[i]
                    end
                    begin
                        return Rbind::cv_rotated_rect_rotated_rect(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::RotatedRect::RotatedRect(const cv::Point2f center, const cv::Size2f size, float angle)
                @@cv_rotated_rect_rotated_rect2_defaults1 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_rotated_rect_rotated_rect2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_rotated_rect_rotated_rect2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? RotatedRect
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                RotatedRect.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? RotatedRectStruct
                                   ptr
                               else
                                   RotatedRectStruct.new(FFI::AutoPointer.new(ptr,RotatedRectStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for cv::Point2f center
            def center()
                result = Rbind::cv_rotated_rect_get_center( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Point2f center
            def center=(value)
                Rbind::cv_rotated_rect_set_center( self, value)
            end

            # wrapper for cv::Size2f size
            def size()
                result = Rbind::cv_rotated_rect_get_size( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Size2f size
            def size=(value)
                Rbind::cv_rotated_rect_set_size( self, value)
            end

            # wrapper for float angle
            def angle()
                Rbind::cv_rotated_rect_get_angle( self)
            end

            # wrapper for float angle
            def angle=(value)
                Rbind::cv_rotated_rect_set_angle( self, value)
            end

            # wrapper for cv::Rect cv::RotatedRect::boundingRect()
            def bounding_rect()
                result = Rbind::cv_rotated_rect_bounding_rect( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end


            # types

        end

        # object wrapping cv::FileNode
        class FileNodeStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_file_node_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class FileNode
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(FileNodeStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? FileNode
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                FileNode.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? FileNodeStruct
                                   ptr
                               else
                                   FileNodeStruct.new(FFI::AutoPointer.new(ptr,FileNodeStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods

            # types

        end

        # object wrapping cv::Vec2d
        class Vec2dStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_vec_2d_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Vec2d
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Vec2dStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Vec2d::Vec2d()
                @@cv_vec_2d_vec_2d_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_vec_2d_vec_2d_defaults0[i]
                    end
                    begin
                        return Rbind::cv_vec_2d_vec_2d(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Vec2d::Vec2d(const cv::Vec2d vec)
                @@cv_vec_2d_vec_2d2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_vec_2d_vec_2d2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_vec_2d_vec_2d2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Vec2d::Vec2d(double t1, double t2)
                @@cv_vec_2d_vec_2d3_defaults2 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_vec_2d_vec_2d3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_vec_2d_vec_2d3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Vec2d
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Vec2d.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Vec2dStruct
                                   ptr
                               else
                                   Vec2dStruct.new(FFI::AutoPointer.new(ptr,Vec2dStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for cv::Vec2d cv::Vec2d::all(double alpha)
            def self.all(alpha)
                Rbind::cv_vec_2d_all(alpha)
            end

            # wrapper for cv::Vec2d cv::Vec2d::mul(const cv::Vec2d other)
            def mul(other)
                result = Rbind::cv_vec_2d_mul( self, other)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Vec2d cv::Vec2d::conj()
            def conj()
                result = Rbind::cv_vec_2d_conj( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for double cv::Vec2d::operator[](int i)
            def [](i)
                Rbind::cv_vec_2d_operator_array( self, i)
            end


            # types

        end

        # object wrapping cv::Vec3d
        class Vec3dStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_vec_3d_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Vec3d
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Vec3dStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Vec3d
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Vec3d.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Vec3dStruct
                                   ptr
                               else
                                   Vec3dStruct.new(FFI::AutoPointer.new(ptr,Vec3dStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods

            # types

        end

        # object wrapping cv::Vec4d
        class Vec4dStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_vec_4d_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Vec4d
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Vec4dStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Vec4d
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Vec4d.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Vec4dStruct
                                   ptr
                               else
                                   Vec4dStruct.new(FFI::AutoPointer.new(ptr,Vec4dStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods

            # types

        end

        # object wrapping cv::Vec4f
        class Vec4fStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_vec_4f_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Vec4f
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Vec4fStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Vec4f
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Vec4f.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Vec4fStruct
                                   ptr
                               else
                                   Vec4fStruct.new(FFI::AutoPointer.new(ptr,Vec4fStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods

            # types

        end

        # object wrapping cv::Vec6f
        class Vec6fStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_vec_6f_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Vec6f
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Vec6fStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Vec6f
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Vec6f.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Vec6fStruct
                                   ptr
                               else
                                   Vec6fStruct.new(FFI::AutoPointer.new(ptr,Vec6fStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods

            # types

        end

        # object wrapping cv::TermCriteria
        class TermCriteriaStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_term_criteria_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class TermCriteria
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(TermCriteriaStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? TermCriteria
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                TermCriteria.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? TermCriteriaStruct
                                   ptr
                               else
                                   TermCriteriaStruct.new(FFI::AutoPointer.new(ptr,TermCriteriaStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            COUNT = 1
            MAX_ITER = COUNT
            EPS = 2


            # methods

            # types

        end

        # wrapper for cv::flann
        module Flann


            # object wrapping cv::flann::IndexParams
            class IndexParamsStruct < FFI::Struct
                layout :version,:uchar,
                       :size,:size_t,
                       :type_id,:pointer,
                       :obj_ptr,:pointer,
                       :bowner,:bool
                # auto delete
                def self.release(pointer)
                    Rbind::delete_cv_flann_index_params_struct(pointer) unless pointer.null?
                rescue Exception => e
                    puts e
                end
            end

            class IndexParams
                extend FFI::DataConverter
                native_type FFI::Type::POINTER

                def self.new(*args)
                    if args.first.is_a?(FFI::Pointer) || args.first.is_a?(IndexParamsStruct)
                        raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                        return super(args.first)
                    end

                    raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
                end

                def self.rbind_to_native(obj,context)
                    if obj.is_a? IndexParams
                        obj.__obj_ptr__
                    else
                        raise TypeError, "expected kind of #{name}, was #{obj.class}"
                    end
                end

                def self.rbind_from_native(ptr,context)
                    IndexParams.new(ptr)
                end

                # can be overwritten by the user
                def self.to_native(obj,context)
                    rbind_to_native(obj,context)
                end

                # can be overwritten by the user
                def self.from_native(ptr,context)
                    rbind_from_native(ptr,context)
                end

                attr_reader :__obj_ptr__
                def initialize(ptr)
                    @__obj_ptr__ = if ptr.is_a? IndexParamsStruct
                                       ptr
                                   else
                                       IndexParamsStruct.new(FFI::AutoPointer.new(ptr,IndexParamsStruct.method(:release)))
                                   end
                end

                # returns true if the underlying pointer is owner of
                # the real object
                def __owner__?
                    @__obj_ptr__[:bowner]
                end

                # custom specializing


                # consts


                # methods

                # types

            end

            # object wrapping cv::flann::SearchParams
            class SearchParamsStruct < FFI::Struct
                layout :version,:uchar,
                       :size,:size_t,
                       :type_id,:pointer,
                       :obj_ptr,:pointer,
                       :bowner,:bool
                # auto delete
                def self.release(pointer)
                    Rbind::delete_cv_flann_search_params_struct(pointer) unless pointer.null?
                rescue Exception => e
                    puts e
                end
            end

            class SearchParams
                extend FFI::DataConverter
                native_type FFI::Type::POINTER

                def self.new(*args)
                    if args.first.is_a?(FFI::Pointer) || args.first.is_a?(SearchParamsStruct)
                        raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                        return super(args.first)
                    end

                    raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
                end

                def self.rbind_to_native(obj,context)
                    if obj.is_a? SearchParams
                        obj.__obj_ptr__
                    else
                        raise TypeError, "expected kind of #{name}, was #{obj.class}"
                    end
                end

                def self.rbind_from_native(ptr,context)
                    SearchParams.new(ptr)
                end

                # can be overwritten by the user
                def self.to_native(obj,context)
                    rbind_to_native(obj,context)
                end

                # can be overwritten by the user
                def self.from_native(ptr,context)
                    rbind_from_native(ptr,context)
                end

                attr_reader :__obj_ptr__
                def initialize(ptr)
                    @__obj_ptr__ = if ptr.is_a? SearchParamsStruct
                                       ptr
                                   else
                                       SearchParamsStruct.new(FFI::AutoPointer.new(ptr,SearchParamsStruct.method(:release)))
                                   end
                end

                # returns true if the underlying pointer is owner of
                # the real object
                def __owner__?
                    @__obj_ptr__[:bowner]
                end

                # custom specializing


                # consts


                # methods

                # types

            end


        end

        # object wrapping cv::FeatureDetector
        class FeatureDetectorStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_feature_detector_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class FeatureDetector
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(FeatureDetectorStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? FeatureDetector
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                FeatureDetector.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? FeatureDetectorStruct
                                   ptr
                               else
                                   FeatureDetectorStruct.new(FFI::AutoPointer.new(ptr,FeatureDetectorStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::FeatureDetector::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_feature_detector_detect( self, image, keypoints, mask)
            end

            # wrapper for bool cv::FeatureDetector::empty()
            def empty()
                Rbind::cv_feature_detector_empty( self)
            end

            # wrapper for Ptr_FeatureDetector cv::FeatureDetector::create(const cv::String detectorType)
            def self.create(detector_type)
                Rbind::cv_feature_detector_create(detector_type)
            end

            # wrapper for int cv::FeatureDetector::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_feature_detector_get_int( self, name)
            end

            # wrapper for double cv::FeatureDetector::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_feature_detector_get_double( self, name)
            end

            # wrapper for bool cv::FeatureDetector::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_feature_detector_get_bool( self, name)
            end

            # wrapper for cv::String cv::FeatureDetector::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_feature_detector_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::FeatureDetector::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_feature_detector_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::FeatureDetector::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_feature_detector_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::FeatureDetector::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_feature_detector_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::FeatureDetector::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_feature_detector_set_int( self, name, value)
            end

            # wrapper for void cv::FeatureDetector::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_feature_detector_set_double( self, name, value)
            end

            # wrapper for void cv::FeatureDetector::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_feature_detector_set_bool( self, name, value)
            end

            # wrapper for void cv::FeatureDetector::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_feature_detector_set_string( self, name, value)
            end

            # wrapper for void cv::FeatureDetector::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_feature_detector_set_mat( self, name, value)
            end

            # wrapper for void cv::FeatureDetector::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_feature_detector_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::FeatureDetector::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_feature_detector_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::FeatureDetector::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_feature_detector_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::FeatureDetector::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_feature_detector_param_type( self, name)
            end

            # wrapper for void cv::FeatureDetector::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_feature_detector_get_params( self, names)
            end

            # wrapper for void cv::FeatureDetector::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_feature_detector_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::FeatureDetector::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_feature_detector__create(name)
            end


            # types

        end

        # object wrapping cv::Mat
        class MatStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_mat_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Mat
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(MatStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Mat::Mat()
                @@cv_mat_mat_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_mat_mat_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mat_mat(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat::Mat(const cv::Mat m)
                @@cv_mat_mat2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_mat2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_mat_mat2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat::Mat(const cv::Size size, int type)
                @@cv_mat_mat3_defaults2 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_mat_mat3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_mat_mat3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat::Mat(int rows, int cols, int type)
                @@cv_mat_mat4_defaults3 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_mat_mat4_defaults3[i]
                    end
                    begin
                        return Rbind::cv_mat_mat4(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat::Mat(int rows, int cols, int type, void *data, size_t step=AUTO_STEP)
                @@cv_mat_mat5_defaults4 ||= [nil, nil, nil, nil, AUTO_STEP]
                if(args.size >= 4 && args.size <= 5)
                    args.size.upto(4) do |i|
                        args[i] = @@cv_mat_mat5_defaults4[i]
                    end
                    begin
                        return Rbind::cv_mat_mat5(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Mat
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Mat.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? MatStruct
                                   ptr
                               else
                                   MatStruct.new(FFI::AutoPointer.new(ptr,MatStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            MAGIC_VAL = 0x42FF0000
            AUTO_STEP = 0
            CONTINUOUS_FLAG = CV_MAT_CONT_FLAG
            SUBMATRIX_FLAG = CV_SUBMAT_FLAG
            MAGIC_MASK = 0xFFFF0000
            TYPE_MASK = 0x00000FFF
            DEPTH_MASK = 7


            # methods
            # wrapper for int flags
            def flags()
                Rbind::cv_mat_get_flags( self)
            end

            # wrapper for int rows
            def rows()
                Rbind::cv_mat_get_rows( self)
            end

            # wrapper for int cols
            def cols()
                Rbind::cv_mat_get_cols( self)
            end

            # wrapper for size_t step
            def step()
                Rbind::cv_mat_get_step( self)
            end

            # wrapper for uchar *data
            def data()
                Rbind::cv_mat_get_data( self)
            end

            # wrapper for overloaded method +
            def +(*args)
                # wrapper for cv::Mat cv::Mat::operator+(const cv::Mat mat)
                @@cv_mat_operator_plus_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_plus_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_plus(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::operator+(double val)
                @@cv_mat_operator_plus2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_plus2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_plus2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::operator+(int val)
                @@cv_mat_operator_plus3_defaults2 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_plus3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_plus3(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method -
            def -(*args)
                # wrapper for cv::Mat cv::Mat::operator-(const cv::Mat mat)
                @@cv_mat_operator_minus_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_minus_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_minus(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::operator-(double val)
                @@cv_mat_operator_minus2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_minus2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_minus2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::operator-(int val)
                @@cv_mat_operator_minus3_defaults2 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_minus3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_minus3(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method *
            def *(*args)
                # wrapper for cv::Mat cv::Mat::operator*(const cv::Mat mat)
                @@cv_mat_operator_mult_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_mult_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_mult(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::operator*(double val)
                @@cv_mat_operator_mult2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_mult2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_mult2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::operator*(int val)
                @@cv_mat_operator_mult3_defaults2 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_mult3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_mult3(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method /
            def /(*args)
                # wrapper for cv::Mat cv::Mat::operator/(const cv::Mat mat)
                @@cv_mat_operator_div_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_div_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_div(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::operator/(double val)
                @@cv_mat_operator_div2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_div2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_div2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::operator/(int val)
                @@cv_mat_operator_div3_defaults2 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_operator_div3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_mat_operator_div3(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for cv::Mat cv::Mat::row(int y)
            def row(y)
                result = Rbind::cv_mat_row( self, y)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::Mat::col(int c)
            def col(c)
                result = Rbind::cv_mat_col( self, c)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for overloaded method row_range
            def row_range(*args)
                # wrapper for cv::Mat cv::Mat::rowRange(int startrow, int endrow)
                @@cv_mat_row_range_defaults0 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_mat_row_range_defaults0[i]
                    end
                    begin
                        result = Rbind::cv_mat_row_range(self,*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::rowRange(const cv::Range r)
                @@cv_mat_row_range2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_row_range2_defaults1[i]
                    end
                    begin
                        result = Rbind::cv_mat_row_range2(self,*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method col_range
            def col_range(*args)
                # wrapper for cv::Mat cv::Mat::colRange(int startcol, int endcol)
                @@cv_mat_col_range_defaults0 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_mat_col_range_defaults0[i]
                    end
                    begin
                        result = Rbind::cv_mat_col_range(self,*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::colRange(const cv::Range r)
                @@cv_mat_col_range2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_col_range2_defaults1[i]
                    end
                    begin
                        result = Rbind::cv_mat_col_range2(self,*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for cv::Mat cv::Mat::diag(int d=0)
            def diag(d = 0)
                result = Rbind::cv_mat_diag( self, d)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::Mat::clone()
            def clone()
                result = Rbind::cv_mat_clone( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for overloaded method copy_to
            def copy_to(*args)
                # wrapper for void cv::Mat::copyTo(cv::Mat m)
                @@cv_mat_copy_to_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_copy_to_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mat_copy_to(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::Mat::copyTo(cv::Mat m, cv::Mat mask)
                @@cv_mat_copy_to2_defaults1 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_mat_copy_to2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_mat_copy_to2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for void cv::Mat::convertTo(cv::Mat m, int rtype, double alpha=1, double beta=0)
            def convert_to(m, rtype, alpha = 1, beta = 0)
                Rbind::cv_mat_convert_to( self, m, rtype, alpha, beta)
            end

            # wrapper for void cv::Mat::assignTo(cv::Mat m, int type=-1)
            def assign_to(m, type = -1)
                Rbind::cv_mat_assign_to( self, m, type)
            end

            # wrapper for cv::Mat cv::Mat::reshape(int cn, int rows=0)
            def reshape(cn, rows = 0)
                result = Rbind::cv_mat_reshape( self, cn, rows)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::Mat::t()
            def t()
                result = Rbind::cv_matt( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::Mat::inv(int method=DECOMP_LU)
            def inv(method = DECOMP_LU)
                result = Rbind::cv_mat_inv( self, method)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::Mat::mul(const cv::Mat m, double scale=1)
            def mul(m, scale = 1)
                result = Rbind::cv_mat_mul( self, m, scale)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::Mat::cross(const cv::Mat m)
            def cross(m)
                result = Rbind::cv_mat_cross( self, m)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for double cv::Mat::dot(const cv::Mat m)
            def dot(m)
                Rbind::cv_mat_dot( self, m)
            end

            # wrapper for overloaded method zeros
            def self.zeros(*args)
                # wrapper for cv::Mat cv::Mat::zeros(int rows, int cols, int type)
                @@cv_mat_zeros_defaults0 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_mat_zeros_defaults0[i]
                    end
                    begin
                        result = Rbind::cv_mat_zeros(*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::zeros(const cv::Size size, int type)
                @@cv_mat_zeros2_defaults1 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_mat_zeros2_defaults1[i]
                    end
                    begin
                        result = Rbind::cv_mat_zeros2(*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method ones
            def self.ones(*args)
                # wrapper for cv::Mat cv::Mat::ones(int rows, int cols, int type)
                @@cv_mat_ones_defaults0 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_mat_ones_defaults0[i]
                    end
                    begin
                        result = Rbind::cv_mat_ones(*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::ones(const cv::Size size, int type)
                @@cv_mat_ones2_defaults1 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_mat_ones2_defaults1[i]
                    end
                    begin
                        result = Rbind::cv_mat_ones2(*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method eye
            def self.eye(*args)
                # wrapper for cv::Mat cv::Mat::eye(int rows, int cols, int type)
                @@cv_mat_eye_defaults0 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_mat_eye_defaults0[i]
                    end
                    begin
                        result = Rbind::cv_mat_eye(*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Mat cv::Mat::eye(const cv::Size size, int type)
                @@cv_mat_eye2_defaults1 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_mat_eye2_defaults1[i]
                    end
                    begin
                        result = Rbind::cv_mat_eye2(*args)
                        # store owner insight the pointer to not get garbage collected
                        result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                        return result
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method create
            def create(*args)
                # wrapper for void cv::Mat::create(int rows, int cols, int type)
                @@cv_mat_create_defaults0 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_mat_create_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mat_create(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::Mat::create(const cv::Size size, int type)
                @@cv_mat_create2_defaults1 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_mat_create2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_mat_create2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for bool cv::Mat::isContinuous()
            def is_continuous()
                Rbind::cv_mat_is_continuous( self)
            end

            # wrapper for bool cv::Mat::isSubmatrix()
            def is_submatrix()
                Rbind::cv_mat_is_submatrix( self)
            end

            # wrapper for size_t cv::Mat::elemSize()
            def elem_size()
                Rbind::cv_mat_elem_size( self)
            end

            # wrapper for size_t cv::Mat::elemSize1()
            def elem_size1()
                Rbind::cv_mat_elem_size1( self)
            end

            # wrapper for cv::Size cv::Mat::size()
            def size()
                result = Rbind::cv_mat_size( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::Mat::type()
            def type()
                Rbind::cv_mat_type( self)
            end

            # wrapper for int cv::Mat::depth()
            def depth()
                Rbind::cv_mat_depth( self)
            end

            # wrapper for int cv::Mat::channels()
            def channels()
                Rbind::cv_mat_channels( self)
            end

            # wrapper for size_t cv::Mat::step1(int i=0)
            def step1(i = 0)
                Rbind::cv_mat_step1( self, i)
            end

            # wrapper for bool cv::Mat::empty()
            def empty()
                Rbind::cv_mat_empty( self)
            end

            # wrapper for size_t cv::Mat::total()
            def total()
                Rbind::cv_mat_total( self)
            end

            # wrapper for int cv::Mat::checkVector(int elemChannels, int depth=-1, bool requireContinuous=true)
            def check_vector(elem_channels, depth = -1, require_continuous = true)
                Rbind::cv_mat_check_vector( self, elem_channels, depth, require_continuous)
            end

            # wrapper for overloaded method ptr
            def ptr(*args)
                # wrapper for uchar * cv::Mat::ptr(int i0=0)
                @@cv_mat_ptr_defaults0 ||= [0]
                if(args.size >= 0 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_mat_ptr_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mat_ptr(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for uchar * cv::Mat::ptr(int i0, int i1)
                @@cv_mat_ptr2_defaults1 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_mat_ptr2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_mat_ptr2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for uchar * cv::Mat::ptr(int i0, int i1, int i2)
                @@cv_mat_ptr3_defaults2 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_mat_ptr3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_mat_ptr3(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for cv::Mat cv::Mat::operator()(const cv::Rect rect)
            def block(rect)
                result = Rbind::cv_mat_block( self, rect)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end


            # types

        end

        # object wrapping cv::RNG
        class RNGStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_rng_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class RNG
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(RNGStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::RNG::RNG()
                @@cv_rng_rng_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_rng_rng_defaults0[i]
                    end
                    begin
                        return Rbind::cv_rng_rng(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::RNG::RNG(uint64 state)
                @@cv_rng_rng2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_rng_rng2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_rng_rng2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? RNG
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                RNG.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? RNGStruct
                                   ptr
                               else
                                   RNGStruct.new(FFI::AutoPointer.new(ptr,RNGStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            UNIFORM = 0
            NORMAL = 1


            # methods
            # wrapper for uint64 state
            def state()
                Rbind::cv_rng_get_state( self)
            end

            # wrapper for overloaded method uniform
            def uniform(*args)
                # wrapper for int cv::RNG::uniform(int a, int b)
                @@cv_rng_uniform_defaults0 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_rng_uniform_defaults0[i]
                    end
                    begin
                        return Rbind::cv_rng_uniform(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for float cv::RNG::uniform(float a, float b)
                @@cv_rng_uniform2_defaults1 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_rng_uniform2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_rng_uniform2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for double cv::RNG::uniform(double a, double b)
                @@cv_rng_uniform3_defaults2 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_rng_uniform3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_rng_uniform3(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for void cv::RNG::fill(cv::Mat mat, int distType, const cv::Mat a, const cv::Mat b, bool saturateRange=false)
            def fill(mat, dist_type, a, b, saturate_range = false)
                Rbind::cv_rng_fill( self, mat, dist_type, a, b, saturate_range)
            end

            # wrapper for double cv::RNG::gaussian(double sigma)
            def gaussian(sigma)
                Rbind::cv_rng_gaussian( self, sigma)
            end


            # types

        end

        # wrapper for cv::PCA
        module PCA
            DATA_AS_ROW = 0
            DATA_AS_COL = 1
            USE_AVG = 2



        end

        # wrapper for cv::SVD
        module SVD
            MODIFY_A = 1
            NO_UV = 2
            FULL_UV = 4



        end

        # object wrapping cv::KDTree
        class KDTreeStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_kd_tree_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class KDTree
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(KDTreeStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::KDTree::KDTree()
                @@cv_kd_tree_kd_tree_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_kd_tree_kd_tree_defaults0[i]
                    end
                    begin
                        return Rbind::cv_kd_tree_kd_tree(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::KDTree::KDTree(const cv::Mat points, bool copyAndReorderPoints=false)
                @@cv_kd_tree_kd_tree2_defaults1 ||= [nil, false]
                if(args.size >= 1 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_kd_tree_kd_tree2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_kd_tree_kd_tree2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::KDTree::KDTree(const cv::Mat points, const cv::Mat _labels, bool copyAndReorderPoints=false)
                @@cv_kd_tree_kd_tree3_defaults2 ||= [nil, nil, false]
                if(args.size >= 2 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_kd_tree_kd_tree3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_kd_tree_kd_tree3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? KDTree
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                KDTree.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? KDTreeStruct
                                   ptr
                               else
                                   KDTreeStruct.new(FFI::AutoPointer.new(ptr,KDTreeStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for const cv::Mat points
            def points()
                result = Rbind::cv_kd_tree_get_points( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for const vector_int labels
            def labels()
                result = Rbind::cv_kd_tree_get_labels( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int maxDepth
            def max_depth()
                Rbind::cv_kd_tree_get_max_depth( self)
            end

            # wrapper for int normType
            def norm_type()
                Rbind::cv_kd_tree_get_norm_type( self)
            end

            # wrapper for int normType
            def norm_type=(value)
                Rbind::cv_kd_tree_set_norm_type( self, value)
            end

            # wrapper for overloaded method build
            def build(*args)
                # wrapper for void cv::KDTree::build(const cv::Mat points, bool copyAndReorderPoints=false)
                @@cv_kd_tree_build_defaults0 ||= [nil, false]
                if(args.size >= 1 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_kd_tree_build_defaults0[i]
                    end
                    begin
                        return Rbind::cv_kd_tree_build(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::KDTree::build(const cv::Mat points, const cv::Mat labels, bool copyAndReorderPoints=false)
                @@cv_kd_tree_build2_defaults1 ||= [nil, nil, false]
                if(args.size >= 2 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_kd_tree_build2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_kd_tree_build2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for int cv::KDTree::findNearest(const cv::Mat vec, int K, int Emax, cv::Mat neighborsIdx, cv::Mat neighbors=Mat(), cv::Mat dist=Mat(), cv::Mat labels=Mat())
            def find_nearest(vec, k, emax, neighbors_idx, neighbors = Cv::Mat.new(), dist = Cv::Mat.new(), labels = Cv::Mat.new())
                Rbind::cv_kd_tree_find_nearest( self, vec, k, emax, neighbors_idx, neighbors, dist, labels)
            end

            # wrapper for void cv::KDTree::findOrthoRange(const cv::Mat minBounds, const cv::Mat maxBounds, cv::Mat neighborsIdx, cv::Mat neighbors=Mat(), cv::Mat labels=Mat())
            def find_ortho_range(min_bounds, max_bounds, neighbors_idx, neighbors = Cv::Mat.new(), labels = Cv::Mat.new())
                Rbind::cv_kd_tree_find_ortho_range( self, min_bounds, max_bounds, neighbors_idx, neighbors, labels)
            end

            # wrapper for void cv::KDTree::getPoints(const cv::Mat idx, cv::Mat pts, cv::Mat labels=Mat())
            def get_points(idx, pts, labels = Cv::Mat.new())
                Rbind::cv_kd_tree_get_points( self, idx, pts, labels)
            end

            # wrapper for int cv::KDTree::dims()
            def dims()
                Rbind::cv_kd_tree_dims( self)
            end


            # types

        end

        # wrapper for cv::Formatter
        module Formatter
            FMT_MATLAB = 0
            FMT_CSV = 1
            FMT_PYTHON = 2
            FMT_NUMPY = 3
            FMT_C = 4
            FMT_DEFAULT = FMT_MATLAB



        end

        # object wrapping cv::Algorithm
        class AlgorithmStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_algorithm_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Algorithm
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(AlgorithmStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Algorithm
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Algorithm.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? AlgorithmStruct
                                   ptr
                               else
                                   AlgorithmStruct.new(FFI::AutoPointer.new(ptr,AlgorithmStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for int cv::Algorithm::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_algorithm_get_int( self, name)
            end

            # wrapper for double cv::Algorithm::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_algorithm_get_double( self, name)
            end

            # wrapper for bool cv::Algorithm::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_algorithm_get_bool( self, name)
            end

            # wrapper for cv::String cv::Algorithm::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_algorithm_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::Algorithm::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_algorithm_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::Algorithm::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_algorithm_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::Algorithm::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_algorithm_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::Algorithm::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_algorithm_set_int( self, name, value)
            end

            # wrapper for void cv::Algorithm::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_algorithm_set_double( self, name, value)
            end

            # wrapper for void cv::Algorithm::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_algorithm_set_bool( self, name, value)
            end

            # wrapper for void cv::Algorithm::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_algorithm_set_string( self, name, value)
            end

            # wrapper for void cv::Algorithm::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_algorithm_set_mat( self, name, value)
            end

            # wrapper for void cv::Algorithm::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_algorithm_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::Algorithm::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_algorithm_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::Algorithm::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_algorithm_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::Algorithm::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_algorithm_param_type( self, name)
            end

            # wrapper for void cv::Algorithm::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_algorithm_get_params( self, names)
            end

            # wrapper for void cv::Algorithm::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_algorithm_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::Algorithm::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_algorithm__create(name)
            end


            # types

        end

        # wrapper for cv::Param
        module Param
            INT = 0
            BOOLEAN = 1
            REAL = 2
            STRING = 3
            MAT = 4
            MAT_VECTOR = 5
            ALGORITHM = 6
            FLOAT = 7
            UNSIGNED_INT = 8
            UINT64 = 9
            UCHAR = 11



        end

        # object wrapping cv::KeyPoint
        class KeyPointStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_key_point_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class KeyPoint
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(KeyPointStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::KeyPoint::KeyPoint()
                @@cv_key_point_key_point_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_key_point_key_point_defaults0[i]
                    end
                    begin
                        return Rbind::cv_key_point_key_point(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::KeyPoint::KeyPoint(float x, float y, float _size, float _angle=-1, float _response=0, int _octave=0, int _class_id=-1)
                @@cv_key_point_key_point2_defaults1 ||= [nil, nil, nil, -1, 0, 0, -1]
                if(args.size >= 3 && args.size <= 7)
                    args.size.upto(6) do |i|
                        args[i] = @@cv_key_point_key_point2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_key_point_key_point2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? KeyPoint
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                KeyPoint.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? KeyPointStruct
                                   ptr
                               else
                                   KeyPointStruct.new(FFI::AutoPointer.new(ptr,KeyPointStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for cv::Point2f pt
            def pt()
                result = Rbind::cv_key_point_get_pt( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Point2f pt
            def pt=(value)
                Rbind::cv_key_point_set_pt( self, value)
            end

            # wrapper for float size
            def size()
                Rbind::cv_key_point_get_size( self)
            end

            # wrapper for float size
            def size=(value)
                Rbind::cv_key_point_set_size( self, value)
            end

            # wrapper for float angle
            def angle()
                Rbind::cv_key_point_get_angle( self)
            end

            # wrapper for float angle
            def angle=(value)
                Rbind::cv_key_point_set_angle( self, value)
            end

            # wrapper for float response
            def response()
                Rbind::cv_key_point_get_response( self)
            end

            # wrapper for float response
            def response=(value)
                Rbind::cv_key_point_set_response( self, value)
            end

            # wrapper for int octave
            def octave()
                Rbind::cv_key_point_get_octave( self)
            end

            # wrapper for int octave
            def octave=(value)
                Rbind::cv_key_point_set_octave( self, value)
            end

            # wrapper for int class_id
            def class_id()
                Rbind::cv_key_point_get_class_id( self)
            end

            # wrapper for int class_id
            def class_id=(value)
                Rbind::cv_key_point_set_class_id( self, value)
            end


            # types

        end

        # object wrapping cv::DMatch
        class DMatchStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_d_match_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class DMatch
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(DMatchStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::DMatch::DMatch()
                @@cv_d_match_d_match_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_d_match_d_match_defaults0[i]
                    end
                    begin
                        return Rbind::cv_d_match_d_match(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::DMatch::DMatch(int _queryIdx, int _trainIdx, float _distance)
                @@cv_d_match_d_match2_defaults1 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_d_match_d_match2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_d_match_d_match2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::DMatch::DMatch(int _queryIdx, int _trainIdx, int _imgIdx, float _distance)
                @@cv_d_match_d_match3_defaults2 ||= [nil, nil, nil, nil]
                if(args.size >= 4 && args.size <= 4)
                    args.size.upto(3) do |i|
                        args[i] = @@cv_d_match_d_match3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_d_match_d_match3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? DMatch
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                DMatch.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? DMatchStruct
                                   ptr
                               else
                                   DMatchStruct.new(FFI::AutoPointer.new(ptr,DMatchStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for int queryIdx
            def query_idx()
                Rbind::cv_d_match_get_query_idx( self)
            end

            # wrapper for int queryIdx
            def query_idx=(value)
                Rbind::cv_d_match_set_query_idx( self, value)
            end

            # wrapper for int trainIdx
            def train_idx()
                Rbind::cv_d_match_get_train_idx( self)
            end

            # wrapper for int trainIdx
            def train_idx=(value)
                Rbind::cv_d_match_set_train_idx( self, value)
            end

            # wrapper for int imgIdx
            def img_idx()
                Rbind::cv_d_match_get_img_idx( self)
            end

            # wrapper for int imgIdx
            def img_idx=(value)
                Rbind::cv_d_match_set_img_idx( self, value)
            end

            # wrapper for float distance
            def distance()
                Rbind::cv_d_match_get_distance( self)
            end

            # wrapper for float distance
            def distance=(value)
                Rbind::cv_d_match_set_distance( self, value)
            end


            # types

        end

        # object wrapping cv::Moments
        class MomentsStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_moments_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Moments
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(MomentsStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Moments
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Moments.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? MomentsStruct
                                   ptr
                               else
                                   MomentsStruct.new(FFI::AutoPointer.new(ptr,MomentsStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for double m00
            def m00()
                Rbind::cv_moments_getm00( self)
            end

            # wrapper for double m00
            def m00=(value)
                Rbind::cv_moments_setm00( self, value)
            end

            # wrapper for double m10
            def m10()
                Rbind::cv_moments_getm10( self)
            end

            # wrapper for double m10
            def m10=(value)
                Rbind::cv_moments_setm10( self, value)
            end

            # wrapper for double m01
            def m01()
                Rbind::cv_moments_getm01( self)
            end

            # wrapper for double m01
            def m01=(value)
                Rbind::cv_moments_setm01( self, value)
            end

            # wrapper for double m20
            def m20()
                Rbind::cv_moments_getm20( self)
            end

            # wrapper for double m20
            def m20=(value)
                Rbind::cv_moments_setm20( self, value)
            end

            # wrapper for double m11
            def m11()
                Rbind::cv_moments_getm11( self)
            end

            # wrapper for double m11
            def m11=(value)
                Rbind::cv_moments_setm11( self, value)
            end

            # wrapper for double m02
            def m02()
                Rbind::cv_moments_getm02( self)
            end

            # wrapper for double m02
            def m02=(value)
                Rbind::cv_moments_setm02( self, value)
            end

            # wrapper for double m30
            def m30()
                Rbind::cv_moments_getm30( self)
            end

            # wrapper for double m30
            def m30=(value)
                Rbind::cv_moments_setm30( self, value)
            end

            # wrapper for double m21
            def m21()
                Rbind::cv_moments_getm21( self)
            end

            # wrapper for double m21
            def m21=(value)
                Rbind::cv_moments_setm21( self, value)
            end

            # wrapper for double m12
            def m12()
                Rbind::cv_moments_getm12( self)
            end

            # wrapper for double m12
            def m12=(value)
                Rbind::cv_moments_setm12( self, value)
            end

            # wrapper for double m03
            def m03()
                Rbind::cv_moments_getm03( self)
            end

            # wrapper for double m03
            def m03=(value)
                Rbind::cv_moments_setm03( self, value)
            end

            # wrapper for double mu20
            def mu20()
                Rbind::cv_moments_get_mu20( self)
            end

            # wrapper for double mu20
            def mu20=(value)
                Rbind::cv_moments_set_mu20( self, value)
            end

            # wrapper for double mu11
            def mu11()
                Rbind::cv_moments_get_mu11( self)
            end

            # wrapper for double mu11
            def mu11=(value)
                Rbind::cv_moments_set_mu11( self, value)
            end

            # wrapper for double mu02
            def mu02()
                Rbind::cv_moments_get_mu02( self)
            end

            # wrapper for double mu02
            def mu02=(value)
                Rbind::cv_moments_set_mu02( self, value)
            end

            # wrapper for double mu30
            def mu30()
                Rbind::cv_moments_get_mu30( self)
            end

            # wrapper for double mu30
            def mu30=(value)
                Rbind::cv_moments_set_mu30( self, value)
            end

            # wrapper for double mu21
            def mu21()
                Rbind::cv_moments_get_mu21( self)
            end

            # wrapper for double mu21
            def mu21=(value)
                Rbind::cv_moments_set_mu21( self, value)
            end

            # wrapper for double mu12
            def mu12()
                Rbind::cv_moments_get_mu12( self)
            end

            # wrapper for double mu12
            def mu12=(value)
                Rbind::cv_moments_set_mu12( self, value)
            end

            # wrapper for double mu03
            def mu03()
                Rbind::cv_moments_get_mu03( self)
            end

            # wrapper for double mu03
            def mu03=(value)
                Rbind::cv_moments_set_mu03( self, value)
            end

            # wrapper for double nu20
            def nu20()
                Rbind::cv_moments_get_nu20( self)
            end

            # wrapper for double nu20
            def nu20=(value)
                Rbind::cv_moments_set_nu20( self, value)
            end

            # wrapper for double nu11
            def nu11()
                Rbind::cv_moments_get_nu11( self)
            end

            # wrapper for double nu11
            def nu11=(value)
                Rbind::cv_moments_set_nu11( self, value)
            end

            # wrapper for double nu02
            def nu02()
                Rbind::cv_moments_get_nu02( self)
            end

            # wrapper for double nu02
            def nu02=(value)
                Rbind::cv_moments_set_nu02( self, value)
            end

            # wrapper for double nu30
            def nu30()
                Rbind::cv_moments_get_nu30( self)
            end

            # wrapper for double nu30
            def nu30=(value)
                Rbind::cv_moments_set_nu30( self, value)
            end

            # wrapper for double nu21
            def nu21()
                Rbind::cv_moments_get_nu21( self)
            end

            # wrapper for double nu21
            def nu21=(value)
                Rbind::cv_moments_set_nu21( self, value)
            end

            # wrapper for double nu12
            def nu12()
                Rbind::cv_moments_get_nu12( self)
            end

            # wrapper for double nu12
            def nu12=(value)
                Rbind::cv_moments_set_nu12( self, value)
            end

            # wrapper for double nu03
            def nu03()
                Rbind::cv_moments_get_nu03( self)
            end

            # wrapper for double nu03
            def nu03=(value)
                Rbind::cv_moments_set_nu03( self, value)
            end


            # types

        end

        # wrapper for cv::Error
        module Error
            StsOk = 0
            StsBackTrace = -1
            StsError = -2
            StsInternal = -3
            StsNoMem = -4
            StsBadArg = -5
            StsBadFunc = -6
            StsNoConv = -7
            StsAutoTrace = -8
            HeaderIsNull = -9
            BadImageSize = -10
            BadOffset = -11
            BadDataPtr = -12
            BadStep = -13
            BadModelOrChSeq = -14
            BadNumChannels = -15
            BadNumChannel1U = -16
            BadDepth = -17
            BadAlphaChannel = -18
            BadOrder = -19
            BadOrigin = -20
            BadAlign = -21
            BadCallBack = -22
            BadTileSize = -23
            BadCOI = -24
            BadROISize = -25
            MaskIsTiled = -26
            StsNullPtr = -27
            StsVecLengthErr = -28
            StsFilterStructContentErr = -29
            StsKernelStructContentErr = -30
            StsFilterOffsetErr = -31
            StsBadSize = -201
            StsDivByZero = -202
            StsInplaceNotSupported = -203
            StsObjectNotFound = -204
            StsUnmatchedFormats = -205
            StsBadFlag = -206
            StsBadPoint = -207
            StsBadMask = -208
            StsUnmatchedSizes = -209
            StsUnsupportedFormat = -210
            StsOutOfRange = -211
            StsParseError = -212
            StsNotImplemented = -213
            StsBadMemBlock = -214
            StsAssert = -215
            GpuNotSupported = -216
            GpuApiCallError = -217
            OpenGlNotSupported = -218
            OpenGlApiCallError = -219
            OpenCLApiCallError = -220



        end

        # wrapper for cv::SelfSimDescriptor
        module SelfSimDescriptor
            DEFAULT_SMALL_SIZE = 5
            DEFAULT_LARGE_SIZE = 41
            DEFAULT_NUM_ANGLES = 20
            DEFAULT_START_DISTANCE_BUCKET = 3
            DEFAULT_NUM_DISTANCE_BUCKETS = 7



        end

        # object wrapping cv::StereoVar
        class StereoVarStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_stereo_var_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class StereoVar
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(StereoVarStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::StereoVar::StereoVar()
                @@cv_stereo_var_stereo_var_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_stereo_var_stereo_var_defaults0[i]
                    end
                    begin
                        return Rbind::cv_stereo_var_stereo_var(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::StereoVar::StereoVar(int levels, double pyrScale, int nIt, int minDisp, int maxDisp, int poly_n, double poly_sigma, float fi, float lambda, int penalization, int cycle, int flags)
                @@cv_stereo_var_stereo_var2_defaults1 ||= [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
                if(args.size >= 12 && args.size <= 12)
                    args.size.upto(11) do |i|
                        args[i] = @@cv_stereo_var_stereo_var2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_stereo_var_stereo_var2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? StereoVar
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                StereoVar.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? StereoVarStruct
                                   ptr
                               else
                                   StereoVarStruct.new(FFI::AutoPointer.new(ptr,StereoVarStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            USE_INITIAL_DISPARITY = 1
            USE_EQUALIZE_HIST = 2
            USE_SMART_ID = 4
            USE_AUTO_PARAMS = 8
            USE_MEDIAN_FILTERING = 16
            CYCLE_O = 0
            CYCLE_V = 1
            PENALIZATION_TICHONOV = 0
            PENALIZATION_CHARBONNIER = 1
            PENALIZATION_PERONA_MALIK = 2


            # methods
            # wrapper for int levels
            def levels()
                Rbind::cv_stereo_var_get_levels( self)
            end

            # wrapper for int levels
            def levels=(value)
                Rbind::cv_stereo_var_set_levels( self, value)
            end

            # wrapper for double pyrScale
            def pyr_scale()
                Rbind::cv_stereo_var_get_pyr_scale( self)
            end

            # wrapper for double pyrScale
            def pyr_scale=(value)
                Rbind::cv_stereo_var_set_pyr_scale( self, value)
            end

            # wrapper for int nIt
            def n_it()
                Rbind::cv_stereo_var_getn_it( self)
            end

            # wrapper for int nIt
            def n_it=(value)
                Rbind::cv_stereo_var_setn_it( self, value)
            end

            # wrapper for int minDisp
            def min_disp()
                Rbind::cv_stereo_var_get_min_disp( self)
            end

            # wrapper for int minDisp
            def min_disp=(value)
                Rbind::cv_stereo_var_set_min_disp( self, value)
            end

            # wrapper for int maxDisp
            def max_disp()
                Rbind::cv_stereo_var_get_max_disp( self)
            end

            # wrapper for int maxDisp
            def max_disp=(value)
                Rbind::cv_stereo_var_set_max_disp( self, value)
            end

            # wrapper for int poly_n
            def polyn()
                Rbind::cv_stereo_var_get_polyn( self)
            end

            # wrapper for int poly_n
            def polyn=(value)
                Rbind::cv_stereo_var_set_polyn( self, value)
            end

            # wrapper for double poly_sigma
            def poly_sigma()
                Rbind::cv_stereo_var_get_poly_sigma( self)
            end

            # wrapper for double poly_sigma
            def poly_sigma=(value)
                Rbind::cv_stereo_var_set_poly_sigma( self, value)
            end

            # wrapper for float fi
            def fi()
                Rbind::cv_stereo_var_get_fi( self)
            end

            # wrapper for float fi
            def fi=(value)
                Rbind::cv_stereo_var_set_fi( self, value)
            end

            # wrapper for float lambda
            def lambda()
                Rbind::cv_stereo_var_get_lambda( self)
            end

            # wrapper for float lambda
            def lambda=(value)
                Rbind::cv_stereo_var_set_lambda( self, value)
            end

            # wrapper for int penalization
            def penalization()
                Rbind::cv_stereo_var_get_penalization( self)
            end

            # wrapper for int penalization
            def penalization=(value)
                Rbind::cv_stereo_var_set_penalization( self, value)
            end

            # wrapper for int cycle
            def cycle()
                Rbind::cv_stereo_var_get_cycle( self)
            end

            # wrapper for int cycle
            def cycle=(value)
                Rbind::cv_stereo_var_set_cycle( self, value)
            end

            # wrapper for int flags
            def flags()
                Rbind::cv_stereo_var_get_flags( self)
            end

            # wrapper for int flags
            def flags=(value)
                Rbind::cv_stereo_var_set_flags( self, value)
            end

            # wrapper for void cv::StereoVar::operator()(const cv::Mat left, const cv::Mat right, cv::Mat disp)
            def compute(left, right, disp)
                Rbind::cv_stereo_var_compute( self, left, right, disp)
            end


            # types

        end

        # object wrapping cv::FaceRecognizer
        class FaceRecognizerStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_face_recognizer_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class FaceRecognizer
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(FaceRecognizerStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? FaceRecognizer
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                FaceRecognizer.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? FaceRecognizerStruct
                                   ptr
                               else
                                   FaceRecognizerStruct.new(FFI::AutoPointer.new(ptr,FaceRecognizerStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::FaceRecognizer::train(const vector_Mat src, const cv::Mat labels)
            def train(src, labels)
                Rbind::cv_face_recognizer_train( self, src, labels)
            end

            # wrapper for void cv::FaceRecognizer::update(const vector_Mat src, const cv::Mat labels)
            def update(src, labels)
                Rbind::cv_face_recognizer_update( self, src, labels)
            end

            # wrapper for void cv::FaceRecognizer::predict(const cv::Mat src, int label, double confidence)
            def predict(src, label, confidence)
                Rbind::cv_face_recognizer_predict( self, src, label, confidence)
            end

            # wrapper for void cv::FaceRecognizer::save(const cv::String filename)
            def save(filename)
                Rbind::cv_face_recognizer_save( self, filename)
            end

            # wrapper for void cv::FaceRecognizer::load(const cv::String filename)
            def load(filename)
                Rbind::cv_face_recognizer_load( self, filename)
            end

            # wrapper for int cv::FaceRecognizer::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_face_recognizer_get_int( self, name)
            end

            # wrapper for double cv::FaceRecognizer::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_face_recognizer_get_double( self, name)
            end

            # wrapper for bool cv::FaceRecognizer::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_face_recognizer_get_bool( self, name)
            end

            # wrapper for cv::String cv::FaceRecognizer::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_face_recognizer_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::FaceRecognizer::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_face_recognizer_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::FaceRecognizer::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_face_recognizer_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::FaceRecognizer::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_face_recognizer_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::FaceRecognizer::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_face_recognizer_set_int( self, name, value)
            end

            # wrapper for void cv::FaceRecognizer::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_face_recognizer_set_double( self, name, value)
            end

            # wrapper for void cv::FaceRecognizer::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_face_recognizer_set_bool( self, name, value)
            end

            # wrapper for void cv::FaceRecognizer::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_face_recognizer_set_string( self, name, value)
            end

            # wrapper for void cv::FaceRecognizer::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_face_recognizer_set_mat( self, name, value)
            end

            # wrapper for void cv::FaceRecognizer::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_face_recognizer_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::FaceRecognizer::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_face_recognizer_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::FaceRecognizer::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_face_recognizer_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::FaceRecognizer::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_face_recognizer_param_type( self, name)
            end

            # wrapper for void cv::FaceRecognizer::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_face_recognizer_get_params( self, names)
            end

            # wrapper for void cv::FaceRecognizer::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_face_recognizer_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::FaceRecognizer::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_face_recognizer__create(name)
            end


            # types

        end

        # object wrapping cv::StereoMatcher
        class StereoMatcherStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_stereo_matcher_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class StereoMatcher
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(StereoMatcherStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? StereoMatcher
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                StereoMatcher.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? StereoMatcherStruct
                                   ptr
                               else
                                   StereoMatcherStruct.new(FFI::AutoPointer.new(ptr,StereoMatcherStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            DISP_SHIFT = 4
            DISP_SCALE = (1 << DISP_SHIFT)


            # methods
            # wrapper for void cv::StereoMatcher::compute(const cv::Mat left, const cv::Mat right, cv::Mat disparity)
            def compute(left, right, disparity)
                Rbind::cv_stereo_matcher_compute( self, left, right, disparity)
            end

            # wrapper for void cv::StereoMatcher::setMinDisparity(int minDisparity)
            def set_min_disparity(min_disparity)
                Rbind::cv_stereo_matcher_set_min_disparity( self, min_disparity)
            end

            # wrapper for void cv::StereoMatcher::setNumDisparities(int numDisparities)
            def set_num_disparities(num_disparities)
                Rbind::cv_stereo_matcher_set_num_disparities( self, num_disparities)
            end

            # wrapper for void cv::StereoMatcher::setBlockSize(int blockSize)
            def set_block_size(block_size)
                Rbind::cv_stereo_matcher_set_block_size( self, block_size)
            end

            # wrapper for void cv::StereoMatcher::setSpeckleWindowSize(int speckleWindowSize)
            def set_speckle_window_size(speckle_window_size)
                Rbind::cv_stereo_matcher_set_speckle_window_size( self, speckle_window_size)
            end

            # wrapper for void cv::StereoMatcher::setSpeckleRange(int speckleRange)
            def set_speckle_range(speckle_range)
                Rbind::cv_stereo_matcher_set_speckle_range( self, speckle_range)
            end

            # wrapper for void cv::StereoMatcher::setDisp12MaxDiff(int disp12MaxDiff)
            def set_disp12_max_diff(_disp12_max_diff)
                Rbind::cv_stereo_matcher_set_disp12_max_diff( self, _disp12_max_diff)
            end

            # wrapper for int cv::StereoMatcher::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_stereo_matcher_get_int( self, name)
            end

            # wrapper for double cv::StereoMatcher::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_stereo_matcher_get_double( self, name)
            end

            # wrapper for bool cv::StereoMatcher::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_stereo_matcher_get_bool( self, name)
            end

            # wrapper for cv::String cv::StereoMatcher::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_stereo_matcher_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::StereoMatcher::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_stereo_matcher_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::StereoMatcher::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_stereo_matcher_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::StereoMatcher::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_stereo_matcher_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::StereoMatcher::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_stereo_matcher_set_int( self, name, value)
            end

            # wrapper for void cv::StereoMatcher::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_stereo_matcher_set_double( self, name, value)
            end

            # wrapper for void cv::StereoMatcher::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_stereo_matcher_set_bool( self, name, value)
            end

            # wrapper for void cv::StereoMatcher::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_stereo_matcher_set_string( self, name, value)
            end

            # wrapper for void cv::StereoMatcher::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_stereo_matcher_set_mat( self, name, value)
            end

            # wrapper for void cv::StereoMatcher::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_stereo_matcher_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::StereoMatcher::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_stereo_matcher_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::StereoMatcher::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_stereo_matcher_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::StereoMatcher::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_stereo_matcher_param_type( self, name)
            end

            # wrapper for void cv::StereoMatcher::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_stereo_matcher_get_params( self, names)
            end

            # wrapper for void cv::StereoMatcher::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_stereo_matcher_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::StereoMatcher::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_stereo_matcher__create(name)
            end


            # types

        end

        # object wrapping cv::StereoBM
        class StereoBMStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_stereobm_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class StereoBM
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(StereoBMStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? StereoBM
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                StereoBM.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? StereoBMStruct
                                   ptr
                               else
                                   StereoBMStruct.new(FFI::AutoPointer.new(ptr,StereoBMStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            PREFILTER_NORMALIZED_RESPONSE = 0
            PREFILTER_XSOBEL = 1


            # methods
            # wrapper for void cv::StereoBM::setPreFilterType(int preFilterType)
            def set_pre_filter_type(pre_filter_type)
                Rbind::cv_stereobm_set_pre_filter_type( self, pre_filter_type)
            end

            # wrapper for void cv::StereoBM::setPreFilterSize(int preFilterSize)
            def set_pre_filter_size(pre_filter_size)
                Rbind::cv_stereobm_set_pre_filter_size( self, pre_filter_size)
            end

            # wrapper for void cv::StereoBM::setPreFilterCap(int preFilterCap)
            def set_pre_filter_cap(pre_filter_cap)
                Rbind::cv_stereobm_set_pre_filter_cap( self, pre_filter_cap)
            end

            # wrapper for void cv::StereoBM::setTextureThreshold(int textureThreshold)
            def set_texture_threshold(texture_threshold)
                Rbind::cv_stereobm_set_texture_threshold( self, texture_threshold)
            end

            # wrapper for void cv::StereoBM::setUniquenessRatio(int uniquenessRatio)
            def set_uniqueness_ratio(uniqueness_ratio)
                Rbind::cv_stereobm_set_uniqueness_ratio( self, uniqueness_ratio)
            end

            # wrapper for void cv::StereoBM::setSmallerBlockSize(int blockSize)
            def set_smaller_block_size(block_size)
                Rbind::cv_stereobm_set_smaller_block_size( self, block_size)
            end

            # wrapper for void cv::StereoBM::setROI1(const cv::Rect roi1)
            def setroi1(_roi1)
                Rbind::cv_stereobm_setroi1( self, _roi1)
            end

            # wrapper for void cv::StereoBM::setROI2(const cv::Rect roi2)
            def setroi2(_roi2)
                Rbind::cv_stereobm_setroi2( self, _roi2)
            end

            # wrapper for void cv::StereoBM::compute(const cv::Mat left, const cv::Mat right, cv::Mat disparity)
            def compute(left, right, disparity)
                Rbind::cv_stereobm_compute( self, left, right, disparity)
            end

            # wrapper for void cv::StereoBM::setMinDisparity(int minDisparity)
            def set_min_disparity(min_disparity)
                Rbind::cv_stereobm_set_min_disparity( self, min_disparity)
            end

            # wrapper for void cv::StereoBM::setNumDisparities(int numDisparities)
            def set_num_disparities(num_disparities)
                Rbind::cv_stereobm_set_num_disparities( self, num_disparities)
            end

            # wrapper for void cv::StereoBM::setBlockSize(int blockSize)
            def set_block_size(block_size)
                Rbind::cv_stereobm_set_block_size( self, block_size)
            end

            # wrapper for void cv::StereoBM::setSpeckleWindowSize(int speckleWindowSize)
            def set_speckle_window_size(speckle_window_size)
                Rbind::cv_stereobm_set_speckle_window_size( self, speckle_window_size)
            end

            # wrapper for void cv::StereoBM::setSpeckleRange(int speckleRange)
            def set_speckle_range(speckle_range)
                Rbind::cv_stereobm_set_speckle_range( self, speckle_range)
            end

            # wrapper for void cv::StereoBM::setDisp12MaxDiff(int disp12MaxDiff)
            def set_disp12_max_diff(_disp12_max_diff)
                Rbind::cv_stereobm_set_disp12_max_diff( self, _disp12_max_diff)
            end

            # wrapper for int cv::StereoBM::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_stereobm_get_int( self, name)
            end

            # wrapper for double cv::StereoBM::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_stereobm_get_double( self, name)
            end

            # wrapper for bool cv::StereoBM::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_stereobm_get_bool( self, name)
            end

            # wrapper for cv::String cv::StereoBM::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_stereobm_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::StereoBM::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_stereobm_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::StereoBM::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_stereobm_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::StereoBM::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_stereobm_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::StereoBM::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_stereobm_set_int( self, name, value)
            end

            # wrapper for void cv::StereoBM::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_stereobm_set_double( self, name, value)
            end

            # wrapper for void cv::StereoBM::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_stereobm_set_bool( self, name, value)
            end

            # wrapper for void cv::StereoBM::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_stereobm_set_string( self, name, value)
            end

            # wrapper for void cv::StereoBM::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_stereobm_set_mat( self, name, value)
            end

            # wrapper for void cv::StereoBM::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_stereobm_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::StereoBM::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_stereobm_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::StereoBM::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_stereobm_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::StereoBM::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_stereobm_param_type( self, name)
            end

            # wrapper for void cv::StereoBM::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_stereobm_get_params( self, names)
            end

            # wrapper for void cv::StereoBM::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_stereobm_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::StereoBM::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_stereobm__create(name)
            end


            # types

        end

        # object wrapping cv::StereoSGBM
        class StereoSGBMStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_stereosgbm_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class StereoSGBM
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(StereoSGBMStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? StereoSGBM
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                StereoSGBM.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? StereoSGBMStruct
                                   ptr
                               else
                                   StereoSGBMStruct.new(FFI::AutoPointer.new(ptr,StereoSGBMStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            MODE_SGBM = 0
            MODE_HH = 1


            # methods
            # wrapper for void cv::StereoSGBM::setPreFilterCap(int preFilterCap)
            def set_pre_filter_cap(pre_filter_cap)
                Rbind::cv_stereosgbm_set_pre_filter_cap( self, pre_filter_cap)
            end

            # wrapper for void cv::StereoSGBM::setUniquenessRatio(int uniquenessRatio)
            def set_uniqueness_ratio(uniqueness_ratio)
                Rbind::cv_stereosgbm_set_uniqueness_ratio( self, uniqueness_ratio)
            end

            # wrapper for void cv::StereoSGBM::setP1(int P1)
            def setp1(_p1)
                Rbind::cv_stereosgbm_setp1( self, _p1)
            end

            # wrapper for void cv::StereoSGBM::setP2(int P2)
            def setp2(_p2)
                Rbind::cv_stereosgbm_setp2( self, _p2)
            end

            # wrapper for void cv::StereoSGBM::setMode(int mode)
            def set_mode(mode)
                Rbind::cv_stereosgbm_set_mode( self, mode)
            end

            # wrapper for void cv::StereoSGBM::compute(const cv::Mat left, const cv::Mat right, cv::Mat disparity)
            def compute(left, right, disparity)
                Rbind::cv_stereosgbm_compute( self, left, right, disparity)
            end

            # wrapper for void cv::StereoSGBM::setMinDisparity(int minDisparity)
            def set_min_disparity(min_disparity)
                Rbind::cv_stereosgbm_set_min_disparity( self, min_disparity)
            end

            # wrapper for void cv::StereoSGBM::setNumDisparities(int numDisparities)
            def set_num_disparities(num_disparities)
                Rbind::cv_stereosgbm_set_num_disparities( self, num_disparities)
            end

            # wrapper for void cv::StereoSGBM::setBlockSize(int blockSize)
            def set_block_size(block_size)
                Rbind::cv_stereosgbm_set_block_size( self, block_size)
            end

            # wrapper for void cv::StereoSGBM::setSpeckleWindowSize(int speckleWindowSize)
            def set_speckle_window_size(speckle_window_size)
                Rbind::cv_stereosgbm_set_speckle_window_size( self, speckle_window_size)
            end

            # wrapper for void cv::StereoSGBM::setSpeckleRange(int speckleRange)
            def set_speckle_range(speckle_range)
                Rbind::cv_stereosgbm_set_speckle_range( self, speckle_range)
            end

            # wrapper for void cv::StereoSGBM::setDisp12MaxDiff(int disp12MaxDiff)
            def set_disp12_max_diff(_disp12_max_diff)
                Rbind::cv_stereosgbm_set_disp12_max_diff( self, _disp12_max_diff)
            end

            # wrapper for int cv::StereoSGBM::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_stereosgbm_get_int( self, name)
            end

            # wrapper for double cv::StereoSGBM::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_stereosgbm_get_double( self, name)
            end

            # wrapper for bool cv::StereoSGBM::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_stereosgbm_get_bool( self, name)
            end

            # wrapper for cv::String cv::StereoSGBM::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_stereosgbm_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::StereoSGBM::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_stereosgbm_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::StereoSGBM::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_stereosgbm_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::StereoSGBM::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_stereosgbm_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::StereoSGBM::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_stereosgbm_set_int( self, name, value)
            end

            # wrapper for void cv::StereoSGBM::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_stereosgbm_set_double( self, name, value)
            end

            # wrapper for void cv::StereoSGBM::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_stereosgbm_set_bool( self, name, value)
            end

            # wrapper for void cv::StereoSGBM::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_stereosgbm_set_string( self, name, value)
            end

            # wrapper for void cv::StereoSGBM::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_stereosgbm_set_mat( self, name, value)
            end

            # wrapper for void cv::StereoSGBM::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_stereosgbm_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::StereoSGBM::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_stereosgbm_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::StereoSGBM::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_stereosgbm_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::StereoSGBM::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_stereosgbm_param_type( self, name)
            end

            # wrapper for void cv::StereoSGBM::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_stereosgbm_get_params( self, names)
            end

            # wrapper for void cv::StereoSGBM::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_stereosgbm_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::StereoSGBM::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_stereosgbm__create(name)
            end


            # types

        end

        # object wrapping cv::DescriptorExtractor
        class DescriptorExtractorStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_descriptor_extractor_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class DescriptorExtractor
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(DescriptorExtractorStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? DescriptorExtractor
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                DescriptorExtractor.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? DescriptorExtractorStruct
                                   ptr
                               else
                                   DescriptorExtractorStruct.new(FFI::AutoPointer.new(ptr,DescriptorExtractorStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::DescriptorExtractor::compute(const cv::Mat image, vector_KeyPoint keypoints, cv::Mat descriptors)
            def compute(image, keypoints, descriptors)
                Rbind::cv_descriptor_extractor_compute( self, image, keypoints, descriptors)
            end

            # wrapper for bool cv::DescriptorExtractor::empty()
            def empty()
                Rbind::cv_descriptor_extractor_empty( self)
            end

            # wrapper for Ptr_DescriptorExtractor cv::DescriptorExtractor::create(const cv::String descriptorExtractorType)
            def self.create(descriptor_extractor_type)
                Rbind::cv_descriptor_extractor_create(descriptor_extractor_type)
            end

            # wrapper for int cv::DescriptorExtractor::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_descriptor_extractor_get_int( self, name)
            end

            # wrapper for double cv::DescriptorExtractor::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_descriptor_extractor_get_double( self, name)
            end

            # wrapper for bool cv::DescriptorExtractor::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_descriptor_extractor_get_bool( self, name)
            end

            # wrapper for cv::String cv::DescriptorExtractor::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_descriptor_extractor_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::DescriptorExtractor::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_descriptor_extractor_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::DescriptorExtractor::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_descriptor_extractor_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::DescriptorExtractor::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_descriptor_extractor_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::DescriptorExtractor::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_descriptor_extractor_set_int( self, name, value)
            end

            # wrapper for void cv::DescriptorExtractor::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_descriptor_extractor_set_double( self, name, value)
            end

            # wrapper for void cv::DescriptorExtractor::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_descriptor_extractor_set_bool( self, name, value)
            end

            # wrapper for void cv::DescriptorExtractor::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_descriptor_extractor_set_string( self, name, value)
            end

            # wrapper for void cv::DescriptorExtractor::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_descriptor_extractor_set_mat( self, name, value)
            end

            # wrapper for void cv::DescriptorExtractor::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_descriptor_extractor_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::DescriptorExtractor::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_descriptor_extractor_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::DescriptorExtractor::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_descriptor_extractor_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::DescriptorExtractor::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_descriptor_extractor_param_type( self, name)
            end

            # wrapper for void cv::DescriptorExtractor::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_descriptor_extractor_get_params( self, names)
            end

            # wrapper for void cv::DescriptorExtractor::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_descriptor_extractor_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::DescriptorExtractor::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_descriptor_extractor__create(name)
            end


            # types

        end

        # object wrapping cv::Feature2D
        class Feature2DStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_feature2d_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Feature2D
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Feature2DStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Feature2D
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Feature2D.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Feature2DStruct
                                   ptr
                               else
                                   Feature2DStruct.new(FFI::AutoPointer.new(ptr,Feature2DStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::Feature2D::operator()(const cv::Mat image, const cv::Mat mask, vector_KeyPoint keypoints, cv::Mat descriptors, bool useProvidedKeypoints=false)
            def detect_and_compute(image, mask, keypoints, descriptors, use_provided_keypoints = false)
                Rbind::cv_feature2d_detect_and_compute( self, image, mask, keypoints, descriptors, use_provided_keypoints)
            end

            # wrapper for void cv::Feature2D::compute(const cv::Mat image, vector_KeyPoint keypoints, cv::Mat descriptors)
            def compute(image, keypoints, descriptors)
                Rbind::cv_feature2d_compute( self, image, keypoints, descriptors)
            end

            # wrapper for Ptr_Feature2D cv::Feature2D::create(const cv::String name)
            def self.create(name)
                Rbind::cv_feature2d_create(name)
            end

            # wrapper for void cv::Feature2D::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_feature2d_detect( self, image, keypoints, mask)
            end

            # wrapper for overloaded method empty
            def empty(*args)
                # wrapper for bool cv::Feature2D::empty()
                @@cv_feature2d_empty_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_feature2d_empty_defaults0[i]
                    end
                    begin
                        return Rbind::cv_feature2d_empty(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for bool cv::Feature2D::empty()
                @@cv_feature2d_empty2_defaults1 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_feature2d_empty2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_feature2d_empty2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for int cv::Feature2D::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_feature2d_get_int( self, name)
            end

            # wrapper for double cv::Feature2D::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_feature2d_get_double( self, name)
            end

            # wrapper for bool cv::Feature2D::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_feature2d_get_bool( self, name)
            end

            # wrapper for cv::String cv::Feature2D::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_feature2d_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::Feature2D::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_feature2d_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::Feature2D::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_feature2d_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::Feature2D::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_feature2d_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::Feature2D::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_feature2d_set_int( self, name, value)
            end

            # wrapper for void cv::Feature2D::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_feature2d_set_double( self, name, value)
            end

            # wrapper for void cv::Feature2D::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_feature2d_set_bool( self, name, value)
            end

            # wrapper for void cv::Feature2D::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_feature2d_set_string( self, name, value)
            end

            # wrapper for void cv::Feature2D::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_feature2d_set_mat( self, name, value)
            end

            # wrapper for void cv::Feature2D::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_feature2d_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::Feature2D::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_feature2d_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::Feature2D::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_feature2d_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::Feature2D::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_feature2d_param_type( self, name)
            end

            # wrapper for void cv::Feature2D::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_feature2d_get_params( self, names)
            end

            # wrapper for void cv::Feature2D::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_feature2d_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::Feature2D::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_feature2d__create(name)
            end


            # types

        end

        # object wrapping cv::BRISK
        class BRISKStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_brisk_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class BRISK
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(BRISKStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::BRISK::BRISK(int thresh=30, int octaves=3, float patternScale=1.0f)
                @@cv_brisk_brisk_defaults0 ||= [30, 3, 1.0]
                if(args.size >= 0 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_brisk_brisk_defaults0[i]
                    end
                    begin
                        return Rbind::cv_brisk_brisk(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::BRISK::BRISK(vector_float radiusList, vector_int numberList, float dMax=5.85f, float dMin=8.2f, const vector_int indexChange=vector_int())
                @@cv_brisk_brisk2_defaults1 ||= [nil, nil, 5.85, 8.2, VectorInt.new()]
                if(args.size >= 2 && args.size <= 5)
                    args.size.upto(4) do |i|
                        args[i] = @@cv_brisk_brisk2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_brisk_brisk2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? BRISK
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                BRISK.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? BRISKStruct
                                   ptr
                               else
                                   BRISKStruct.new(FFI::AutoPointer.new(ptr,BRISKStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::BRISK::generateKernel(vector_float radiusList, vector_int numberList, float dMax=5.85f, float dMin=8.2f, const vector_int indexChange=vector_int())
            def generate_kernel(radius_list, number_list, d_max = 5.85, d_min = 8.2, index_change = VectorInt.new())
                Rbind::cv_brisk_generate_kernel( self, radius_list, number_list, d_max, d_min, index_change)
            end

            # wrapper for void cv::BRISK::operator()(const cv::Mat image, const cv::Mat mask, vector_KeyPoint keypoints, cv::Mat descriptors, bool useProvidedKeypoints=false)
            def detect_and_compute(image, mask, keypoints, descriptors, use_provided_keypoints = false)
                Rbind::cv_brisk_detect_and_compute( self, image, mask, keypoints, descriptors, use_provided_keypoints)
            end

            # wrapper for void cv::BRISK::compute(const cv::Mat image, vector_KeyPoint keypoints, cv::Mat descriptors)
            def compute(image, keypoints, descriptors)
                Rbind::cv_brisk_compute( self, image, keypoints, descriptors)
            end

            # wrapper for Ptr_Feature2D cv::BRISK::create(const cv::String name)
            def self.create(name)
                Rbind::cv_brisk_create(name)
            end

            # wrapper for void cv::BRISK::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_brisk_detect( self, image, keypoints, mask)
            end

            # wrapper for overloaded method empty
            def empty(*args)
                # wrapper for bool cv::BRISK::empty()
                @@cv_brisk_empty_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_brisk_empty_defaults0[i]
                    end
                    begin
                        return Rbind::cv_brisk_empty(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for bool cv::BRISK::empty()
                @@cv_brisk_empty2_defaults1 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_brisk_empty2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_brisk_empty2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for int cv::BRISK::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_brisk_get_int( self, name)
            end

            # wrapper for double cv::BRISK::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_brisk_get_double( self, name)
            end

            # wrapper for bool cv::BRISK::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_brisk_get_bool( self, name)
            end

            # wrapper for cv::String cv::BRISK::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_brisk_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::BRISK::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_brisk_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::BRISK::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_brisk_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::BRISK::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_brisk_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::BRISK::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_brisk_set_int( self, name, value)
            end

            # wrapper for void cv::BRISK::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_brisk_set_double( self, name, value)
            end

            # wrapper for void cv::BRISK::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_brisk_set_bool( self, name, value)
            end

            # wrapper for void cv::BRISK::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_brisk_set_string( self, name, value)
            end

            # wrapper for void cv::BRISK::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_brisk_set_mat( self, name, value)
            end

            # wrapper for void cv::BRISK::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_brisk_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::BRISK::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_brisk_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::BRISK::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_brisk_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::BRISK::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_brisk_param_type( self, name)
            end

            # wrapper for void cv::BRISK::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_brisk_get_params( self, names)
            end

            # wrapper for void cv::BRISK::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_brisk_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::BRISK::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_brisk_create(name)
            end


            # types

        end

        # object wrapping cv::ORB
        class ORBStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_orb_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class ORB
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(ORBStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::ORB::ORB(int nfeatures=500, float scaleFactor=1.2f, int nlevels=8, int edgeThreshold=31, int firstLevel=0, int WTA_K=2, int scoreType=ORB::HARRIS_SCORE, int patchSize=31)
                @@cv_orb_orb_defaults0 ||= [500, 1.2, 8, 31, 0, 2, ORB::HARRIS_SCORE, 31]
                if(args.size >= 0 && args.size <= 8)
                    args.size.upto(7) do |i|
                        args[i] = @@cv_orb_orb_defaults0[i]
                    end
                    begin
                        return Rbind::cv_orb_orb(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? ORB
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                ORB.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? ORBStruct
                                   ptr
                               else
                                   ORBStruct.new(FFI::AutoPointer.new(ptr,ORBStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            kBytes = 32
            HARRIS_SCORE = 0
            FAST_SCORE = 1


            # methods
            # wrapper for void cv::ORB::operator()(const cv::Mat image, const cv::Mat mask, vector_KeyPoint keypoints, cv::Mat descriptors, bool useProvidedKeypoints=false)
            def detect_and_compute(image, mask, keypoints, descriptors, use_provided_keypoints = false)
                Rbind::cv_orb_detect_and_compute( self, image, mask, keypoints, descriptors, use_provided_keypoints)
            end

            # wrapper for void cv::ORB::compute(const cv::Mat image, vector_KeyPoint keypoints, cv::Mat descriptors)
            def compute(image, keypoints, descriptors)
                Rbind::cv_orb_compute( self, image, keypoints, descriptors)
            end

            # wrapper for Ptr_Feature2D cv::ORB::create(const cv::String name)
            def self.create(name)
                Rbind::cv_orb_create(name)
            end

            # wrapper for void cv::ORB::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_orb_detect( self, image, keypoints, mask)
            end

            # wrapper for overloaded method empty
            def empty(*args)
                # wrapper for bool cv::ORB::empty()
                @@cv_orb_empty_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_orb_empty_defaults0[i]
                    end
                    begin
                        return Rbind::cv_orb_empty(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for bool cv::ORB::empty()
                @@cv_orb_empty2_defaults1 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_orb_empty2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_orb_empty2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for int cv::ORB::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_orb_get_int( self, name)
            end

            # wrapper for double cv::ORB::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_orb_get_double( self, name)
            end

            # wrapper for bool cv::ORB::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_orb_get_bool( self, name)
            end

            # wrapper for cv::String cv::ORB::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_orb_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::ORB::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_orb_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::ORB::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_orb_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::ORB::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_orb_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::ORB::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_orb_set_int( self, name, value)
            end

            # wrapper for void cv::ORB::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_orb_set_double( self, name, value)
            end

            # wrapper for void cv::ORB::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_orb_set_bool( self, name, value)
            end

            # wrapper for void cv::ORB::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_orb_set_string( self, name, value)
            end

            # wrapper for void cv::ORB::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_orb_set_mat( self, name, value)
            end

            # wrapper for void cv::ORB::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_orb_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::ORB::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_orb_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::ORB::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_orb_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::ORB::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_orb_param_type( self, name)
            end

            # wrapper for void cv::ORB::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_orb_get_params( self, names)
            end

            # wrapper for void cv::ORB::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_orb_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::ORB::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_orb_create(name)
            end


            # types

        end

        # wrapper for cv::FREAK
        module FREAK
            NB_SCALES = 64
            NB_PAIRS = 512
            NB_ORIENPAIRS = 45



        end

        # object wrapping cv::MSER
        class MSERStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_mser_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class MSER
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(MSERStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::MSER::MSER(int _delta=5, int _min_area=60, int _max_area=14400, double _max_variation=0.25, double _min_diversity=.2, int _max_evolution=200, double _area_threshold=1.01, double _min_margin=0.003, int _edge_blur_size=5)
                @@cv_mser_mser_defaults0 ||= [5, 60, 14400, 0.25, 0.2, 200, 1.01, 0.003, 5]
                if(args.size >= 0 && args.size <= 9)
                    args.size.upto(8) do |i|
                        args[i] = @@cv_mser_mser_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mser_mser(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? MSER
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                MSER.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? MSERStruct
                                   ptr
                               else
                                   MSERStruct.new(FFI::AutoPointer.new(ptr,MSERStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for overloaded method detect
            def detect(*args)
                # wrapper for void cv::MSER::operator()(const cv::Mat image, vector_vector_Point msers, const cv::Mat mask=Mat())
                @@cv_mser_detect_defaults0 ||= [nil, nil, Cv::Mat.new()]
                if(args.size >= 2 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_mser_detect_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mser_detect(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::MSER::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
                @@cv_mser_detect1_defaults0 ||= [nil, nil, Cv::Mat.new()]
                if(args.size >= 2 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_mser_detect1_defaults0[i]
                    end
                    begin
                        return Rbind::cv_mser_detect1(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for bool cv::MSER::empty()
            def empty()
                Rbind::cv_mser_empty( self)
            end

            # wrapper for Ptr_FeatureDetector cv::MSER::create(const cv::String detectorType)
            def self.create(detector_type)
                Rbind::cv_mser_create(detector_type)
            end

            # wrapper for int cv::MSER::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_mser_get_int( self, name)
            end

            # wrapper for double cv::MSER::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_mser_get_double( self, name)
            end

            # wrapper for bool cv::MSER::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_mser_get_bool( self, name)
            end

            # wrapper for cv::String cv::MSER::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_mser_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::MSER::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_mser_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::MSER::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_mser_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::MSER::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_mser_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::MSER::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_mser_set_int( self, name, value)
            end

            # wrapper for void cv::MSER::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_mser_set_double( self, name, value)
            end

            # wrapper for void cv::MSER::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_mser_set_bool( self, name, value)
            end

            # wrapper for void cv::MSER::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_mser_set_string( self, name, value)
            end

            # wrapper for void cv::MSER::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_mser_set_mat( self, name, value)
            end

            # wrapper for void cv::MSER::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_mser_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::MSER::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_mser_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::MSER::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_mser_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::MSER::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_mser_param_type( self, name)
            end

            # wrapper for void cv::MSER::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_mser_get_params( self, names)
            end

            # wrapper for void cv::MSER::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_mser_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::MSER::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_mser__create(name)
            end


            # types

        end

        # object wrapping cv::StarDetector
        class StarDetectorStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_star_detector_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class StarDetector
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(StarDetectorStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::StarDetector::StarDetector(int _maxSize=45, int _responseThreshold=30, int _lineThresholdProjected=10, int _lineThresholdBinarized=8, int _suppressNonmaxSize=5)
                @@cv_star_detector_star_detector_defaults0 ||= [45, 30, 10, 8, 5]
                if(args.size >= 0 && args.size <= 5)
                    args.size.upto(4) do |i|
                        args[i] = @@cv_star_detector_star_detector_defaults0[i]
                    end
                    begin
                        return Rbind::cv_star_detector_star_detector(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? StarDetector
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                StarDetector.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? StarDetectorStruct
                                   ptr
                               else
                                   StarDetectorStruct.new(FFI::AutoPointer.new(ptr,StarDetectorStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for overloaded method detect
            def detect(*args)
                # wrapper for void cv::StarDetector::operator()(const cv::Mat image, vector_KeyPoint keypoints)
                @@cv_star_detector_detect_defaults0 ||= [nil, nil]
                if(args.size >= 2 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_star_detector_detect_defaults0[i]
                    end
                    begin
                        return Rbind::cv_star_detector_detect(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::StarDetector::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
                @@cv_star_detector_detect1_defaults0 ||= [nil, nil, Cv::Mat.new()]
                if(args.size >= 2 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_star_detector_detect1_defaults0[i]
                    end
                    begin
                        return Rbind::cv_star_detector_detect1(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for bool cv::StarDetector::empty()
            def empty()
                Rbind::cv_star_detector_empty( self)
            end

            # wrapper for Ptr_FeatureDetector cv::StarDetector::create(const cv::String detectorType)
            def self.create(detector_type)
                Rbind::cv_star_detector_create(detector_type)
            end

            # wrapper for int cv::StarDetector::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_star_detector_get_int( self, name)
            end

            # wrapper for double cv::StarDetector::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_star_detector_get_double( self, name)
            end

            # wrapper for bool cv::StarDetector::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_star_detector_get_bool( self, name)
            end

            # wrapper for cv::String cv::StarDetector::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_star_detector_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::StarDetector::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_star_detector_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::StarDetector::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_star_detector_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::StarDetector::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_star_detector_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::StarDetector::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_star_detector_set_int( self, name, value)
            end

            # wrapper for void cv::StarDetector::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_star_detector_set_double( self, name, value)
            end

            # wrapper for void cv::StarDetector::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_star_detector_set_bool( self, name, value)
            end

            # wrapper for void cv::StarDetector::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_star_detector_set_string( self, name, value)
            end

            # wrapper for void cv::StarDetector::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_star_detector_set_mat( self, name, value)
            end

            # wrapper for void cv::StarDetector::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_star_detector_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::StarDetector::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_star_detector_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::StarDetector::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_star_detector_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::StarDetector::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_star_detector_param_type( self, name)
            end

            # wrapper for void cv::StarDetector::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_star_detector_get_params( self, names)
            end

            # wrapper for void cv::StarDetector::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_star_detector_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::StarDetector::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_star_detector__create(name)
            end


            # types

        end

        # object wrapping cv::FastFeatureDetector
        class FastFeatureDetectorStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_fast_feature_detector_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class FastFeatureDetector
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(FastFeatureDetectorStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::FastFeatureDetector::FastFeatureDetector(int threshold=10, bool nonmaxSuppression=true)
                @@cv_fast_feature_detector_fast_feature_detector_defaults0 ||= [10, true]
                if(args.size >= 0 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_fast_feature_detector_fast_feature_detector_defaults0[i]
                    end
                    begin
                        return Rbind::cv_fast_feature_detector_fast_feature_detector(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::FastFeatureDetector::FastFeatureDetector(int threshold, bool nonmaxSuppression, int type)
                @@cv_fast_feature_detector_fast_feature_detector2_defaults1 ||= [nil, nil, nil]
                if(args.size >= 3 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_fast_feature_detector_fast_feature_detector2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_fast_feature_detector_fast_feature_detector2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? FastFeatureDetector
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                FastFeatureDetector.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? FastFeatureDetectorStruct
                                   ptr
                               else
                                   FastFeatureDetectorStruct.new(FFI::AutoPointer.new(ptr,FastFeatureDetectorStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            TYPE_5_8 = 0
            TYPE_7_12 = 1
            TYPE_9_16 = 2


            # methods
            # wrapper for void cv::FastFeatureDetector::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_fast_feature_detector_detect( self, image, keypoints, mask)
            end

            # wrapper for bool cv::FastFeatureDetector::empty()
            def empty()
                Rbind::cv_fast_feature_detector_empty( self)
            end

            # wrapper for Ptr_FeatureDetector cv::FastFeatureDetector::create(const cv::String detectorType)
            def self.create(detector_type)
                Rbind::cv_fast_feature_detector_create(detector_type)
            end

            # wrapper for int cv::FastFeatureDetector::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_fast_feature_detector_get_int( self, name)
            end

            # wrapper for double cv::FastFeatureDetector::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_fast_feature_detector_get_double( self, name)
            end

            # wrapper for bool cv::FastFeatureDetector::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_fast_feature_detector_get_bool( self, name)
            end

            # wrapper for cv::String cv::FastFeatureDetector::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_fast_feature_detector_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::FastFeatureDetector::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_fast_feature_detector_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::FastFeatureDetector::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_fast_feature_detector_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::FastFeatureDetector::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_fast_feature_detector_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::FastFeatureDetector::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_fast_feature_detector_set_int( self, name, value)
            end

            # wrapper for void cv::FastFeatureDetector::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_fast_feature_detector_set_double( self, name, value)
            end

            # wrapper for void cv::FastFeatureDetector::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_fast_feature_detector_set_bool( self, name, value)
            end

            # wrapper for void cv::FastFeatureDetector::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_fast_feature_detector_set_string( self, name, value)
            end

            # wrapper for void cv::FastFeatureDetector::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_fast_feature_detector_set_mat( self, name, value)
            end

            # wrapper for void cv::FastFeatureDetector::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_fast_feature_detector_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::FastFeatureDetector::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_fast_feature_detector_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::FastFeatureDetector::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_fast_feature_detector_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::FastFeatureDetector::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_fast_feature_detector_param_type( self, name)
            end

            # wrapper for void cv::FastFeatureDetector::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_fast_feature_detector_get_params( self, names)
            end

            # wrapper for void cv::FastFeatureDetector::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_fast_feature_detector_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::FastFeatureDetector::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_fast_feature_detector__create(name)
            end


            # types

        end

        # object wrapping cv::SimpleBlobDetector
        class SimpleBlobDetectorStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_simple_blob_detector_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class SimpleBlobDetector
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(SimpleBlobDetectorStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::SimpleBlobDetector::SimpleBlobDetector(const cv::SimpleBlobDetector::Params parameters=SimpleBlobDetector::Params())
                @@cv_simple_blob_detector_simple_blob_detector_defaults0 ||= [Cv::SimpleBlobDetector::Params.new()]
                if(args.size >= 0 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_simple_blob_detector_simple_blob_detector_defaults0[i]
                    end
                    begin
                        return Rbind::cv_simple_blob_detector_simple_blob_detector(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? SimpleBlobDetector
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                SimpleBlobDetector.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? SimpleBlobDetectorStruct
                                   ptr
                               else
                                   SimpleBlobDetectorStruct.new(FFI::AutoPointer.new(ptr,SimpleBlobDetectorStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::SimpleBlobDetector::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_simple_blob_detector_detect( self, image, keypoints, mask)
            end

            # wrapper for bool cv::SimpleBlobDetector::empty()
            def empty()
                Rbind::cv_simple_blob_detector_empty( self)
            end

            # wrapper for Ptr_FeatureDetector cv::SimpleBlobDetector::create(const cv::String detectorType)
            def self.create(detector_type)
                Rbind::cv_simple_blob_detector_create(detector_type)
            end

            # wrapper for int cv::SimpleBlobDetector::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_simple_blob_detector_get_int( self, name)
            end

            # wrapper for double cv::SimpleBlobDetector::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_simple_blob_detector_get_double( self, name)
            end

            # wrapper for bool cv::SimpleBlobDetector::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_simple_blob_detector_get_bool( self, name)
            end

            # wrapper for cv::String cv::SimpleBlobDetector::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_simple_blob_detector_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::SimpleBlobDetector::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_simple_blob_detector_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::SimpleBlobDetector::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_simple_blob_detector_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::SimpleBlobDetector::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_simple_blob_detector_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::SimpleBlobDetector::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_simple_blob_detector_set_int( self, name, value)
            end

            # wrapper for void cv::SimpleBlobDetector::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_simple_blob_detector_set_double( self, name, value)
            end

            # wrapper for void cv::SimpleBlobDetector::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_simple_blob_detector_set_bool( self, name, value)
            end

            # wrapper for void cv::SimpleBlobDetector::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_simple_blob_detector_set_string( self, name, value)
            end

            # wrapper for void cv::SimpleBlobDetector::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_simple_blob_detector_set_mat( self, name, value)
            end

            # wrapper for void cv::SimpleBlobDetector::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_simple_blob_detector_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::SimpleBlobDetector::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_simple_blob_detector_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::SimpleBlobDetector::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_simple_blob_detector_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::SimpleBlobDetector::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_simple_blob_detector_param_type( self, name)
            end

            # wrapper for void cv::SimpleBlobDetector::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_simple_blob_detector_get_params( self, names)
            end

            # wrapper for void cv::SimpleBlobDetector::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_simple_blob_detector_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::SimpleBlobDetector::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_simple_blob_detector__create(name)
            end


            # types
            # object wrapping cv::SimpleBlobDetector::Params
            class ParamsStruct < FFI::Struct
                layout :version,:uchar,
                       :size,:size_t,
                       :type_id,:pointer,
                       :obj_ptr,:pointer,
                       :bowner,:bool
                # auto delete
                def self.release(pointer)
                    Rbind::delete_cv_simple_blob_detector_params_struct(pointer) unless pointer.null?
                rescue Exception => e
                    puts e
                end
            end

            class Params
                extend FFI::DataConverter
                native_type FFI::Type::POINTER

                def self.new(*args)
                    if args.first.is_a?(FFI::Pointer) || args.first.is_a?(ParamsStruct)
                        raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                        return super(args.first)
                    end
                    # wrapper for cv::SimpleBlobDetector::Params::Params()
                    @@cv_simple_blob_detector_params_params_defaults0 ||= []
                    if(args.size >= 0 && args.size <= 0)
                        args.size.upto(-1) do |i|
                            args[i] = @@cv_simple_blob_detector_params_params_defaults0[i]
                        end
                        begin
                            return Rbind::cv_simple_blob_detector_params_params(*args)
                        rescue TypeError => e
                            @error = e
                        end
                    end

                    raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
                end

                def self.rbind_to_native(obj,context)
                    if obj.is_a? Params
                        obj.__obj_ptr__
                    else
                        raise TypeError, "expected kind of #{name}, was #{obj.class}"
                    end
                end

                def self.rbind_from_native(ptr,context)
                    Params.new(ptr)
                end

                # can be overwritten by the user
                def self.to_native(obj,context)
                    rbind_to_native(obj,context)
                end

                # can be overwritten by the user
                def self.from_native(ptr,context)
                    rbind_from_native(ptr,context)
                end

                attr_reader :__obj_ptr__
                def initialize(ptr)
                    @__obj_ptr__ = if ptr.is_a? ParamsStruct
                                       ptr
                                   else
                                       ParamsStruct.new(FFI::AutoPointer.new(ptr,ParamsStruct.method(:release)))
                                   end
                end

                # returns true if the underlying pointer is owner of
                # the real object
                def __owner__?
                    @__obj_ptr__[:bowner]
                end

                # custom specializing


                # consts


                # methods
                # wrapper for float thresholdStep
                def threshold_step()
                    Rbind::cv_simple_blob_detector_params_get_threshold_step( self)
                end

                # wrapper for float thresholdStep
                def threshold_step=(value)
                    Rbind::cv_simple_blob_detector_params_set_threshold_step( self, value)
                end

                # wrapper for float minThreshold
                def min_threshold()
                    Rbind::cv_simple_blob_detector_params_get_min_threshold( self)
                end

                # wrapper for float minThreshold
                def min_threshold=(value)
                    Rbind::cv_simple_blob_detector_params_set_min_threshold( self, value)
                end

                # wrapper for float maxThreshold
                def max_threshold()
                    Rbind::cv_simple_blob_detector_params_get_max_threshold( self)
                end

                # wrapper for float maxThreshold
                def max_threshold=(value)
                    Rbind::cv_simple_blob_detector_params_set_max_threshold( self, value)
                end

                # wrapper for size_t minRepeatability
                def min_repeatability()
                    Rbind::cv_simple_blob_detector_params_get_min_repeatability( self)
                end

                # wrapper for size_t minRepeatability
                def min_repeatability=(value)
                    Rbind::cv_simple_blob_detector_params_set_min_repeatability( self, value)
                end

                # wrapper for float minDistBetweenBlobs
                def min_dist_between_blobs()
                    Rbind::cv_simple_blob_detector_params_get_min_dist_between_blobs( self)
                end

                # wrapper for float minDistBetweenBlobs
                def min_dist_between_blobs=(value)
                    Rbind::cv_simple_blob_detector_params_set_min_dist_between_blobs( self, value)
                end

                # wrapper for bool filterByColor
                def filter_by_color()
                    Rbind::cv_simple_blob_detector_params_get_filter_by_color( self)
                end

                # wrapper for bool filterByColor
                def filter_by_color=(value)
                    Rbind::cv_simple_blob_detector_params_set_filter_by_color( self, value)
                end

                # wrapper for uchar blobColor
                def blob_color()
                    Rbind::cv_simple_blob_detector_params_get_blob_color( self)
                end

                # wrapper for uchar blobColor
                def blob_color=(value)
                    Rbind::cv_simple_blob_detector_params_set_blob_color( self, value)
                end

                # wrapper for bool filterByArea
                def filter_by_area()
                    Rbind::cv_simple_blob_detector_params_get_filter_by_area( self)
                end

                # wrapper for bool filterByArea
                def filter_by_area=(value)
                    Rbind::cv_simple_blob_detector_params_set_filter_by_area( self, value)
                end

                # wrapper for float minArea
                def min_area()
                    Rbind::cv_simple_blob_detector_params_get_min_area( self)
                end

                # wrapper for float minArea
                def min_area=(value)
                    Rbind::cv_simple_blob_detector_params_set_min_area( self, value)
                end

                # wrapper for float maxArea
                def max_area()
                    Rbind::cv_simple_blob_detector_params_get_max_area( self)
                end

                # wrapper for float maxArea
                def max_area=(value)
                    Rbind::cv_simple_blob_detector_params_set_max_area( self, value)
                end

                # wrapper for bool filterByCircularity
                def filter_by_circularity()
                    Rbind::cv_simple_blob_detector_params_get_filter_by_circularity( self)
                end

                # wrapper for bool filterByCircularity
                def filter_by_circularity=(value)
                    Rbind::cv_simple_blob_detector_params_set_filter_by_circularity( self, value)
                end

                # wrapper for float minCircularity
                def min_circularity()
                    Rbind::cv_simple_blob_detector_params_get_min_circularity( self)
                end

                # wrapper for float minCircularity
                def min_circularity=(value)
                    Rbind::cv_simple_blob_detector_params_set_min_circularity( self, value)
                end

                # wrapper for float maxCircularity
                def max_circularity()
                    Rbind::cv_simple_blob_detector_params_get_max_circularity( self)
                end

                # wrapper for float maxCircularity
                def max_circularity=(value)
                    Rbind::cv_simple_blob_detector_params_set_max_circularity( self, value)
                end

                # wrapper for bool filterByInertia
                def filter_by_inertia()
                    Rbind::cv_simple_blob_detector_params_get_filter_by_inertia( self)
                end

                # wrapper for bool filterByInertia
                def filter_by_inertia=(value)
                    Rbind::cv_simple_blob_detector_params_set_filter_by_inertia( self, value)
                end

                # wrapper for float minInertiaRatio
                def min_inertia_ratio()
                    Rbind::cv_simple_blob_detector_params_get_min_inertia_ratio( self)
                end

                # wrapper for float minInertiaRatio
                def min_inertia_ratio=(value)
                    Rbind::cv_simple_blob_detector_params_set_min_inertia_ratio( self, value)
                end

                # wrapper for float maxInertiaRatio
                def max_inertia_ratio()
                    Rbind::cv_simple_blob_detector_params_get_max_inertia_ratio( self)
                end

                # wrapper for float maxInertiaRatio
                def max_inertia_ratio=(value)
                    Rbind::cv_simple_blob_detector_params_set_max_inertia_ratio( self, value)
                end

                # wrapper for bool filterByConvexity
                def filter_by_convexity()
                    Rbind::cv_simple_blob_detector_params_get_filter_by_convexity( self)
                end

                # wrapper for bool filterByConvexity
                def filter_by_convexity=(value)
                    Rbind::cv_simple_blob_detector_params_set_filter_by_convexity( self, value)
                end

                # wrapper for float minConvexity
                def min_convexity()
                    Rbind::cv_simple_blob_detector_params_get_min_convexity( self)
                end

                # wrapper for float minConvexity
                def min_convexity=(value)
                    Rbind::cv_simple_blob_detector_params_set_min_convexity( self, value)
                end

                # wrapper for float maxConvexity
                def max_convexity()
                    Rbind::cv_simple_blob_detector_params_get_max_convexity( self)
                end

                # wrapper for float maxConvexity
                def max_convexity=(value)
                    Rbind::cv_simple_blob_detector_params_set_max_convexity( self, value)
                end


                # types

            end


        end

        # object wrapping cv::GridAdaptedFeatureDetector
        class GridAdaptedFeatureDetectorStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_grid_adapted_feature_detector_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class GridAdaptedFeatureDetector
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(GridAdaptedFeatureDetectorStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::GridAdaptedFeatureDetector::GridAdaptedFeatureDetector(const Ptr_FeatureDetector detector=0, int maxTotalKeypoints=1000, int gridRows=4, int gridCols=4)
                @@cv_grid_adapted_feature_detector_grid_adapted_feature_detector_defaults0 ||= [0, 1000, 4, 4]
                if(args.size >= 0 && args.size <= 4)
                    args.size.upto(3) do |i|
                        args[i] = @@cv_grid_adapted_feature_detector_grid_adapted_feature_detector_defaults0[i]
                    end
                    begin
                        return Rbind::cv_grid_adapted_feature_detector_grid_adapted_feature_detector(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? GridAdaptedFeatureDetector
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                GridAdaptedFeatureDetector.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? GridAdaptedFeatureDetectorStruct
                                   ptr
                               else
                                   GridAdaptedFeatureDetectorStruct.new(FFI::AutoPointer.new(ptr,GridAdaptedFeatureDetectorStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::GridAdaptedFeatureDetector::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_grid_adapted_feature_detector_detect( self, image, keypoints, mask)
            end

            # wrapper for bool cv::GridAdaptedFeatureDetector::empty()
            def empty()
                Rbind::cv_grid_adapted_feature_detector_empty( self)
            end

            # wrapper for Ptr_FeatureDetector cv::GridAdaptedFeatureDetector::create(const cv::String detectorType)
            def self.create(detector_type)
                Rbind::cv_grid_adapted_feature_detector_create(detector_type)
            end

            # wrapper for int cv::GridAdaptedFeatureDetector::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_grid_adapted_feature_detector_get_int( self, name)
            end

            # wrapper for double cv::GridAdaptedFeatureDetector::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_grid_adapted_feature_detector_get_double( self, name)
            end

            # wrapper for bool cv::GridAdaptedFeatureDetector::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_grid_adapted_feature_detector_get_bool( self, name)
            end

            # wrapper for cv::String cv::GridAdaptedFeatureDetector::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_grid_adapted_feature_detector_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::GridAdaptedFeatureDetector::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_grid_adapted_feature_detector_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::GridAdaptedFeatureDetector::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_grid_adapted_feature_detector_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::GridAdaptedFeatureDetector::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_grid_adapted_feature_detector_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::GridAdaptedFeatureDetector::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_grid_adapted_feature_detector_set_int( self, name, value)
            end

            # wrapper for void cv::GridAdaptedFeatureDetector::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_grid_adapted_feature_detector_set_double( self, name, value)
            end

            # wrapper for void cv::GridAdaptedFeatureDetector::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_grid_adapted_feature_detector_set_bool( self, name, value)
            end

            # wrapper for void cv::GridAdaptedFeatureDetector::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_grid_adapted_feature_detector_set_string( self, name, value)
            end

            # wrapper for void cv::GridAdaptedFeatureDetector::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_grid_adapted_feature_detector_set_mat( self, name, value)
            end

            # wrapper for void cv::GridAdaptedFeatureDetector::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_grid_adapted_feature_detector_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::GridAdaptedFeatureDetector::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_grid_adapted_feature_detector_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::GridAdaptedFeatureDetector::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_grid_adapted_feature_detector_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::GridAdaptedFeatureDetector::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_grid_adapted_feature_detector_param_type( self, name)
            end

            # wrapper for void cv::GridAdaptedFeatureDetector::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_grid_adapted_feature_detector_get_params( self, names)
            end

            # wrapper for void cv::GridAdaptedFeatureDetector::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_grid_adapted_feature_detector_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::GridAdaptedFeatureDetector::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_grid_adapted_feature_detector__create(name)
            end


            # types

        end

        # object wrapping cv::PyramidAdaptedFeatureDetector
        class PyramidAdaptedFeatureDetectorStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_pyramid_adapted_feature_detector_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class PyramidAdaptedFeatureDetector
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PyramidAdaptedFeatureDetectorStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::PyramidAdaptedFeatureDetector::PyramidAdaptedFeatureDetector(const Ptr_FeatureDetector detector, int maxLevel=2)
                @@cv_pyramid_adapted_feature_detector_pyramid_adapted_feature_detector_defaults0 ||= [nil, 2]
                if(args.size >= 1 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_pyramid_adapted_feature_detector_pyramid_adapted_feature_detector_defaults0[i]
                    end
                    begin
                        return Rbind::cv_pyramid_adapted_feature_detector_pyramid_adapted_feature_detector(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? PyramidAdaptedFeatureDetector
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                PyramidAdaptedFeatureDetector.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? PyramidAdaptedFeatureDetectorStruct
                                   ptr
                               else
                                   PyramidAdaptedFeatureDetectorStruct.new(FFI::AutoPointer.new(ptr,PyramidAdaptedFeatureDetectorStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::PyramidAdaptedFeatureDetector::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_pyramid_adapted_feature_detector_detect( self, image, keypoints, mask)
            end

            # wrapper for bool cv::PyramidAdaptedFeatureDetector::empty()
            def empty()
                Rbind::cv_pyramid_adapted_feature_detector_empty( self)
            end

            # wrapper for Ptr_FeatureDetector cv::PyramidAdaptedFeatureDetector::create(const cv::String detectorType)
            def self.create(detector_type)
                Rbind::cv_pyramid_adapted_feature_detector_create(detector_type)
            end

            # wrapper for int cv::PyramidAdaptedFeatureDetector::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_pyramid_adapted_feature_detector_get_int( self, name)
            end

            # wrapper for double cv::PyramidAdaptedFeatureDetector::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_pyramid_adapted_feature_detector_get_double( self, name)
            end

            # wrapper for bool cv::PyramidAdaptedFeatureDetector::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_pyramid_adapted_feature_detector_get_bool( self, name)
            end

            # wrapper for cv::String cv::PyramidAdaptedFeatureDetector::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_pyramid_adapted_feature_detector_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::PyramidAdaptedFeatureDetector::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_pyramid_adapted_feature_detector_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::PyramidAdaptedFeatureDetector::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_pyramid_adapted_feature_detector_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::PyramidAdaptedFeatureDetector::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_pyramid_adapted_feature_detector_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::PyramidAdaptedFeatureDetector::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_pyramid_adapted_feature_detector_set_int( self, name, value)
            end

            # wrapper for void cv::PyramidAdaptedFeatureDetector::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_pyramid_adapted_feature_detector_set_double( self, name, value)
            end

            # wrapper for void cv::PyramidAdaptedFeatureDetector::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_pyramid_adapted_feature_detector_set_bool( self, name, value)
            end

            # wrapper for void cv::PyramidAdaptedFeatureDetector::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_pyramid_adapted_feature_detector_set_string( self, name, value)
            end

            # wrapper for void cv::PyramidAdaptedFeatureDetector::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_pyramid_adapted_feature_detector_set_mat( self, name, value)
            end

            # wrapper for void cv::PyramidAdaptedFeatureDetector::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_pyramid_adapted_feature_detector_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::PyramidAdaptedFeatureDetector::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_pyramid_adapted_feature_detector_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::PyramidAdaptedFeatureDetector::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_pyramid_adapted_feature_detector_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::PyramidAdaptedFeatureDetector::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_pyramid_adapted_feature_detector_param_type( self, name)
            end

            # wrapper for void cv::PyramidAdaptedFeatureDetector::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_pyramid_adapted_feature_detector_get_params( self, names)
            end

            # wrapper for void cv::PyramidAdaptedFeatureDetector::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_pyramid_adapted_feature_detector_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::PyramidAdaptedFeatureDetector::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_pyramid_adapted_feature_detector__create(name)
            end


            # types

        end

        # wrapper for cv::Hamming
        module Hamming
            normType = NORM_HAMMING



        end

        # object wrapping cv::DescriptorMatcher
        class DescriptorMatcherStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_descriptor_matcher_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class DescriptorMatcher
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(DescriptorMatcherStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? DescriptorMatcher
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                DescriptorMatcher.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? DescriptorMatcherStruct
                                   ptr
                               else
                                   DescriptorMatcherStruct.new(FFI::AutoPointer.new(ptr,DescriptorMatcherStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::DescriptorMatcher::add(const vector_Mat descriptors)
            def add(descriptors)
                Rbind::cv_descriptor_matcher_add( self, descriptors)
            end

            # wrapper for vector_Mat cv::DescriptorMatcher::getTrainDescriptors()
            def get_train_descriptors()
                result = Rbind::cv_descriptor_matcher_get_train_descriptors( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::DescriptorMatcher::clear()
            def clear()
                Rbind::cv_descriptor_matcher_clear( self)
            end

            # wrapper for bool cv::DescriptorMatcher::empty()
            def empty()
                Rbind::cv_descriptor_matcher_empty( self)
            end

            # wrapper for void cv::DescriptorMatcher::train()
            def train()
                Rbind::cv_descriptor_matcher_train( self)
            end

            # wrapper for overloaded method match
            def match(*args)
                # wrapper for void cv::DescriptorMatcher::match(const cv::Mat queryDescriptors, const cv::Mat trainDescriptors, vector_DMatch matches, const cv::Mat mask=Mat())
                @@cv_descriptor_matcher_match_defaults0 ||= [nil, nil, nil, Cv::Mat.new()]
                if(args.size >= 3 && args.size <= 4)
                    args.size.upto(3) do |i|
                        args[i] = @@cv_descriptor_matcher_match_defaults0[i]
                    end
                    begin
                        return Rbind::cv_descriptor_matcher_match(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::DescriptorMatcher::match(const cv::Mat queryDescriptors, vector_DMatch matches, const vector_Mat masks=vector_Mat())
                @@cv_descriptor_matcher_match2_defaults1 ||= [nil, nil, VectorMat.new()]
                if(args.size >= 2 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_descriptor_matcher_match2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_descriptor_matcher_match2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method knn_match
            def knn_match(*args)
                # wrapper for void cv::DescriptorMatcher::knnMatch(const cv::Mat queryDescriptors, const cv::Mat trainDescriptors, vector_vector_DMatch matches, int k, const cv::Mat mask=Mat(), bool compactResult=false)
                @@cv_descriptor_matcher_knn_match_defaults0 ||= [nil, nil, nil, nil, Cv::Mat.new(), false]
                if(args.size >= 4 && args.size <= 6)
                    args.size.upto(5) do |i|
                        args[i] = @@cv_descriptor_matcher_knn_match_defaults0[i]
                    end
                    begin
                        return Rbind::cv_descriptor_matcher_knn_match(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::DescriptorMatcher::knnMatch(const cv::Mat queryDescriptors, vector_vector_DMatch matches, int k, const vector_Mat masks=vector_Mat(), bool compactResult=false)
                @@cv_descriptor_matcher_knn_match2_defaults1 ||= [nil, nil, nil, VectorMat.new(), false]
                if(args.size >= 3 && args.size <= 5)
                    args.size.upto(4) do |i|
                        args[i] = @@cv_descriptor_matcher_knn_match2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_descriptor_matcher_knn_match2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for Ptr_DescriptorMatcher cv::DescriptorMatcher::create(const cv::String descriptorMatcherType)
            def self.create(descriptor_matcher_type)
                Rbind::cv_descriptor_matcher_create(descriptor_matcher_type)
            end

            # wrapper for int cv::DescriptorMatcher::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_descriptor_matcher_get_int( self, name)
            end

            # wrapper for double cv::DescriptorMatcher::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_descriptor_matcher_get_double( self, name)
            end

            # wrapper for bool cv::DescriptorMatcher::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_descriptor_matcher_get_bool( self, name)
            end

            # wrapper for cv::String cv::DescriptorMatcher::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_descriptor_matcher_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::DescriptorMatcher::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_descriptor_matcher_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::DescriptorMatcher::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_descriptor_matcher_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::DescriptorMatcher::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_descriptor_matcher_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::DescriptorMatcher::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_descriptor_matcher_set_int( self, name, value)
            end

            # wrapper for void cv::DescriptorMatcher::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_descriptor_matcher_set_double( self, name, value)
            end

            # wrapper for void cv::DescriptorMatcher::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_descriptor_matcher_set_bool( self, name, value)
            end

            # wrapper for void cv::DescriptorMatcher::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_descriptor_matcher_set_string( self, name, value)
            end

            # wrapper for void cv::DescriptorMatcher::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_descriptor_matcher_set_mat( self, name, value)
            end

            # wrapper for void cv::DescriptorMatcher::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_descriptor_matcher_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::DescriptorMatcher::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_descriptor_matcher_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::DescriptorMatcher::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_descriptor_matcher_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::DescriptorMatcher::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_descriptor_matcher_param_type( self, name)
            end

            # wrapper for void cv::DescriptorMatcher::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_descriptor_matcher_get_params( self, names)
            end

            # wrapper for void cv::DescriptorMatcher::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_descriptor_matcher_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::DescriptorMatcher::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_descriptor_matcher__create(name)
            end


            # types

        end

        # object wrapping cv::BFMatcher
        class BFMatcherStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_bf_matcher_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class BFMatcher
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(BFMatcherStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::BFMatcher::BFMatcher(int normType=NORM_L2, bool crossCheck=false)
                @@cv_bf_matcher_bf_matcher_defaults0 ||= [NORM_L2, false]
                if(args.size >= 0 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_bf_matcher_bf_matcher_defaults0[i]
                    end
                    begin
                        return Rbind::cv_bf_matcher_bf_matcher(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? BFMatcher
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                BFMatcher.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? BFMatcherStruct
                                   ptr
                               else
                                   BFMatcherStruct.new(FFI::AutoPointer.new(ptr,BFMatcherStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::BFMatcher::add(const vector_Mat descriptors)
            def add(descriptors)
                Rbind::cv_bf_matcher_add( self, descriptors)
            end

            # wrapper for vector_Mat cv::BFMatcher::getTrainDescriptors()
            def get_train_descriptors()
                result = Rbind::cv_bf_matcher_get_train_descriptors( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::BFMatcher::clear()
            def clear()
                Rbind::cv_bf_matcher_clear( self)
            end

            # wrapper for bool cv::BFMatcher::empty()
            def empty()
                Rbind::cv_bf_matcher_empty( self)
            end

            # wrapper for void cv::BFMatcher::train()
            def train()
                Rbind::cv_bf_matcher_train( self)
            end

            # wrapper for overloaded method match
            def match(*args)
                # wrapper for void cv::BFMatcher::match(const cv::Mat queryDescriptors, const cv::Mat trainDescriptors, vector_DMatch matches, const cv::Mat mask=Mat())
                @@cv_bf_matcher_match_defaults0 ||= [nil, nil, nil, Cv::Mat.new()]
                if(args.size >= 3 && args.size <= 4)
                    args.size.upto(3) do |i|
                        args[i] = @@cv_bf_matcher_match_defaults0[i]
                    end
                    begin
                        return Rbind::cv_bf_matcher_match(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::BFMatcher::match(const cv::Mat queryDescriptors, vector_DMatch matches, const vector_Mat masks=vector_Mat())
                @@cv_bf_matcher_match2_defaults1 ||= [nil, nil, VectorMat.new()]
                if(args.size >= 2 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_bf_matcher_match2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_bf_matcher_match2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method knn_match
            def knn_match(*args)
                # wrapper for void cv::BFMatcher::knnMatch(const cv::Mat queryDescriptors, const cv::Mat trainDescriptors, vector_vector_DMatch matches, int k, const cv::Mat mask=Mat(), bool compactResult=false)
                @@cv_bf_matcher_knn_match_defaults0 ||= [nil, nil, nil, nil, Cv::Mat.new(), false]
                if(args.size >= 4 && args.size <= 6)
                    args.size.upto(5) do |i|
                        args[i] = @@cv_bf_matcher_knn_match_defaults0[i]
                    end
                    begin
                        return Rbind::cv_bf_matcher_knn_match(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::BFMatcher::knnMatch(const cv::Mat queryDescriptors, vector_vector_DMatch matches, int k, const vector_Mat masks=vector_Mat(), bool compactResult=false)
                @@cv_bf_matcher_knn_match2_defaults1 ||= [nil, nil, nil, VectorMat.new(), false]
                if(args.size >= 3 && args.size <= 5)
                    args.size.upto(4) do |i|
                        args[i] = @@cv_bf_matcher_knn_match2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_bf_matcher_knn_match2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for Ptr_DescriptorMatcher cv::BFMatcher::create(const cv::String descriptorMatcherType)
            def self.create(descriptor_matcher_type)
                Rbind::cv_bf_matcher_create(descriptor_matcher_type)
            end

            # wrapper for int cv::BFMatcher::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_bf_matcher_get_int( self, name)
            end

            # wrapper for double cv::BFMatcher::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_bf_matcher_get_double( self, name)
            end

            # wrapper for bool cv::BFMatcher::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_bf_matcher_get_bool( self, name)
            end

            # wrapper for cv::String cv::BFMatcher::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_bf_matcher_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::BFMatcher::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_bf_matcher_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::BFMatcher::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_bf_matcher_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::BFMatcher::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_bf_matcher_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::BFMatcher::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_bf_matcher_set_int( self, name, value)
            end

            # wrapper for void cv::BFMatcher::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_bf_matcher_set_double( self, name, value)
            end

            # wrapper for void cv::BFMatcher::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_bf_matcher_set_bool( self, name, value)
            end

            # wrapper for void cv::BFMatcher::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_bf_matcher_set_string( self, name, value)
            end

            # wrapper for void cv::BFMatcher::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_bf_matcher_set_mat( self, name, value)
            end

            # wrapper for void cv::BFMatcher::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_bf_matcher_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::BFMatcher::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_bf_matcher_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::BFMatcher::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_bf_matcher_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::BFMatcher::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_bf_matcher_param_type( self, name)
            end

            # wrapper for void cv::BFMatcher::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_bf_matcher_get_params( self, names)
            end

            # wrapper for void cv::BFMatcher::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_bf_matcher_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::BFMatcher::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_bf_matcher__create(name)
            end


            # types

        end

        # object wrapping cv::FlannBasedMatcher
        class FlannBasedMatcherStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_flann_based_matcher_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class FlannBasedMatcher
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(FlannBasedMatcherStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::FlannBasedMatcher::FlannBasedMatcher(const Ptr_flann_IndexParams indexParams=new flann::KDTreeIndexParams(), const Ptr_flann_SearchParams searchParams=new flann::SearchParams())
                @@cv_flann_based_matcher_flann_based_matcher_defaults0 ||= [Cv::Flann.new(), Cv::Flann::SearchParams.new()]
                if(args.size >= 0 && args.size <= 2)
                    args.size.upto(1) do |i|
                        args[i] = @@cv_flann_based_matcher_flann_based_matcher_defaults0[i]
                    end
                    begin
                        return Rbind::cv_flann_based_matcher_flann_based_matcher(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? FlannBasedMatcher
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                FlannBasedMatcher.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? FlannBasedMatcherStruct
                                   ptr
                               else
                                   FlannBasedMatcherStruct.new(FFI::AutoPointer.new(ptr,FlannBasedMatcherStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for void cv::FlannBasedMatcher::add(const vector_Mat descriptors)
            def add(descriptors)
                Rbind::cv_flann_based_matcher_add( self, descriptors)
            end

            # wrapper for vector_Mat cv::FlannBasedMatcher::getTrainDescriptors()
            def get_train_descriptors()
                result = Rbind::cv_flann_based_matcher_get_train_descriptors( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::FlannBasedMatcher::clear()
            def clear()
                Rbind::cv_flann_based_matcher_clear( self)
            end

            # wrapper for bool cv::FlannBasedMatcher::empty()
            def empty()
                Rbind::cv_flann_based_matcher_empty( self)
            end

            # wrapper for void cv::FlannBasedMatcher::train()
            def train()
                Rbind::cv_flann_based_matcher_train( self)
            end

            # wrapper for overloaded method match
            def match(*args)
                # wrapper for void cv::FlannBasedMatcher::match(const cv::Mat queryDescriptors, const cv::Mat trainDescriptors, vector_DMatch matches, const cv::Mat mask=Mat())
                @@cv_flann_based_matcher_match_defaults0 ||= [nil, nil, nil, Cv::Mat.new()]
                if(args.size >= 3 && args.size <= 4)
                    args.size.upto(3) do |i|
                        args[i] = @@cv_flann_based_matcher_match_defaults0[i]
                    end
                    begin
                        return Rbind::cv_flann_based_matcher_match(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::FlannBasedMatcher::match(const cv::Mat queryDescriptors, vector_DMatch matches, const vector_Mat masks=vector_Mat())
                @@cv_flann_based_matcher_match2_defaults1 ||= [nil, nil, VectorMat.new()]
                if(args.size >= 2 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_flann_based_matcher_match2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_flann_based_matcher_match2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for overloaded method knn_match
            def knn_match(*args)
                # wrapper for void cv::FlannBasedMatcher::knnMatch(const cv::Mat queryDescriptors, const cv::Mat trainDescriptors, vector_vector_DMatch matches, int k, const cv::Mat mask=Mat(), bool compactResult=false)
                @@cv_flann_based_matcher_knn_match_defaults0 ||= [nil, nil, nil, nil, Cv::Mat.new(), false]
                if(args.size >= 4 && args.size <= 6)
                    args.size.upto(5) do |i|
                        args[i] = @@cv_flann_based_matcher_knn_match_defaults0[i]
                    end
                    begin
                        return Rbind::cv_flann_based_matcher_knn_match(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::FlannBasedMatcher::knnMatch(const cv::Mat queryDescriptors, vector_vector_DMatch matches, int k, const vector_Mat masks=vector_Mat(), bool compactResult=false)
                @@cv_flann_based_matcher_knn_match2_defaults1 ||= [nil, nil, nil, VectorMat.new(), false]
                if(args.size >= 3 && args.size <= 5)
                    args.size.upto(4) do |i|
                        args[i] = @@cv_flann_based_matcher_knn_match2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_flann_based_matcher_knn_match2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for Ptr_DescriptorMatcher cv::FlannBasedMatcher::create(const cv::String descriptorMatcherType)
            def self.create(descriptor_matcher_type)
                Rbind::cv_flann_based_matcher_create(descriptor_matcher_type)
            end

            # wrapper for int cv::FlannBasedMatcher::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_flann_based_matcher_get_int( self, name)
            end

            # wrapper for double cv::FlannBasedMatcher::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_flann_based_matcher_get_double( self, name)
            end

            # wrapper for bool cv::FlannBasedMatcher::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_flann_based_matcher_get_bool( self, name)
            end

            # wrapper for cv::String cv::FlannBasedMatcher::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_flann_based_matcher_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::FlannBasedMatcher::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_flann_based_matcher_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::FlannBasedMatcher::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_flann_based_matcher_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::FlannBasedMatcher::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_flann_based_matcher_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::FlannBasedMatcher::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_flann_based_matcher_set_int( self, name, value)
            end

            # wrapper for void cv::FlannBasedMatcher::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_flann_based_matcher_set_double( self, name, value)
            end

            # wrapper for void cv::FlannBasedMatcher::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_flann_based_matcher_set_bool( self, name, value)
            end

            # wrapper for void cv::FlannBasedMatcher::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_flann_based_matcher_set_string( self, name, value)
            end

            # wrapper for void cv::FlannBasedMatcher::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_flann_based_matcher_set_mat( self, name, value)
            end

            # wrapper for void cv::FlannBasedMatcher::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_flann_based_matcher_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::FlannBasedMatcher::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_flann_based_matcher_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::FlannBasedMatcher::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_flann_based_matcher_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::FlannBasedMatcher::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_flann_based_matcher_param_type( self, name)
            end

            # wrapper for void cv::FlannBasedMatcher::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_flann_based_matcher_get_params( self, names)
            end

            # wrapper for void cv::FlannBasedMatcher::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_flann_based_matcher_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::FlannBasedMatcher::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_flann_based_matcher__create(name)
            end


            # types

        end

        # wrapper for cv::DrawMatchesFlags
        module DrawMatchesFlags
            DEFAULT = 0
            DRAW_OVER_OUTIMG = 1
            NOT_DRAW_SINGLE_POINTS = 2
            DRAW_RICH_KEYPOINTS = 4



        end

        # object wrapping cv::VideoCapture
        class VideoCaptureStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_video_capture_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class VideoCapture
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VideoCaptureStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::VideoCapture::VideoCapture()
                @@cv_video_capture_video_capture_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_video_capture_video_capture_defaults0[i]
                    end
                    begin
                        return Rbind::cv_video_capture_video_capture(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::VideoCapture::VideoCapture(const cv::String filename)
                @@cv_video_capture_video_capture2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_video_capture_video_capture2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_video_capture_video_capture2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::VideoCapture::VideoCapture(int device)
                @@cv_video_capture_video_capture3_defaults2 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_video_capture_video_capture3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_video_capture_video_capture3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? VideoCapture
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                VideoCapture.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? VideoCaptureStruct
                                   ptr
                               else
                                   VideoCaptureStruct.new(FFI::AutoPointer.new(ptr,VideoCaptureStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for overloaded method open
            def open(*args)
                # wrapper for bool cv::VideoCapture::open(const cv::String filename)
                @@cv_video_capture_open_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_video_capture_open_defaults0[i]
                    end
                    begin
                        return Rbind::cv_video_capture_open(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for bool cv::VideoCapture::open(int device)
                @@cv_video_capture_open2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_video_capture_open2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_video_capture_open2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for bool cv::VideoCapture::isOpened()
            def is_opened()
                Rbind::cv_video_capture_is_opened( self)
            end

            # wrapper for void cv::VideoCapture::release()
            def release()
                Rbind::cv_video_capture_release( self)
            end

            # wrapper for bool cv::VideoCapture::grab()
            def grab()
                Rbind::cv_video_capture_grab( self)
            end

            # wrapper for bool cv::VideoCapture::retrieve(cv::Mat image, int flag=0)
            def retrieve(image, flag = 0)
                Rbind::cv_video_capture_retrieve( self, image, flag)
            end

            # wrapper for bool cv::VideoCapture::read(cv::Mat image)
            def read(image)
                Rbind::cv_video_capture_read( self, image)
            end

            # wrapper for bool cv::VideoCapture::set(int propId, double value)
            def set(prop_id, value)
                Rbind::cv_video_capture_set( self, prop_id, value)
            end

            # wrapper for double cv::VideoCapture::get(int propId)
            def get(prop_id)
                Rbind::cv_video_capture_get( self, prop_id)
            end


            # types

        end

        # object wrapping cv::VideoWriter
        class VideoWriterStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_video_writer_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class VideoWriter
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VideoWriterStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::VideoWriter::VideoWriter()
                @@cv_video_writer_video_writer_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_video_writer_video_writer_defaults0[i]
                    end
                    begin
                        return Rbind::cv_video_writer_video_writer(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::VideoWriter::VideoWriter(const cv::String filename, int fourcc, double fps, const cv::Size frameSize, bool isColor=true)
                @@cv_video_writer_video_writer2_defaults1 ||= [nil, nil, nil, nil, true]
                if(args.size >= 4 && args.size <= 5)
                    args.size.upto(4) do |i|
                        args[i] = @@cv_video_writer_video_writer2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_video_writer_video_writer2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? VideoWriter
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                VideoWriter.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? VideoWriterStruct
                                   ptr
                               else
                                   VideoWriterStruct.new(FFI::AutoPointer.new(ptr,VideoWriterStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for bool cv::VideoWriter::open(const cv::String filename, int fourcc, double fps, const cv::Size frameSize, bool isColor=true)
            def open(filename, fourcc, fps, frame_size, is_color = true)
                Rbind::cv_video_writer_open( self, filename, fourcc, fps, frame_size, is_color)
            end

            # wrapper for bool cv::VideoWriter::isOpened()
            def is_opened()
                Rbind::cv_video_writer_is_opened( self)
            end

            # wrapper for void cv::VideoWriter::release()
            def release()
                Rbind::cv_video_writer_release( self)
            end

            # wrapper for void cv::VideoWriter::write(const cv::Mat image)
            def write(image)
                Rbind::cv_video_writer_write( self, image)
            end

            # wrapper for int cv::VideoWriter::fourcc(char c1, char c2, char c3, char c4)
            def self.fourcc(_c1, _c2, _c3, _c4)
                Rbind::cv_video_writer_fourcc(_c1, _c2, _c3, _c4)
            end


            # types

        end

        # wrapper for cv::GeneralizedHough
        module GeneralizedHough
            GHT_POSITION = 0
            GHT_SCALE = 1
            GHT_ROTATION = 2



        end

        # object wrapping cv::Subdiv2D
        class Subdiv2DStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_subdiv2d_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class Subdiv2D
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(Subdiv2DStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::Subdiv2D::Subdiv2D()
                @@cv_subdiv2d_subdiv2d_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_subdiv2d_subdiv2d_defaults0[i]
                    end
                    begin
                        return Rbind::cv_subdiv2d_subdiv2d(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::Subdiv2D::Subdiv2D(const cv::Rect rect)
                @@cv_subdiv2d_subdiv2d2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_subdiv2d_subdiv2d2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_subdiv2d_subdiv2d2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? Subdiv2D
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                Subdiv2D.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? Subdiv2DStruct
                                   ptr
                               else
                                   Subdiv2DStruct.new(FFI::AutoPointer.new(ptr,Subdiv2DStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            PTLOC_ERROR = -2
            PTLOC_OUTSIDE_RECT = -1
            PTLOC_INSIDE = 0
            PTLOC_VERTEX = 1
            PTLOC_ON_EDGE = 2
            NEXT_AROUND_ORG = 0x00
            NEXT_AROUND_DST = 0x22
            PREV_AROUND_ORG = 0x11
            PREV_AROUND_DST = 0x33
            NEXT_AROUND_LEFT = 0x13
            NEXT_AROUND_RIGHT = 0x31
            PREV_AROUND_LEFT = 0x20
            PREV_AROUND_RIGHT = 0x02


            # methods
            # wrapper for void cv::Subdiv2D::initDelaunay(const cv::Rect rect)
            def init_delaunay(rect)
                Rbind::cv_subdiv2d_init_delaunay( self, rect)
            end

            # wrapper for overloaded method insert
            def insert(*args)
                # wrapper for int cv::Subdiv2D::insert(const cv::Point2f pt)
                @@cv_subdiv2d_insert_defaults0 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_subdiv2d_insert_defaults0[i]
                    end
                    begin
                        return Rbind::cv_subdiv2d_insert(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::Subdiv2D::insert(const vector_Point2f ptvec)
                @@cv_subdiv2d_insert2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_subdiv2d_insert2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_subdiv2d_insert2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for int cv::Subdiv2D::locate(const cv::Point2f pt, int edge, int vertex)
            def locate(pt, edge, vertex)
                Rbind::cv_subdiv2d_locate( self, pt, edge, vertex)
            end

            # wrapper for int cv::Subdiv2D::findNearest(const cv::Point2f pt, cv::Point2f *nearestPt=0)
            def find_nearest(pt, nearest_pt = 0)
                Rbind::cv_subdiv2d_find_nearest( self, pt, nearest_pt)
            end

            # wrapper for void cv::Subdiv2D::getEdgeList(vector_Vec4f edgeList)
            def get_edge_list(edge_list)
                Rbind::cv_subdiv2d_get_edge_list( self, edge_list)
            end

            # wrapper for void cv::Subdiv2D::getTriangleList(vector_Vec6f triangleList)
            def get_triangle_list(triangle_list)
                Rbind::cv_subdiv2d_get_triangle_list( self, triangle_list)
            end

            # wrapper for void cv::Subdiv2D::getVoronoiFacetList(const vector_int idx, vector_vector_Point2f facetList, vector_Point2f facetCenters)
            def get_voronoi_facet_list(idx, facet_list, facet_centers)
                Rbind::cv_subdiv2d_get_voronoi_facet_list( self, idx, facet_list, facet_centers)
            end

            # wrapper for cv::Point2f cv::Subdiv2D::getVertex(int vertex, int *firstEdge=0)
            def get_vertex(vertex, first_edge = 0)
                result = Rbind::cv_subdiv2d_get_vertex( self, vertex, first_edge)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::Subdiv2D::getEdge(int edge, int nextEdgeType)
            def get_edge(edge, next_edge_type)
                Rbind::cv_subdiv2d_get_edge( self, edge, next_edge_type)
            end

            # wrapper for int cv::Subdiv2D::nextEdge(int edge)
            def next_edge(edge)
                Rbind::cv_subdiv2d_next_edge( self, edge)
            end

            # wrapper for int cv::Subdiv2D::rotateEdge(int edge, int rotate)
            def rotate_edge(edge, rotate)
                Rbind::cv_subdiv2d_rotate_edge( self, edge, rotate)
            end

            # wrapper for int cv::Subdiv2D::symEdge(int edge)
            def sym_edge(edge)
                Rbind::cv_subdiv2d_sym_edge( self, edge)
            end

            # wrapper for int cv::Subdiv2D::edgeOrg(int edge, cv::Point2f *orgpt=0)
            def edge_org(edge, orgpt = 0)
                Rbind::cv_subdiv2d_edge_org( self, edge, orgpt)
            end

            # wrapper for int cv::Subdiv2D::edgeDst(int edge, cv::Point2f *dstpt=0)
            def edge_dst(edge, dstpt = 0)
                Rbind::cv_subdiv2d_edge_dst( self, edge, dstpt)
            end


            # types

        end

        # object wrapping cv::EM
        class EMStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_em_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class EM
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(EMStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::EM::EM(int nclusters=EM::DEFAULT_NCLUSTERS, int covMatType=EM::COV_MAT_DIAGONAL, const cv::TermCriteria termCrit=TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, EM::DEFAULT_MAX_ITERS, FLT_EPSILON))
                @@cv_em_em_defaults0 ||= [EM::DEFAULT_NCLUSTERS, EM::COV_MAT_DIAGONAL, Cv::TermCriteria.new(TermCriteria::COUNT+TermCriteria::EPS, EM::DEFAULT_MAX_ITERS, FLT_EPSILON)]
                if(args.size >= 0 && args.size <= 3)
                    args.size.upto(2) do |i|
                        args[i] = @@cv_em_em_defaults0[i]
                    end
                    begin
                        return Rbind::cv_em_em(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? EM
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                EM.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? EMStruct
                                   ptr
                               else
                                   EMStruct.new(FFI::AutoPointer.new(ptr,EMStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            COV_MAT_SPHERICAL = 0
            COV_MAT_DIAGONAL = 1
            COV_MAT_GENERIC = 2
            COV_MAT_DEFAULT = COV_MAT_DIAGONAL
            DEFAULT_NCLUSTERS = 5
            DEFAULT_MAX_ITERS = 100
            START_E_STEP = 1
            START_M_STEP = 2
            START_AUTO_STEP = 0


            # methods
            # wrapper for void cv::EM::clear()
            def clear()
                Rbind::cv_em_clear( self)
            end

            # wrapper for bool cv::EM::train(const cv::Mat samples, cv::Mat logLikelihoods=Mat(), cv::Mat labels=Mat(), cv::Mat probs=Mat())
            def train(samples, log_likelihoods = Cv::Mat.new(), labels = Cv::Mat.new(), probs = Cv::Mat.new())
                Rbind::cv_em_train( self, samples, log_likelihoods, labels, probs)
            end

            # wrapper for bool cv::EM::trainE(const cv::Mat samples, const cv::Mat means0, const cv::Mat covs0=Mat(), const cv::Mat weights0=Mat(), cv::Mat logLikelihoods=Mat(), cv::Mat labels=Mat(), cv::Mat probs=Mat())
            def traine(samples, _means0, _covs0 = Cv::Mat.new(), _weights0 = Cv::Mat.new(), log_likelihoods = Cv::Mat.new(), labels = Cv::Mat.new(), probs = Cv::Mat.new())
                Rbind::cv_em_traine( self, samples, _means0, _covs0, _weights0, log_likelihoods, labels, probs)
            end

            # wrapper for bool cv::EM::trainM(const cv::Mat samples, const cv::Mat probs0, cv::Mat logLikelihoods=Mat(), cv::Mat labels=Mat(), cv::Mat probs=Mat())
            def trainm(samples, _probs0, log_likelihoods = Cv::Mat.new(), labels = Cv::Mat.new(), probs = Cv::Mat.new())
                Rbind::cv_em_trainm( self, samples, _probs0, log_likelihoods, labels, probs)
            end

            # wrapper for cv::Vec2d cv::EM::predict(const cv::Mat sample, cv::Mat probs=Mat())
            def predict(sample, probs = Cv::Mat.new())
                result = Rbind::cv_em_predict( self, sample, probs)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for bool cv::EM::isTrained()
            def is_trained()
                Rbind::cv_em_is_trained( self)
            end

            # wrapper for int cv::EM::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_em_get_int( self, name)
            end

            # wrapper for double cv::EM::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_em_get_double( self, name)
            end

            # wrapper for bool cv::EM::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_em_get_bool( self, name)
            end

            # wrapper for cv::String cv::EM::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_em_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::EM::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_em_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::EM::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_em_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::EM::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_em_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::EM::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_em_set_int( self, name, value)
            end

            # wrapper for void cv::EM::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_em_set_double( self, name, value)
            end

            # wrapper for void cv::EM::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_em_set_bool( self, name, value)
            end

            # wrapper for void cv::EM::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_em_set_string( self, name, value)
            end

            # wrapper for void cv::EM::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_em_set_mat( self, name, value)
            end

            # wrapper for void cv::EM::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_em_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::EM::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_em_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::EM::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_em_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::EM::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_em_param_type( self, name)
            end

            # wrapper for void cv::EM::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_em_get_params( self, names)
            end

            # wrapper for void cv::EM::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_em_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::EM::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_em__create(name)
            end


            # types

        end

        # object wrapping cv::SIFT
        class SIFTStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_sift_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class SIFT
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(SIFTStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::SIFT::SIFT(int nfeatures=0, int nOctaveLayers=3, double contrastThreshold=0.04, double edgeThreshold=10, double sigma=1.6)
                @@cv_sift_sift_defaults0 ||= [0, 3, 0.04, 10, 1.6]
                if(args.size >= 0 && args.size <= 5)
                    args.size.upto(4) do |i|
                        args[i] = @@cv_sift_sift_defaults0[i]
                    end
                    begin
                        return Rbind::cv_sift_sift(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? SIFT
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                SIFT.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? SIFTStruct
                                   ptr
                               else
                                   SIFTStruct.new(FFI::AutoPointer.new(ptr,SIFTStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for int cv::SIFT::descriptorSize()
            def descriptor_size()
                Rbind::cv_sift_descriptor_size( self)
            end

            # wrapper for int cv::SIFT::descriptorType()
            def descriptor_type()
                Rbind::cv_sift_descriptor_type( self)
            end

            # wrapper for void cv::SIFT::operator()(const cv::Mat image, const cv::Mat mask, vector_KeyPoint keypoints, cv::Mat descriptors, bool useProvidedKeypoints=false)
            def detect_and_compute(image, mask, keypoints, descriptors, use_provided_keypoints = false)
                Rbind::cv_sift_detect_and_compute( self, image, mask, keypoints, descriptors, use_provided_keypoints)
            end

            # wrapper for void cv::SIFT::compute(const cv::Mat image, vector_KeyPoint keypoints, cv::Mat descriptors)
            def compute(image, keypoints, descriptors)
                Rbind::cv_sift_compute( self, image, keypoints, descriptors)
            end

            # wrapper for Ptr_Feature2D cv::SIFT::create(const cv::String name)
            def self.create(name)
                Rbind::cv_sift_create(name)
            end

            # wrapper for void cv::SIFT::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_sift_detect( self, image, keypoints, mask)
            end

            # wrapper for overloaded method empty
            def empty(*args)
                # wrapper for bool cv::SIFT::empty()
                @@cv_sift_empty_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_sift_empty_defaults0[i]
                    end
                    begin
                        return Rbind::cv_sift_empty(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for bool cv::SIFT::empty()
                @@cv_sift_empty2_defaults1 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_sift_empty2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_sift_empty2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for int cv::SIFT::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_sift_get_int( self, name)
            end

            # wrapper for double cv::SIFT::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_sift_get_double( self, name)
            end

            # wrapper for bool cv::SIFT::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_sift_get_bool( self, name)
            end

            # wrapper for cv::String cv::SIFT::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_sift_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::SIFT::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_sift_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::SIFT::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_sift_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::SIFT::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_sift_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::SIFT::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_sift_set_int( self, name, value)
            end

            # wrapper for void cv::SIFT::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_sift_set_double( self, name, value)
            end

            # wrapper for void cv::SIFT::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_sift_set_bool( self, name, value)
            end

            # wrapper for void cv::SIFT::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_sift_set_string( self, name, value)
            end

            # wrapper for void cv::SIFT::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_sift_set_mat( self, name, value)
            end

            # wrapper for void cv::SIFT::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_sift_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::SIFT::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_sift_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::SIFT::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_sift_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::SIFT::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_sift_param_type( self, name)
            end

            # wrapper for void cv::SIFT::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_sift_get_params( self, names)
            end

            # wrapper for void cv::SIFT::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_sift_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::SIFT::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_sift__create(name)
            end


            # types

        end

        # object wrapping cv::SURF
        class SURFStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_surf_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class SURF
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(SURFStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::SURF::SURF()
                @@cv_surf_surf_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_surf_surf_defaults0[i]
                    end
                    begin
                        return Rbind::cv_surf_surf(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::SURF::SURF(double hessianThreshold, int nOctaves=4, int nOctaveLayers=2, bool extended=true, bool upright=false)
                @@cv_surf_surf2_defaults1 ||= [nil, 4, 2, true, false]
                if(args.size >= 1 && args.size <= 5)
                    args.size.upto(4) do |i|
                        args[i] = @@cv_surf_surf2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_surf_surf2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? SURF
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                SURF.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? SURFStruct
                                   ptr
                               else
                                   SURFStruct.new(FFI::AutoPointer.new(ptr,SURFStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for double hessianThreshold
            def hessian_threshold()
                Rbind::cv_surf_get_hessian_threshold( self)
            end

            # wrapper for double hessianThreshold
            def hessian_threshold=(value)
                Rbind::cv_surf_set_hessian_threshold( self, value)
            end

            # wrapper for int nOctaves
            def n_octaves()
                Rbind::cv_surf_getn_octaves( self)
            end

            # wrapper for int nOctaves
            def n_octaves=(value)
                Rbind::cv_surf_setn_octaves( self, value)
            end

            # wrapper for int nOctaveLayers
            def n_octave_layers()
                Rbind::cv_surf_getn_octave_layers( self)
            end

            # wrapper for int nOctaveLayers
            def n_octave_layers=(value)
                Rbind::cv_surf_setn_octave_layers( self, value)
            end

            # wrapper for bool extended
            def extended()
                Rbind::cv_surf_get_extended( self)
            end

            # wrapper for bool extended
            def extended=(value)
                Rbind::cv_surf_set_extended( self, value)
            end

            # wrapper for bool upright
            def upright()
                Rbind::cv_surf_get_upright( self)
            end

            # wrapper for bool upright
            def upright=(value)
                Rbind::cv_surf_set_upright( self, value)
            end

            # wrapper for int cv::SURF::descriptorSize()
            def descriptor_size()
                Rbind::cv_surf_descriptor_size( self)
            end

            # wrapper for int cv::SURF::descriptorType()
            def descriptor_type()
                Rbind::cv_surf_descriptor_type( self)
            end

            # wrapper for void cv::SURF::operator()(const cv::Mat image, const cv::Mat mask, vector_KeyPoint keypoints, cv::Mat descriptors, bool useProvidedKeypoints=false)
            def detect_and_compute(image, mask, keypoints, descriptors, use_provided_keypoints = false)
                Rbind::cv_surf_detect_and_compute( self, image, mask, keypoints, descriptors, use_provided_keypoints)
            end

            # wrapper for void cv::SURF::compute(const cv::Mat image, vector_KeyPoint keypoints, cv::Mat descriptors)
            def compute(image, keypoints, descriptors)
                Rbind::cv_surf_compute( self, image, keypoints, descriptors)
            end

            # wrapper for Ptr_Feature2D cv::SURF::create(const cv::String name)
            def self.create(name)
                Rbind::cv_surf_create(name)
            end

            # wrapper for void cv::SURF::detect(const cv::Mat image, vector_KeyPoint keypoints, const cv::Mat mask=Mat())
            def detect(image, keypoints, mask = Cv::Mat.new())
                Rbind::cv_surf_detect( self, image, keypoints, mask)
            end

            # wrapper for overloaded method empty
            def empty(*args)
                # wrapper for bool cv::SURF::empty()
                @@cv_surf_empty_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_surf_empty_defaults0[i]
                    end
                    begin
                        return Rbind::cv_surf_empty(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for bool cv::SURF::empty()
                @@cv_surf_empty2_defaults1 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_surf_empty2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_surf_empty2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end

            # wrapper for int cv::SURF::getInt(const cv::String name)
            def get_int(name)
                Rbind::cv_surf_get_int( self, name)
            end

            # wrapper for double cv::SURF::getDouble(const cv::String name)
            def get_double(name)
                Rbind::cv_surf_get_double( self, name)
            end

            # wrapper for bool cv::SURF::getBool(const cv::String name)
            def get_bool(name)
                Rbind::cv_surf_get_bool( self, name)
            end

            # wrapper for cv::String cv::SURF::getString(const cv::String name)
            def get_string(name)
                result = Rbind::cv_surf_get_string( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for cv::Mat cv::SURF::getMat(const cv::String name)
            def get_mat(name)
                result = Rbind::cv_surf_get_mat( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for vector_Mat cv::SURF::getMatVector(const cv::String name)
            def get_mat_vector(name)
                result = Rbind::cv_surf_get_mat_vector( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for Ptr_Algorithm cv::SURF::getAlgorithm(const cv::String name)
            def get_algorithm(name)
                result = Rbind::cv_surf_get_algorithm( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for void cv::SURF::setInt(const cv::String name, int value)
            def set_int(name, value)
                Rbind::cv_surf_set_int( self, name, value)
            end

            # wrapper for void cv::SURF::setDouble(const cv::String name, double value)
            def set_double(name, value)
                Rbind::cv_surf_set_double( self, name, value)
            end

            # wrapper for void cv::SURF::setBool(const cv::String name, bool value)
            def set_bool(name, value)
                Rbind::cv_surf_set_bool( self, name, value)
            end

            # wrapper for void cv::SURF::setString(const cv::String name, const cv::String value)
            def set_string(name, value)
                Rbind::cv_surf_set_string( self, name, value)
            end

            # wrapper for void cv::SURF::setMat(const cv::String name, const cv::Mat value)
            def set_mat(name, value)
                Rbind::cv_surf_set_mat( self, name, value)
            end

            # wrapper for void cv::SURF::setMatVector(const cv::String name, const vector_Mat value)
            def set_mat_vector(name, value)
                Rbind::cv_surf_set_mat_vector( self, name, value)
            end

            # wrapper for void cv::SURF::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
            def set_algorithm(name, value)
                Rbind::cv_surf_set_algorithm( self, name, value)
            end

            # wrapper for cv::String cv::SURF::paramHelp(const cv::String name)
            def param_help(name)
                result = Rbind::cv_surf_param_help( self, name)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int cv::SURF::paramType(const cv::String name)
            def param_type(name)
                Rbind::cv_surf_param_type( self, name)
            end

            # wrapper for void cv::SURF::getParams(vector_String names)
            def get_params(names)
                Rbind::cv_surf_get_params( self, names)
            end

            # wrapper for void cv::SURF::getList(vector_String algorithms)
            def self.get_list(algorithms)
                Rbind::cv_surf_get_list(algorithms)
            end

            # wrapper for Ptr_Algorithm cv::SURF::_create(const cv::String name)
            def self._create(name)
                Rbind::cv_surf__create(name)
            end


            # types

        end

        # wrapper for cv::FeatureEvaluator
        module FeatureEvaluator
            HAAR = 0
            LBP = 1
            HOG = 2



        end

        # object wrapping cv::CascadeClassifier
        class CascadeClassifierStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_cascade_classifier_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class CascadeClassifier
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CascadeClassifierStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::CascadeClassifier::CascadeClassifier()
                @@cv_cascade_classifier_cascade_classifier_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_cascade_classifier_cascade_classifier_defaults0[i]
                    end
                    begin
                        return Rbind::cv_cascade_classifier_cascade_classifier(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::CascadeClassifier::CascadeClassifier(const cv::String filename)
                @@cv_cascade_classifier_cascade_classifier2_defaults1 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_cascade_classifier_cascade_classifier2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_cascade_classifier_cascade_classifier2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? CascadeClassifier
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                CascadeClassifier.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? CascadeClassifierStruct
                                   ptr
                               else
                                   CascadeClassifierStruct.new(FFI::AutoPointer.new(ptr,CascadeClassifierStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods
            # wrapper for bool cv::CascadeClassifier::empty()
            def empty()
                Rbind::cv_cascade_classifier_empty( self)
            end

            # wrapper for bool cv::CascadeClassifier::load(const cv::String filename)
            def load(filename)
                Rbind::cv_cascade_classifier_load( self, filename)
            end

            # wrapper for overloaded method detect_multi_scale
            def detect_multi_scale(*args)
                # wrapper for void cv::CascadeClassifier::detectMultiScale(const cv::Mat image, vector_Rect objects, double scaleFactor=1.1, int minNeighbors=3, int flags=0, const cv::Size minSize=Size(), const cv::Size maxSize=Size())
                @@cv_cascade_classifier_detect_multi_scale_defaults0 ||= [nil, nil, 1.1, 3, 0, Cv::Size.new(), Cv::Size.new()]
                if(args.size >= 2 && args.size <= 7)
                    args.size.upto(6) do |i|
                        args[i] = @@cv_cascade_classifier_detect_multi_scale_defaults0[i]
                    end
                    begin
                        return Rbind::cv_cascade_classifier_detect_multi_scale(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::CascadeClassifier::detectMultiScale(const cv::Mat image, vector_Rect objects, vector_int numDetections, double scaleFactor=1.1, int minNeighbors=3, int flags=0, const cv::Size minSize=Size(), const cv::Size maxSize=Size())
                @@cv_cascade_classifier_detect_multi_scale2_defaults1 ||= [nil, nil, nil, 1.1, 3, 0, Cv::Size.new(), Cv::Size.new()]
                if(args.size >= 3 && args.size <= 8)
                    args.size.upto(7) do |i|
                        args[i] = @@cv_cascade_classifier_detect_multi_scale2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_cascade_classifier_detect_multi_scale2(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for void cv::CascadeClassifier::detectMultiScale(const cv::Mat image, vector_Rect objects, vector_int rejectLevels, vector_double levelWeights, double scaleFactor=1.1, int minNeighbors=3, int flags=0, const cv::Size minSize=Size(), const cv::Size maxSize=Size(), bool outputRejectLevels=false)
                @@cv_cascade_classifier_detect_multi_scale3_defaults2 ||= [nil, nil, nil, nil, 1.1, 3, 0, Cv::Size.new(), Cv::Size.new(), false]
                if(args.size >= 4 && args.size <= 10)
                    args.size.upto(9) do |i|
                        args[i] = @@cv_cascade_classifier_detect_multi_scale3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_cascade_classifier_detect_multi_scale3(self,*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "No overloaded signature fits to: #{args.map(&:class)}"
            end


            # types

        end

        # object wrapping cv::HOGDescriptor
        class HOGDescriptorStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cv_hog_descriptor_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class HOGDescriptor
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(HOGDescriptorStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end
                # wrapper for cv::HOGDescriptor::HOGDescriptor()
                @@cv_hog_descriptor_hog_descriptor_defaults0 ||= []
                if(args.size >= 0 && args.size <= 0)
                    args.size.upto(-1) do |i|
                        args[i] = @@cv_hog_descriptor_hog_descriptor_defaults0[i]
                    end
                    begin
                        return Rbind::cv_hog_descriptor_hog_descriptor(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::HOGDescriptor::HOGDescriptor(const cv::Size _winSize, const cv::Size _blockSize, const cv::Size _blockStride, const cv::Size _cellSize, int _nbins, int _derivAperture=1, double _winSigma=-1, int _histogramNormType=HOGDescriptor::L2Hys, double _L2HysThreshold=0.2, bool _gammaCorrection=false, int _nlevels=HOGDescriptor::DEFAULT_NLEVELS)
                @@cv_hog_descriptor_hog_descriptor2_defaults1 ||= [nil, nil, nil, nil, nil, 1, -1, HOGDescriptor::L2Hys, 0.2, false, HOGDescriptor::DEFAULT_NLEVELS]
                if(args.size >= 5 && args.size <= 11)
                    args.size.upto(10) do |i|
                        args[i] = @@cv_hog_descriptor_hog_descriptor2_defaults1[i]
                    end
                    begin
                        return Rbind::cv_hog_descriptor_hog_descriptor2(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                # wrapper for cv::HOGDescriptor::HOGDescriptor(const cv::String filename)
                @@cv_hog_descriptor_hog_descriptor3_defaults2 ||= [nil]
                if(args.size >= 1 && args.size <= 1)
                    args.size.upto(0) do |i|
                        args[i] = @@cv_hog_descriptor_hog_descriptor3_defaults2[i]
                    end
                    begin
                        return Rbind::cv_hog_descriptor_hog_descriptor3(*args)
                    rescue TypeError => e
                        @error = e
                    end
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? HOGDescriptor
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                HOGDescriptor.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? HOGDescriptorStruct
                                   ptr
                               else
                                   HOGDescriptorStruct.new(FFI::AutoPointer.new(ptr,HOGDescriptorStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts
            L2Hys = 0
            DEFAULT_NLEVELS = 64


            # methods
            # wrapper for const cv::Size winSize
            def win_size()
                result = Rbind::cv_hog_descriptor_get_win_size( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for const cv::Size blockSize
            def block_size()
                result = Rbind::cv_hog_descriptor_get_block_size( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for const cv::Size blockStride
            def block_stride()
                result = Rbind::cv_hog_descriptor_get_block_stride( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for const cv::Size cellSize
            def cell_size()
                result = Rbind::cv_hog_descriptor_get_cell_size( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int nbins
            def nbins()
                Rbind::cv_hog_descriptor_get_nbins( self)
            end

            # wrapper for int derivAperture
            def deriv_aperture()
                Rbind::cv_hog_descriptor_get_deriv_aperture( self)
            end

            # wrapper for double winSigma
            def win_sigma()
                Rbind::cv_hog_descriptor_get_win_sigma( self)
            end

            # wrapper for int histogramNormType
            def histogram_norm_type()
                Rbind::cv_hog_descriptor_get_histogram_norm_type( self)
            end

            # wrapper for double L2HysThreshold
            def l2_hys_threshold()
                Rbind::cv_hog_descriptor_get_l2_hys_threshold( self)
            end

            # wrapper for bool gammaCorrection
            def gamma_correction()
                Rbind::cv_hog_descriptor_get_gamma_correction( self)
            end

            # wrapper for const vector_float svmDetector
            def svm_detector()
                result = Rbind::cv_hog_descriptor_get_svm_detector( self)
                # store owner insight the pointer to not get garbage collected
                result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                result
            end

            # wrapper for int nlevels
            def nlevels()
                Rbind::cv_hog_descriptor_get_nlevels( self)
            end

            # wrapper for size_t cv::HOGDescriptor::getDescriptorSize()
            def get_descriptor_size()
                Rbind::cv_hog_descriptor_get_descriptor_size( self)
            end

            # wrapper for bool cv::HOGDescriptor::checkDetectorSize()
            def check_detector_size()
                Rbind::cv_hog_descriptor_check_detector_size( self)
            end

            # wrapper for double cv::HOGDescriptor::getWinSigma()
            def get_win_sigma()
                Rbind::cv_hog_descriptor_get_win_sigma( self)
            end

            # wrapper for void cv::HOGDescriptor::setSVMDetector(const cv::Mat _svmdetector)
            def setsvm_detector(_svmdetector)
                Rbind::cv_hog_descriptor_setsvm_detector( self, _svmdetector)
            end

            # wrapper for bool cv::HOGDescriptor::load(const cv::String filename, const cv::String objname=String())
            def load(filename, objname = Cv::String.new())
                Rbind::cv_hog_descriptor_load( self, filename, objname)
            end

            # wrapper for void cv::HOGDescriptor::save(const cv::String filename, const cv::String objname=String())
            def save(filename, objname = Cv::String.new())
                Rbind::cv_hog_descriptor_save( self, filename, objname)
            end

            # wrapper for void cv::HOGDescriptor::compute(const cv::Mat img, vector_float descriptors, const cv::Size winStride=Size(), const cv::Size padding=Size(), const vector_Point locations=vector_Point())
            def compute(img, descriptors, win_stride = Cv::Size.new(), padding = Cv::Size.new(), locations = VectorPoint.new())
                Rbind::cv_hog_descriptor_compute( self, img, descriptors, win_stride, padding, locations)
            end

            # wrapper for void cv::HOGDescriptor::detect(const cv::Mat img, vector_Point foundLocations, vector_double weights, double hitThreshold=0, const cv::Size winStride=Size(), const cv::Size padding=Size(), const vector_Point searchLocations=vector_Point())
            def detect(img, found_locations, weights, hit_threshold = 0, win_stride = Cv::Size.new(), padding = Cv::Size.new(), search_locations = VectorPoint.new())
                Rbind::cv_hog_descriptor_detect( self, img, found_locations, weights, hit_threshold, win_stride, padding, search_locations)
            end

            # wrapper for void cv::HOGDescriptor::detectMultiScale(const cv::Mat img, vector_Rect foundLocations, vector_double foundWeights, double hitThreshold=0, const cv::Size winStride=Size(), const cv::Size padding=Size(), double scale=1.05, double finalThreshold=2.0, bool useMeanshiftGrouping=false)
            def detect_multi_scale(img, found_locations, found_weights, hit_threshold = 0, win_stride = Cv::Size.new(), padding = Cv::Size.new(), scale = 1.05, final_threshold = 2.0, use_meanshift_grouping = false)
                Rbind::cv_hog_descriptor_detect_multi_scale( self, img, found_locations, found_weights, hit_threshold, win_stride, padding, scale, final_threshold, use_meanshift_grouping)
            end

            # wrapper for void cv::HOGDescriptor::computeGradient(const cv::Mat img, cv::Mat grad, cv::Mat angleOfs, const cv::Size paddingTL=Size(), const cv::Size paddingBR=Size())
            def compute_gradient(img, grad, angle_ofs, padding_t_l = Cv::Size.new(), padding_b_r = Cv::Size.new())
                Rbind::cv_hog_descriptor_compute_gradient( self, img, grad, angle_ofs, padding_t_l, padding_b_r)
            end

            # wrapper for vector_float cv::HOGDescriptor::getDefaultPeopleDetector()
            def self.get_default_people_detector()
                Rbind::cv_hog_descriptor_get_default_people_detector()
            end

            # wrapper for vector_float cv::HOGDescriptor::getDaimlerPeopleDetector()
            def self.get_daimler_people_detector()
                Rbind::cv_hog_descriptor_get_daimler_people_detector()
            end


            # types

        end

        # wrapper for cv::softcascade
        module Softcascade


            # wrapper for cv::softcascade::Detection
            module Detection
                PEDESTRIAN = 1



            end

            # object wrapping cv::softcascade::ChannelFeatureBuilder
            class ChannelFeatureBuilderStruct < FFI::Struct
                layout :version,:uchar,
                       :size,:size_t,
                       :type_id,:pointer,
                       :obj_ptr,:pointer,
                       :bowner,:bool
                # auto delete
                def self.release(pointer)
                    Rbind::delete_cv_softcascade_channel_feature_builder_struct(pointer) unless pointer.null?
                rescue Exception => e
                    puts e
                end
            end

            class ChannelFeatureBuilder
                extend FFI::DataConverter
                native_type FFI::Type::POINTER

                def self.new(*args)
                    if args.first.is_a?(FFI::Pointer) || args.first.is_a?(ChannelFeatureBuilderStruct)
                        raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                        return super(args.first)
                    end

                    raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
                end

                def self.rbind_to_native(obj,context)
                    if obj.is_a? ChannelFeatureBuilder
                        obj.__obj_ptr__
                    else
                        raise TypeError, "expected kind of #{name}, was #{obj.class}"
                    end
                end

                def self.rbind_from_native(ptr,context)
                    ChannelFeatureBuilder.new(ptr)
                end

                # can be overwritten by the user
                def self.to_native(obj,context)
                    rbind_to_native(obj,context)
                end

                # can be overwritten by the user
                def self.from_native(ptr,context)
                    rbind_from_native(ptr,context)
                end

                attr_reader :__obj_ptr__
                def initialize(ptr)
                    @__obj_ptr__ = if ptr.is_a? ChannelFeatureBuilderStruct
                                       ptr
                                   else
                                       ChannelFeatureBuilderStruct.new(FFI::AutoPointer.new(ptr,ChannelFeatureBuilderStruct.method(:release)))
                                   end
                end

                # returns true if the underlying pointer is owner of
                # the real object
                def __owner__?
                    @__obj_ptr__[:bowner]
                end

                # custom specializing


                # consts


                # methods
                # wrapper for void cv::softcascade::ChannelFeatureBuilder::operator()(const cv::Mat src, cv::Mat channels, const cv::Size channelsSize=cv::Size())
                def compute(src, channels, channels_size = Cv::Size.new())
                    Rbind::cv_softcascade_channel_feature_builder_compute( self, src, channels, channels_size)
                end

                # wrapper for Ptr_ChannelFeatureBuilder cv::softcascade::ChannelFeatureBuilder::create(const cv::String featureType)
                def self.create(feature_type)
                    Rbind::cv_softcascade_channel_feature_builder_create(feature_type)
                end

                # wrapper for int cv::softcascade::ChannelFeatureBuilder::getInt(const cv::String name)
                def get_int(name)
                    Rbind::cv_softcascade_channel_feature_builder_get_int( self, name)
                end

                # wrapper for double cv::softcascade::ChannelFeatureBuilder::getDouble(const cv::String name)
                def get_double(name)
                    Rbind::cv_softcascade_channel_feature_builder_get_double( self, name)
                end

                # wrapper for bool cv::softcascade::ChannelFeatureBuilder::getBool(const cv::String name)
                def get_bool(name)
                    Rbind::cv_softcascade_channel_feature_builder_get_bool( self, name)
                end

                # wrapper for cv::String cv::softcascade::ChannelFeatureBuilder::getString(const cv::String name)
                def get_string(name)
                    result = Rbind::cv_softcascade_channel_feature_builder_get_string( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for cv::Mat cv::softcascade::ChannelFeatureBuilder::getMat(const cv::String name)
                def get_mat(name)
                    result = Rbind::cv_softcascade_channel_feature_builder_get_mat( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for vector_Mat cv::softcascade::ChannelFeatureBuilder::getMatVector(const cv::String name)
                def get_mat_vector(name)
                    result = Rbind::cv_softcascade_channel_feature_builder_get_mat_vector( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for Ptr_Algorithm cv::softcascade::ChannelFeatureBuilder::getAlgorithm(const cv::String name)
                def get_algorithm(name)
                    result = Rbind::cv_softcascade_channel_feature_builder_get_algorithm( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for void cv::softcascade::ChannelFeatureBuilder::setInt(const cv::String name, int value)
                def set_int(name, value)
                    Rbind::cv_softcascade_channel_feature_builder_set_int( self, name, value)
                end

                # wrapper for void cv::softcascade::ChannelFeatureBuilder::setDouble(const cv::String name, double value)
                def set_double(name, value)
                    Rbind::cv_softcascade_channel_feature_builder_set_double( self, name, value)
                end

                # wrapper for void cv::softcascade::ChannelFeatureBuilder::setBool(const cv::String name, bool value)
                def set_bool(name, value)
                    Rbind::cv_softcascade_channel_feature_builder_set_bool( self, name, value)
                end

                # wrapper for void cv::softcascade::ChannelFeatureBuilder::setString(const cv::String name, const cv::String value)
                def set_string(name, value)
                    Rbind::cv_softcascade_channel_feature_builder_set_string( self, name, value)
                end

                # wrapper for void cv::softcascade::ChannelFeatureBuilder::setMat(const cv::String name, const cv::Mat value)
                def set_mat(name, value)
                    Rbind::cv_softcascade_channel_feature_builder_set_mat( self, name, value)
                end

                # wrapper for void cv::softcascade::ChannelFeatureBuilder::setMatVector(const cv::String name, const vector_Mat value)
                def set_mat_vector(name, value)
                    Rbind::cv_softcascade_channel_feature_builder_set_mat_vector( self, name, value)
                end

                # wrapper for void cv::softcascade::ChannelFeatureBuilder::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
                def set_algorithm(name, value)
                    Rbind::cv_softcascade_channel_feature_builder_set_algorithm( self, name, value)
                end

                # wrapper for cv::String cv::softcascade::ChannelFeatureBuilder::paramHelp(const cv::String name)
                def param_help(name)
                    result = Rbind::cv_softcascade_channel_feature_builder_param_help( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for int cv::softcascade::ChannelFeatureBuilder::paramType(const cv::String name)
                def param_type(name)
                    Rbind::cv_softcascade_channel_feature_builder_param_type( self, name)
                end

                # wrapper for void cv::softcascade::ChannelFeatureBuilder::getParams(vector_String names)
                def get_params(names)
                    Rbind::cv_softcascade_channel_feature_builder_get_params( self, names)
                end

                # wrapper for void cv::softcascade::ChannelFeatureBuilder::getList(vector_String algorithms)
                def self.get_list(algorithms)
                    Rbind::cv_softcascade_channel_feature_builder_get_list(algorithms)
                end

                # wrapper for Ptr_Algorithm cv::softcascade::ChannelFeatureBuilder::_create(const cv::String name)
                def self._create(name)
                    Rbind::cv_softcascade_channel_feature_builder__create(name)
                end


                # types

            end

            # object wrapping cv::softcascade::Detector
            class DetectorStruct < FFI::Struct
                layout :version,:uchar,
                       :size,:size_t,
                       :type_id,:pointer,
                       :obj_ptr,:pointer,
                       :bowner,:bool
                # auto delete
                def self.release(pointer)
                    Rbind::delete_cv_softcascade_detector_struct(pointer) unless pointer.null?
                rescue Exception => e
                    puts e
                end
            end

            class Detector
                extend FFI::DataConverter
                native_type FFI::Type::POINTER

                def self.new(*args)
                    if args.first.is_a?(FFI::Pointer) || args.first.is_a?(DetectorStruct)
                        raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                        return super(args.first)
                    end
                    # wrapper for cv::softcascade::Detector::Detector(double minScale=0.4, double maxScale=5., int scales=55, int rejCriteria=1)
                    @@cv_softcascade_detector_detector_defaults0 ||= [0.4, 5.0, 55, 1]
                    if(args.size >= 0 && args.size <= 4)
                        args.size.upto(3) do |i|
                            args[i] = @@cv_softcascade_detector_detector_defaults0[i]
                        end
                        begin
                            return Rbind::cv_softcascade_detector_detector(*args)
                        rescue TypeError => e
                            @error = e
                        end
                    end

                    raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
                end

                def self.rbind_to_native(obj,context)
                    if obj.is_a? Detector
                        obj.__obj_ptr__
                    else
                        raise TypeError, "expected kind of #{name}, was #{obj.class}"
                    end
                end

                def self.rbind_from_native(ptr,context)
                    Detector.new(ptr)
                end

                # can be overwritten by the user
                def self.to_native(obj,context)
                    rbind_to_native(obj,context)
                end

                # can be overwritten by the user
                def self.from_native(ptr,context)
                    rbind_from_native(ptr,context)
                end

                attr_reader :__obj_ptr__
                def initialize(ptr)
                    @__obj_ptr__ = if ptr.is_a? DetectorStruct
                                       ptr
                                   else
                                       DetectorStruct.new(FFI::AutoPointer.new(ptr,DetectorStruct.method(:release)))
                                   end
                end

                # returns true if the underlying pointer is owner of
                # the real object
                def __owner__?
                    @__obj_ptr__[:bowner]
                end

                # custom specializing


                # consts
                NO_REJECT = 1
                DOLLAR = 2
                DEFAULT = NO_REJECT


                # methods
                # wrapper for bool cv::softcascade::Detector::load(const cv::FileNode fileNode)
                def load(file_node)
                    Rbind::cv_softcascade_detector_load( self, file_node)
                end

                # wrapper for void cv::softcascade::Detector::read(const cv::FileNode fileNode)
                def read(file_node)
                    Rbind::cv_softcascade_detector_read( self, file_node)
                end

                # wrapper for void cv::softcascade::Detector::detect(const cv::Mat image, const cv::Mat rois, cv::Mat rects, cv::Mat confs)
                def detect(image, rois, rects, confs)
                    Rbind::cv_softcascade_detector_detect( self, image, rois, rects, confs)
                end

                # wrapper for int cv::softcascade::Detector::getInt(const cv::String name)
                def get_int(name)
                    Rbind::cv_softcascade_detector_get_int( self, name)
                end

                # wrapper for double cv::softcascade::Detector::getDouble(const cv::String name)
                def get_double(name)
                    Rbind::cv_softcascade_detector_get_double( self, name)
                end

                # wrapper for bool cv::softcascade::Detector::getBool(const cv::String name)
                def get_bool(name)
                    Rbind::cv_softcascade_detector_get_bool( self, name)
                end

                # wrapper for cv::String cv::softcascade::Detector::getString(const cv::String name)
                def get_string(name)
                    result = Rbind::cv_softcascade_detector_get_string( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for cv::Mat cv::softcascade::Detector::getMat(const cv::String name)
                def get_mat(name)
                    result = Rbind::cv_softcascade_detector_get_mat( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for vector_Mat cv::softcascade::Detector::getMatVector(const cv::String name)
                def get_mat_vector(name)
                    result = Rbind::cv_softcascade_detector_get_mat_vector( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for Ptr_Algorithm cv::softcascade::Detector::getAlgorithm(const cv::String name)
                def get_algorithm(name)
                    result = Rbind::cv_softcascade_detector_get_algorithm( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for void cv::softcascade::Detector::setInt(const cv::String name, int value)
                def set_int(name, value)
                    Rbind::cv_softcascade_detector_set_int( self, name, value)
                end

                # wrapper for void cv::softcascade::Detector::setDouble(const cv::String name, double value)
                def set_double(name, value)
                    Rbind::cv_softcascade_detector_set_double( self, name, value)
                end

                # wrapper for void cv::softcascade::Detector::setBool(const cv::String name, bool value)
                def set_bool(name, value)
                    Rbind::cv_softcascade_detector_set_bool( self, name, value)
                end

                # wrapper for void cv::softcascade::Detector::setString(const cv::String name, const cv::String value)
                def set_string(name, value)
                    Rbind::cv_softcascade_detector_set_string( self, name, value)
                end

                # wrapper for void cv::softcascade::Detector::setMat(const cv::String name, const cv::Mat value)
                def set_mat(name, value)
                    Rbind::cv_softcascade_detector_set_mat( self, name, value)
                end

                # wrapper for void cv::softcascade::Detector::setMatVector(const cv::String name, const vector_Mat value)
                def set_mat_vector(name, value)
                    Rbind::cv_softcascade_detector_set_mat_vector( self, name, value)
                end

                # wrapper for void cv::softcascade::Detector::setAlgorithm(const cv::String name, const Ptr_Algorithm value)
                def set_algorithm(name, value)
                    Rbind::cv_softcascade_detector_set_algorithm( self, name, value)
                end

                # wrapper for cv::String cv::softcascade::Detector::paramHelp(const cv::String name)
                def param_help(name)
                    result = Rbind::cv_softcascade_detector_param_help( self, name)
                    # store owner insight the pointer to not get garbage collected
                    result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
                    result
                end

                # wrapper for int cv::softcascade::Detector::paramType(const cv::String name)
                def param_type(name)
                    Rbind::cv_softcascade_detector_param_type( self, name)
                end

                # wrapper for void cv::softcascade::Detector::getParams(vector_String names)
                def get_params(names)
                    Rbind::cv_softcascade_detector_get_params( self, names)
                end

                # wrapper for void cv::softcascade::Detector::getList(vector_String algorithms)
                def self.get_list(algorithms)
                    Rbind::cv_softcascade_detector_get_list(algorithms)
                end

                # wrapper for Ptr_Algorithm cv::softcascade::Detector::_create(const cv::String name)
                def self._create(name)
                    Rbind::cv_softcascade_detector__create(name)
                end


                # types

            end

            # wrapper for cv::softcascade::Octave
            module Octave
                DBP = 1
                MIP = 2
                HEURISTIC = 4



            end

            # wrapper for cv::softcascade::ChannelsProcessor
            module ChannelsProcessor
                SEPARABLE = 2 << 4



            end

            # wrapper for cv::softcascade::SCascade
            module SCascade
                NO_REJECT = 1
                DOLLAR = 2
                DEFAULT = NO_REJECT
                NMS_MASK = 0xF



            end


        end

        # wrapper for cv::Stitcher
        module Stitcher
            ORIG_RESOL = -1
            OK = 0
            ERR_NEED_MORE_IMGS = 1



        end

        # wrapper for cv::FernClassifier
        module FernClassifier
            PATCH_SIZE = 31
            DEFAULT_STRUCTS = 50
            DEFAULT_STRUCT_SIZE = 9
            DEFAULT_VIEWS = 5000
            DEFAULT_SIGNATURE_SIZE = 176
            COMPRESSION_NONE = 0
            COMPRESSION_RANDOM_PROJ = 1
            COMPRESSION_PCA = 2
            DEFAULT_COMPRESSION_METHOD = COMPRESSION_NONE



        end


    end

    # object wrapping CvTermCriteria
    class CvTermCriteriaStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cv_term_criteria_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvTermCriteria
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvTermCriteriaStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvTermCriteria
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvTermCriteria.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvTermCriteriaStruct
                               ptr
                           else
                               CvTermCriteriaStruct.new(FFI::AutoPointer.new(ptr,CvTermCriteriaStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods

        # types

    end

    # object wrapping CvDTreeNode
    class CvDTreeNodeStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvd_tree_node_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvDTreeNode
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvDTreeNodeStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvDTreeNode
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvDTreeNode.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvDTreeNodeStruct
                               ptr
                           else
                               CvDTreeNodeStruct.new(FFI::AutoPointer.new(ptr,CvDTreeNodeStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods

        # types

    end

    # object wrapping CvSlice
    class CvSliceStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cv_slice_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvSlice
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvSliceStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvSlice
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvSlice.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvSliceStruct
                               ptr
                           else
                               CvSliceStruct.new(FFI::AutoPointer.new(ptr,CvSliceStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods

        # types

    end

    # wrapper for cvflann
    module Cvflann


        # object wrapping cvflann::flann_algorithm_t
        class FlannAlgorithmTStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cvflann_flann_algorithmt_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class FlannAlgorithmT
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(FlannAlgorithmTStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? FlannAlgorithmT
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                FlannAlgorithmT.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? FlannAlgorithmTStruct
                                   ptr
                               else
                                   FlannAlgorithmTStruct.new(FFI::AutoPointer.new(ptr,FlannAlgorithmTStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods

            # types

        end

        # object wrapping cvflann::flann_distance_t
        class FlannDistanceTStruct < FFI::Struct
            layout :version,:uchar,
                   :size,:size_t,
                   :type_id,:pointer,
                   :obj_ptr,:pointer,
                   :bowner,:bool
            # auto delete
            def self.release(pointer)
                Rbind::delete_cvflann_flann_distancet_struct(pointer) unless pointer.null?
            rescue Exception => e
                puts e
            end
        end

        class FlannDistanceT
            extend FFI::DataConverter
            native_type FFI::Type::POINTER

            def self.new(*args)
                if args.first.is_a?(FFI::Pointer) || args.first.is_a?(FlannDistanceTStruct)
                    raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                    return super(args.first)
                end

                raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
            end

            def self.rbind_to_native(obj,context)
                if obj.is_a? FlannDistanceT
                    obj.__obj_ptr__
                else
                    raise TypeError, "expected kind of #{name}, was #{obj.class}"
                end
            end

            def self.rbind_from_native(ptr,context)
                FlannDistanceT.new(ptr)
            end

            # can be overwritten by the user
            def self.to_native(obj,context)
                rbind_to_native(obj,context)
            end

            # can be overwritten by the user
            def self.from_native(ptr,context)
                rbind_from_native(ptr,context)
            end

            attr_reader :__obj_ptr__
            def initialize(ptr)
                @__obj_ptr__ = if ptr.is_a? FlannDistanceTStruct
                                   ptr
                               else
                                   FlannDistanceTStruct.new(FFI::AutoPointer.new(ptr,FlannDistanceTStruct.method(:release)))
                               end
            end

            # returns true if the underlying pointer is owner of
            # the real object
            def __owner__?
                @__obj_ptr__[:bowner]
            end

            # custom specializing


            # consts


            # methods

            # types

        end


    end

    # object wrapping vector_Mat
    class VectorMatStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_mat_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorMat
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorMatStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_Mat::vector_Mat()
            @@vector_mat_vector_mat_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_mat_vector_mat_defaults0[i]
                end
                begin
                    return Rbind::vector_mat_vector_mat(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_Mat::vector_Mat(const vector_Mat other)
            @@vector_mat_vector_mat2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_mat_vector_mat2_defaults1[i]
                end
                begin
                    return Rbind::vector_mat_vector_mat2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorMat
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorMat.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorMatStruct
                               ptr
                           else
                               VectorMatStruct.new(FFI::AutoPointer.new(ptr,VectorMatStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Mat
                        def self.new
                            ::VectorMat.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_Mat::resize(size_t size, const cv::Mat val=cv::Mat)
        def resize(size, val = cv::Mat)
            Rbind::vector_mat_resize( self, size, val)
        end

        # wrapper for size_t vector_Mat::size()
        def size()
            Rbind::vector_mat_size( self)
        end

        # wrapper for size_t vector_Mat::capacity()
        def capacity()
            Rbind::vector_mat_capacity( self)
        end

        # wrapper for bool vector_Mat::empty()
        def empty()
            Rbind::vector_mat_empty( self)
        end

        # wrapper for void vector_Mat::reserve(size_t size)
        def reserve(size)
            Rbind::vector_mat_reserve( self, size)
        end

        # wrapper for cv::Mat vector_Mat::operator[](size_t size)
        def [](size)
            result = Rbind::vector_mat_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Mat vector_Mat::at(size_t size)
        def at(size)
            result = Rbind::vector_mat_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Mat vector_Mat::front()
        def front()
            result = Rbind::vector_mat_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Mat vector_Mat::back()
        def back()
            result = Rbind::vector_mat_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_Mat::data()
        def data()
            Rbind::vector_mat_data( self)
        end

        # wrapper for void vector_Mat::push_back(const cv::Mat other)
        def push_back(other)
            Rbind::vector_mat_push_back( self, other)
        end

        # wrapper for void vector_Mat::pop_back()
        def pop_back()
            Rbind::vector_mat_pop_back( self)
        end

        # wrapper for void vector_Mat::swap(vector_Mat other)
        def swap(other)
            Rbind::vector_mat_swap( self, other)
        end


        # types

    end

    # object wrapping vector_int
    class VectorIntStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_int_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorInt
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorIntStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_int::vector_int()
            @@vector_int_vector_int_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_int_vector_int_defaults0[i]
                end
                begin
                    return Rbind::vector_int_vector_int(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_int::vector_int(const vector_int other)
            @@vector_int_vector_int2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_int_vector_int2_defaults1[i]
                end
                begin
                    return Rbind::vector_int_vector_int2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorInt
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorInt.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorIntStruct
                               ptr
                           else
                               VectorIntStruct.new(FFI::AutoPointer.new(ptr,VectorIntStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Fixnum
                        def self.new
                            ::VectorInt.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_int::resize(size_t size, int val=int)
        def resize(size, val = Fixnum)
            Rbind::vector_int_resize( self, size, val)
        end

        # wrapper for size_t vector_int::size()
        def size()
            Rbind::vector_int_size( self)
        end

        # wrapper for size_t vector_int::capacity()
        def capacity()
            Rbind::vector_int_capacity( self)
        end

        # wrapper for bool vector_int::empty()
        def empty()
            Rbind::vector_int_empty( self)
        end

        # wrapper for void vector_int::reserve(size_t size)
        def reserve(size)
            Rbind::vector_int_reserve( self, size)
        end

        # wrapper for int vector_int::operator[](size_t size)
        def [](size)
            Rbind::vector_int_operator_array( self, size)
        end

        # wrapper for int vector_int::at(size_t size)
        def at(size)
            Rbind::vector_int_at( self, size)
        end

        # wrapper for int vector_int::front()
        def front()
            Rbind::vector_int_front( self)
        end

        # wrapper for int vector_int::back()
        def back()
            Rbind::vector_int_back( self)
        end

        # wrapper for void * vector_int::data()
        def data()
            Rbind::vector_int_data( self)
        end

        # wrapper for void vector_int::push_back(int other)
        def push_back(other)
            Rbind::vector_int_push_back( self, other)
        end

        # wrapper for void vector_int::pop_back()
        def pop_back()
            Rbind::vector_int_pop_back( self)
        end

        # wrapper for void vector_int::swap(vector_int other)
        def swap(other)
            Rbind::vector_int_swap( self, other)
        end


        # types

    end

    # object wrapping vector_Point
    class VectorPointStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_point_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorPoint
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorPointStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_Point::vector_Point()
            @@vector_point_vector_point_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_point_vector_point_defaults0[i]
                end
                begin
                    return Rbind::vector_point_vector_point(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_Point::vector_Point(const vector_Point other)
            @@vector_point_vector_point2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_point_vector_point2_defaults1[i]
                end
                begin
                    return Rbind::vector_point_vector_point2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorPoint
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorPoint.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorPointStruct
                               ptr
                           else
                               VectorPointStruct.new(FFI::AutoPointer.new(ptr,VectorPointStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Point
                        def self.new
                            ::VectorPoint.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_Point::resize(size_t size, const cv::Point val=cv::Point)
        def resize(size, val = cv::Point)
            Rbind::vector_point_resize( self, size, val)
        end

        # wrapper for size_t vector_Point::size()
        def size()
            Rbind::vector_point_size( self)
        end

        # wrapper for size_t vector_Point::capacity()
        def capacity()
            Rbind::vector_point_capacity( self)
        end

        # wrapper for bool vector_Point::empty()
        def empty()
            Rbind::vector_point_empty( self)
        end

        # wrapper for void vector_Point::reserve(size_t size)
        def reserve(size)
            Rbind::vector_point_reserve( self, size)
        end

        # wrapper for cv::Point vector_Point::operator[](size_t size)
        def [](size)
            result = Rbind::vector_point_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point vector_Point::at(size_t size)
        def at(size)
            result = Rbind::vector_point_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point vector_Point::front()
        def front()
            result = Rbind::vector_point_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point vector_Point::back()
        def back()
            result = Rbind::vector_point_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_Point::data()
        def data()
            Rbind::vector_point_data( self)
        end

        # wrapper for void vector_Point::push_back(const cv::Point other)
        def push_back(other)
            Rbind::vector_point_push_back( self, other)
        end

        # wrapper for void vector_Point::pop_back()
        def pop_back()
            Rbind::vector_point_pop_back( self)
        end

        # wrapper for void vector_Point::swap(vector_Point other)
        def swap(other)
            Rbind::vector_point_swap( self, other)
        end


        # types

    end

    # object wrapping Ptr_Algorithm
    class PtrAlgorithmStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_algorithm_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrAlgorithm
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrAlgorithmStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_Algorithm::Ptr_Algorithm(const Ptr_Algorithm other)
            @@ptr_algorithm_ptr_algorithm_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_algorithm_ptr_algorithm_defaults0[i]
                end
                begin
                    return Rbind::ptr_algorithm_ptr_algorithm(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrAlgorithm
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrAlgorithm.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrAlgorithmStruct
                               ptr
                           else
                               PtrAlgorithmStruct.new(FFI::AutoPointer.new(ptr,PtrAlgorithmStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002cc9c58> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_Algorithm::addref()
        def addref()
            Rbind::ptr_algorithm_addref( self)
        end

        # wrapper for void Ptr_Algorithm::release()
        def release()
            Rbind::ptr_algorithm_release( self)
        end

        # wrapper for void Ptr_Algorithm::delete_obj()
        def delete_obj()
            Rbind::ptr_algorithm_delete_obj( self)
        end

        # wrapper for bool Ptr_Algorithm::empty()
        def empty()
            Rbind::ptr_algorithm_empty( self)
        end

        # wrapper for const cv::Algorithm *obj
        def obj()
            result = Rbind::ptr_algorithm_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping vector_String
    class VectorStringStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_string_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorString
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorStringStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_String::vector_String()
            @@vector_string_vector_string_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_string_vector_string_defaults0[i]
                end
                begin
                    return Rbind::vector_string_vector_string(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_String::vector_String(const vector_String other)
            @@vector_string_vector_string2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_string_vector_string2_defaults1[i]
                end
                begin
                    return Rbind::vector_string_vector_string2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorString
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorString.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorStringStruct
                               ptr
                           else
                               VectorStringStruct.new(FFI::AutoPointer.new(ptr,VectorStringStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class String
                        def self.new
                            ::VectorString.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_String::resize(size_t size, const cv::String val=cv::String)
        def resize(size, val = cv::String)
            Rbind::vector_string_resize( self, size, val)
        end

        # wrapper for size_t vector_String::size()
        def size()
            Rbind::vector_string_size( self)
        end

        # wrapper for size_t vector_String::capacity()
        def capacity()
            Rbind::vector_string_capacity( self)
        end

        # wrapper for bool vector_String::empty()
        def empty()
            Rbind::vector_string_empty( self)
        end

        # wrapper for void vector_String::reserve(size_t size)
        def reserve(size)
            Rbind::vector_string_reserve( self, size)
        end

        # wrapper for cv::String vector_String::operator[](size_t size)
        def [](size)
            result = Rbind::vector_string_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::String vector_String::at(size_t size)
        def at(size)
            result = Rbind::vector_string_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::String vector_String::front()
        def front()
            result = Rbind::vector_string_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::String vector_String::back()
        def back()
            result = Rbind::vector_string_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_String::data()
        def data()
            Rbind::vector_string_data( self)
        end

        # wrapper for void vector_String::push_back(const cv::String other)
        def push_back(other)
            Rbind::vector_string_push_back( self, other)
        end

        # wrapper for void vector_String::pop_back()
        def pop_back()
            Rbind::vector_string_pop_back( self)
        end

        # wrapper for void vector_String::swap(vector_String other)
        def swap(other)
            Rbind::vector_string_swap( self, other)
        end


        # types

    end

    # object wrapping vector_vector_Point
    class VectorVectorPointStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_vector_point_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorVectorPoint
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorVectorPointStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_vector_Point::vector_vector_Point()
            @@vector_vector_point_vector_vector_point_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_vector_point_vector_vector_point_defaults0[i]
                end
                begin
                    return Rbind::vector_vector_point_vector_vector_point(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_vector_Point::vector_vector_Point(const vector_vector_Point other)
            @@vector_vector_point_vector_vector_point2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_vector_point_vector_vector_point2_defaults1[i]
                end
                begin
                    return Rbind::vector_vector_point_vector_vector_point2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorVectorPoint
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorVectorPoint.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorVectorPointStruct
                               ptr
                           else
                               VectorVectorPointStruct.new(FFI::AutoPointer.new(ptr,VectorVectorPointStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class VectorPoint
                        def self.new
                            ::VectorVectorPoint.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_vector_Point::resize(size_t size, const vector_Point val=vector_Point)
        def resize(size, val = vector_Point)
            Rbind::vector_vector_point_resize( self, size, val)
        end

        # wrapper for size_t vector_vector_Point::size()
        def size()
            Rbind::vector_vector_point_size( self)
        end

        # wrapper for size_t vector_vector_Point::capacity()
        def capacity()
            Rbind::vector_vector_point_capacity( self)
        end

        # wrapper for bool vector_vector_Point::empty()
        def empty()
            Rbind::vector_vector_point_empty( self)
        end

        # wrapper for void vector_vector_Point::reserve(size_t size)
        def reserve(size)
            Rbind::vector_vector_point_reserve( self, size)
        end

        # wrapper for vector_Point vector_vector_Point::operator[](size_t size)
        def [](size)
            result = Rbind::vector_vector_point_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for vector_Point vector_vector_Point::at(size_t size)
        def at(size)
            result = Rbind::vector_vector_point_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for vector_Point vector_vector_Point::front()
        def front()
            result = Rbind::vector_vector_point_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for vector_Point vector_vector_Point::back()
        def back()
            result = Rbind::vector_vector_point_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_vector_Point::data()
        def data()
            Rbind::vector_vector_point_data( self)
        end

        # wrapper for void vector_vector_Point::push_back(const vector_Point other)
        def push_back(other)
            Rbind::vector_vector_point_push_back( self, other)
        end

        # wrapper for void vector_vector_Point::pop_back()
        def pop_back()
            Rbind::vector_vector_point_pop_back( self)
        end

        # wrapper for void vector_vector_Point::swap(vector_vector_Point other)
        def swap(other)
            Rbind::vector_vector_point_swap( self, other)
        end


        # types

    end

    # object wrapping vector_float
    class VectorFloatStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_float_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorFloat
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorFloatStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_float::vector_float()
            @@vector_float_vector_float_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_float_vector_float_defaults0[i]
                end
                begin
                    return Rbind::vector_float_vector_float(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_float::vector_float(const vector_float other)
            @@vector_float_vector_float2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_float_vector_float2_defaults1[i]
                end
                begin
                    return Rbind::vector_float_vector_float2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorFloat
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorFloat.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorFloatStruct
                               ptr
                           else
                               VectorFloatStruct.new(FFI::AutoPointer.new(ptr,VectorFloatStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Float
                        def self.new
                            ::VectorFloat.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_float::resize(size_t size, float val=float)
        def resize(size, val = loat)
            Rbind::vector_float_resize( self, size, val)
        end

        # wrapper for size_t vector_float::size()
        def size()
            Rbind::vector_float_size( self)
        end

        # wrapper for size_t vector_float::capacity()
        def capacity()
            Rbind::vector_float_capacity( self)
        end

        # wrapper for bool vector_float::empty()
        def empty()
            Rbind::vector_float_empty( self)
        end

        # wrapper for void vector_float::reserve(size_t size)
        def reserve(size)
            Rbind::vector_float_reserve( self, size)
        end

        # wrapper for float vector_float::operator[](size_t size)
        def [](size)
            Rbind::vector_float_operator_array( self, size)
        end

        # wrapper for float vector_float::at(size_t size)
        def at(size)
            Rbind::vector_float_at( self, size)
        end

        # wrapper for float vector_float::front()
        def front()
            Rbind::vector_float_front( self)
        end

        # wrapper for float vector_float::back()
        def back()
            Rbind::vector_float_back( self)
        end

        # wrapper for void * vector_float::data()
        def data()
            Rbind::vector_float_data( self)
        end

        # wrapper for void vector_float::push_back(float other)
        def push_back(other)
            Rbind::vector_float_push_back( self, other)
        end

        # wrapper for void vector_float::pop_back()
        def pop_back()
            Rbind::vector_float_pop_back( self)
        end

        # wrapper for void vector_float::swap(vector_float other)
        def swap(other)
            Rbind::vector_float_swap( self, other)
        end


        # types

    end

    # object wrapping Ptr_FaceRecognizer
    class PtrFaceRecognizerStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_face_recognizer_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrFaceRecognizer
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrFaceRecognizerStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_FaceRecognizer::Ptr_FaceRecognizer(const Ptr_FaceRecognizer other)
            @@ptr_face_recognizer_ptr_face_recognizer_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_face_recognizer_ptr_face_recognizer_defaults0[i]
                end
                begin
                    return Rbind::ptr_face_recognizer_ptr_face_recognizer(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrFaceRecognizer
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrFaceRecognizer.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrFaceRecognizerStruct
                               ptr
                           else
                               PtrFaceRecognizerStruct.new(FFI::AutoPointer.new(ptr,PtrFaceRecognizerStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002a82558> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_FaceRecognizer::addref()
        def addref()
            Rbind::ptr_face_recognizer_addref( self)
        end

        # wrapper for void Ptr_FaceRecognizer::release()
        def release()
            Rbind::ptr_face_recognizer_release( self)
        end

        # wrapper for void Ptr_FaceRecognizer::delete_obj()
        def delete_obj()
            Rbind::ptr_face_recognizer_delete_obj( self)
        end

        # wrapper for bool Ptr_FaceRecognizer::empty()
        def empty()
            Rbind::ptr_face_recognizer_empty( self)
        end

        # wrapper for const cv::FaceRecognizer *obj
        def obj()
            result = Rbind::ptr_face_recognizer_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping Ptr_FeatureDetector
    class PtrFeatureDetectorStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_feature_detector_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrFeatureDetector
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrFeatureDetectorStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_FeatureDetector::Ptr_FeatureDetector(const Ptr_FeatureDetector other)
            @@ptr_feature_detector_ptr_feature_detector_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_feature_detector_ptr_feature_detector_defaults0[i]
                end
                begin
                    return Rbind::ptr_feature_detector_ptr_feature_detector(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrFeatureDetector
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrFeatureDetector.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrFeatureDetectorStruct
                               ptr
                           else
                               PtrFeatureDetectorStruct.new(FFI::AutoPointer.new(ptr,PtrFeatureDetectorStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002a61b78> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_FeatureDetector::addref()
        def addref()
            Rbind::ptr_feature_detector_addref( self)
        end

        # wrapper for void Ptr_FeatureDetector::release()
        def release()
            Rbind::ptr_feature_detector_release( self)
        end

        # wrapper for void Ptr_FeatureDetector::delete_obj()
        def delete_obj()
            Rbind::ptr_feature_detector_delete_obj( self)
        end

        # wrapper for bool Ptr_FeatureDetector::empty()
        def empty()
            Rbind::ptr_feature_detector_empty( self)
        end

        # wrapper for const cv::FeatureDetector *obj
        def obj()
            result = Rbind::ptr_feature_detector_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping Ptr_StereoBM
    class PtrStereoBMStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_stereobm_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrStereoBM
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrStereoBMStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_StereoBM::Ptr_StereoBM(const Ptr_StereoBM other)
            @@ptr_stereobm_ptr_stereobm_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_stereobm_ptr_stereobm_defaults0[i]
                end
                begin
                    return Rbind::ptr_stereobm_ptr_stereobm(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrStereoBM
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrStereoBM.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrStereoBMStruct
                               ptr
                           else
                               PtrStereoBMStruct.new(FFI::AutoPointer.new(ptr,PtrStereoBMStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002e5b990> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_StereoBM::addref()
        def addref()
            Rbind::ptr_stereobm_addref( self)
        end

        # wrapper for void Ptr_StereoBM::release()
        def release()
            Rbind::ptr_stereobm_release( self)
        end

        # wrapper for void Ptr_StereoBM::delete_obj()
        def delete_obj()
            Rbind::ptr_stereobm_delete_obj( self)
        end

        # wrapper for bool Ptr_StereoBM::empty()
        def empty()
            Rbind::ptr_stereobm_empty( self)
        end

        # wrapper for const cv::StereoBM *obj
        def obj()
            result = Rbind::ptr_stereobm_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping Ptr_StereoSGBM
    class PtrStereoSGBMStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_stereosgbm_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrStereoSGBM
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrStereoSGBMStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_StereoSGBM::Ptr_StereoSGBM(const Ptr_StereoSGBM other)
            @@ptr_stereosgbm_ptr_stereosgbm_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_stereosgbm_ptr_stereosgbm_defaults0[i]
                end
                begin
                    return Rbind::ptr_stereosgbm_ptr_stereosgbm(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrStereoSGBM
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrStereoSGBM.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrStereoSGBMStruct
                               ptr
                           else
                               PtrStereoSGBMStruct.new(FFI::AutoPointer.new(ptr,PtrStereoSGBMStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002c099a8> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_StereoSGBM::addref()
        def addref()
            Rbind::ptr_stereosgbm_addref( self)
        end

        # wrapper for void Ptr_StereoSGBM::release()
        def release()
            Rbind::ptr_stereosgbm_release( self)
        end

        # wrapper for void Ptr_StereoSGBM::delete_obj()
        def delete_obj()
            Rbind::ptr_stereosgbm_delete_obj( self)
        end

        # wrapper for bool Ptr_StereoSGBM::empty()
        def empty()
            Rbind::ptr_stereosgbm_empty( self)
        end

        # wrapper for const cv::StereoSGBM *obj
        def obj()
            result = Rbind::ptr_stereosgbm_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping vector_KeyPoint
    class VectorKeyPointStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_key_point_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorKeyPoint
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorKeyPointStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_KeyPoint::vector_KeyPoint()
            @@vector_key_point_vector_key_point_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_key_point_vector_key_point_defaults0[i]
                end
                begin
                    return Rbind::vector_key_point_vector_key_point(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_KeyPoint::vector_KeyPoint(const vector_KeyPoint other)
            @@vector_key_point_vector_key_point2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_key_point_vector_key_point2_defaults1[i]
                end
                begin
                    return Rbind::vector_key_point_vector_key_point2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorKeyPoint
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorKeyPoint.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorKeyPointStruct
                               ptr
                           else
                               VectorKeyPointStruct.new(FFI::AutoPointer.new(ptr,VectorKeyPointStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class KeyPoint
                        def self.new
                            ::VectorKeyPoint.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_KeyPoint::resize(size_t size, const cv::KeyPoint val=cv::KeyPoint)
        def resize(size, val = cv::KeyPoint)
            Rbind::vector_key_point_resize( self, size, val)
        end

        # wrapper for size_t vector_KeyPoint::size()
        def size()
            Rbind::vector_key_point_size( self)
        end

        # wrapper for size_t vector_KeyPoint::capacity()
        def capacity()
            Rbind::vector_key_point_capacity( self)
        end

        # wrapper for bool vector_KeyPoint::empty()
        def empty()
            Rbind::vector_key_point_empty( self)
        end

        # wrapper for void vector_KeyPoint::reserve(size_t size)
        def reserve(size)
            Rbind::vector_key_point_reserve( self, size)
        end

        # wrapper for cv::KeyPoint vector_KeyPoint::operator[](size_t size)
        def [](size)
            result = Rbind::vector_key_point_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::KeyPoint vector_KeyPoint::at(size_t size)
        def at(size)
            result = Rbind::vector_key_point_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::KeyPoint vector_KeyPoint::front()
        def front()
            result = Rbind::vector_key_point_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::KeyPoint vector_KeyPoint::back()
        def back()
            result = Rbind::vector_key_point_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_KeyPoint::data()
        def data()
            Rbind::vector_key_point_data( self)
        end

        # wrapper for void vector_KeyPoint::push_back(const cv::KeyPoint other)
        def push_back(other)
            Rbind::vector_key_point_push_back( self, other)
        end

        # wrapper for void vector_KeyPoint::pop_back()
        def pop_back()
            Rbind::vector_key_point_pop_back( self)
        end

        # wrapper for void vector_KeyPoint::swap(vector_KeyPoint other)
        def swap(other)
            Rbind::vector_key_point_swap( self, other)
        end


        # types

    end

    # object wrapping Ptr_DescriptorExtractor
    class PtrDescriptorExtractorStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_descriptor_extractor_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrDescriptorExtractor
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrDescriptorExtractorStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_DescriptorExtractor::Ptr_DescriptorExtractor(const Ptr_DescriptorExtractor other)
            @@ptr_descriptor_extractor_ptr_descriptor_extractor_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_descriptor_extractor_ptr_descriptor_extractor_defaults0[i]
                end
                begin
                    return Rbind::ptr_descriptor_extractor_ptr_descriptor_extractor(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrDescriptorExtractor
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrDescriptorExtractor.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrDescriptorExtractorStruct
                               ptr
                           else
                               PtrDescriptorExtractorStruct.new(FFI::AutoPointer.new(ptr,PtrDescriptorExtractorStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002c93a18> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_DescriptorExtractor::addref()
        def addref()
            Rbind::ptr_descriptor_extractor_addref( self)
        end

        # wrapper for void Ptr_DescriptorExtractor::release()
        def release()
            Rbind::ptr_descriptor_extractor_release( self)
        end

        # wrapper for void Ptr_DescriptorExtractor::delete_obj()
        def delete_obj()
            Rbind::ptr_descriptor_extractor_delete_obj( self)
        end

        # wrapper for bool Ptr_DescriptorExtractor::empty()
        def empty()
            Rbind::ptr_descriptor_extractor_empty( self)
        end

        # wrapper for const cv::DescriptorExtractor *obj
        def obj()
            result = Rbind::ptr_descriptor_extractor_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping Ptr_Feature2D
    class PtrFeature2DStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_feature2d_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrFeature2D
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrFeature2DStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_Feature2D::Ptr_Feature2D(const Ptr_Feature2D other)
            @@ptr_feature2d_ptr_feature2d_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_feature2d_ptr_feature2d_defaults0[i]
                end
                begin
                    return Rbind::ptr_feature2d_ptr_feature2d(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrFeature2D
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrFeature2D.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrFeature2DStruct
                               ptr
                           else
                               PtrFeature2DStruct.new(FFI::AutoPointer.new(ptr,PtrFeature2DStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002f4d358> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_Feature2D::addref()
        def addref()
            Rbind::ptr_feature2d_addref( self)
        end

        # wrapper for void Ptr_Feature2D::release()
        def release()
            Rbind::ptr_feature2d_release( self)
        end

        # wrapper for void Ptr_Feature2D::delete_obj()
        def delete_obj()
            Rbind::ptr_feature2d_delete_obj( self)
        end

        # wrapper for bool Ptr_Feature2D::empty()
        def empty()
            Rbind::ptr_feature2d_empty( self)
        end

        # wrapper for const cv::Feature2D *obj
        def obj()
            result = Rbind::ptr_feature2d_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping vector_DMatch
    class VectorDMatchStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_d_match_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorDMatch
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorDMatchStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_DMatch::vector_DMatch()
            @@vector_d_match_vector_d_match_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_d_match_vector_d_match_defaults0[i]
                end
                begin
                    return Rbind::vector_d_match_vector_d_match(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_DMatch::vector_DMatch(const vector_DMatch other)
            @@vector_d_match_vector_d_match2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_d_match_vector_d_match2_defaults1[i]
                end
                begin
                    return Rbind::vector_d_match_vector_d_match2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorDMatch
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorDMatch.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorDMatchStruct
                               ptr
                           else
                               VectorDMatchStruct.new(FFI::AutoPointer.new(ptr,VectorDMatchStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class DMatch
                        def self.new
                            ::VectorDMatch.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_DMatch::resize(size_t size, const cv::DMatch val=cv::DMatch)
        def resize(size, val = cv::DMatch)
            Rbind::vector_d_match_resize( self, size, val)
        end

        # wrapper for size_t vector_DMatch::size()
        def size()
            Rbind::vector_d_match_size( self)
        end

        # wrapper for size_t vector_DMatch::capacity()
        def capacity()
            Rbind::vector_d_match_capacity( self)
        end

        # wrapper for bool vector_DMatch::empty()
        def empty()
            Rbind::vector_d_match_empty( self)
        end

        # wrapper for void vector_DMatch::reserve(size_t size)
        def reserve(size)
            Rbind::vector_d_match_reserve( self, size)
        end

        # wrapper for cv::DMatch vector_DMatch::operator[](size_t size)
        def [](size)
            result = Rbind::vector_d_match_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::DMatch vector_DMatch::at(size_t size)
        def at(size)
            result = Rbind::vector_d_match_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::DMatch vector_DMatch::front()
        def front()
            result = Rbind::vector_d_match_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::DMatch vector_DMatch::back()
        def back()
            result = Rbind::vector_d_match_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_DMatch::data()
        def data()
            Rbind::vector_d_match_data( self)
        end

        # wrapper for void vector_DMatch::push_back(const cv::DMatch other)
        def push_back(other)
            Rbind::vector_d_match_push_back( self, other)
        end

        # wrapper for void vector_DMatch::pop_back()
        def pop_back()
            Rbind::vector_d_match_pop_back( self)
        end

        # wrapper for void vector_DMatch::swap(vector_DMatch other)
        def swap(other)
            Rbind::vector_d_match_swap( self, other)
        end


        # types

    end

    # object wrapping vector_vector_DMatch
    class VectorVectorDMatchStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_vector_d_match_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorVectorDMatch
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorVectorDMatchStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_vector_DMatch::vector_vector_DMatch()
            @@vector_vector_d_match_vector_vector_d_match_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_vector_d_match_vector_vector_d_match_defaults0[i]
                end
                begin
                    return Rbind::vector_vector_d_match_vector_vector_d_match(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_vector_DMatch::vector_vector_DMatch(const vector_vector_DMatch other)
            @@vector_vector_d_match_vector_vector_d_match2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_vector_d_match_vector_vector_d_match2_defaults1[i]
                end
                begin
                    return Rbind::vector_vector_d_match_vector_vector_d_match2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorVectorDMatch
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorVectorDMatch.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorVectorDMatchStruct
                               ptr
                           else
                               VectorVectorDMatchStruct.new(FFI::AutoPointer.new(ptr,VectorVectorDMatchStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class VectorDMatch
                        def self.new
                            ::VectorVectorDMatch.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_vector_DMatch::resize(size_t size, const vector_DMatch val=vector_DMatch)
        def resize(size, val = vector_DMatch)
            Rbind::vector_vector_d_match_resize( self, size, val)
        end

        # wrapper for size_t vector_vector_DMatch::size()
        def size()
            Rbind::vector_vector_d_match_size( self)
        end

        # wrapper for size_t vector_vector_DMatch::capacity()
        def capacity()
            Rbind::vector_vector_d_match_capacity( self)
        end

        # wrapper for bool vector_vector_DMatch::empty()
        def empty()
            Rbind::vector_vector_d_match_empty( self)
        end

        # wrapper for void vector_vector_DMatch::reserve(size_t size)
        def reserve(size)
            Rbind::vector_vector_d_match_reserve( self, size)
        end

        # wrapper for vector_DMatch vector_vector_DMatch::operator[](size_t size)
        def [](size)
            result = Rbind::vector_vector_d_match_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for vector_DMatch vector_vector_DMatch::at(size_t size)
        def at(size)
            result = Rbind::vector_vector_d_match_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for vector_DMatch vector_vector_DMatch::front()
        def front()
            result = Rbind::vector_vector_d_match_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for vector_DMatch vector_vector_DMatch::back()
        def back()
            result = Rbind::vector_vector_d_match_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_vector_DMatch::data()
        def data()
            Rbind::vector_vector_d_match_data( self)
        end

        # wrapper for void vector_vector_DMatch::push_back(const vector_DMatch other)
        def push_back(other)
            Rbind::vector_vector_d_match_push_back( self, other)
        end

        # wrapper for void vector_vector_DMatch::pop_back()
        def pop_back()
            Rbind::vector_vector_d_match_pop_back( self)
        end

        # wrapper for void vector_vector_DMatch::swap(vector_vector_DMatch other)
        def swap(other)
            Rbind::vector_vector_d_match_swap( self, other)
        end


        # types

    end

    # object wrapping Ptr_DescriptorMatcher
    class PtrDescriptorMatcherStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_descriptor_matcher_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrDescriptorMatcher
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrDescriptorMatcherStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_DescriptorMatcher::Ptr_DescriptorMatcher(const Ptr_DescriptorMatcher other)
            @@ptr_descriptor_matcher_ptr_descriptor_matcher_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_descriptor_matcher_ptr_descriptor_matcher_defaults0[i]
                end
                begin
                    return Rbind::ptr_descriptor_matcher_ptr_descriptor_matcher(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrDescriptorMatcher
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrDescriptorMatcher.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrDescriptorMatcherStruct
                               ptr
                           else
                               PtrDescriptorMatcherStruct.new(FFI::AutoPointer.new(ptr,PtrDescriptorMatcherStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002a99780> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_DescriptorMatcher::addref()
        def addref()
            Rbind::ptr_descriptor_matcher_addref( self)
        end

        # wrapper for void Ptr_DescriptorMatcher::release()
        def release()
            Rbind::ptr_descriptor_matcher_release( self)
        end

        # wrapper for void Ptr_DescriptorMatcher::delete_obj()
        def delete_obj()
            Rbind::ptr_descriptor_matcher_delete_obj( self)
        end

        # wrapper for bool Ptr_DescriptorMatcher::empty()
        def empty()
            Rbind::ptr_descriptor_matcher_empty( self)
        end

        # wrapper for const cv::DescriptorMatcher *obj
        def obj()
            result = Rbind::ptr_descriptor_matcher_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping Ptr_flann_IndexParams
    class PtrFlannIndexParamsStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_flann_index_params_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrFlannIndexParams
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrFlannIndexParamsStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_flann_IndexParams::Ptr_flann_IndexParams(const Ptr_flann_IndexParams other)
            @@ptr_flann_index_params_ptr_flann_index_params_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_flann_index_params_ptr_flann_index_params_defaults0[i]
                end
                begin
                    return Rbind::ptr_flann_index_params_ptr_flann_index_params(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrFlannIndexParams
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrFlannIndexParams.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrFlannIndexParamsStruct
                               ptr
                           else
                               PtrFlannIndexParamsStruct.new(FFI::AutoPointer.new(ptr,PtrFlannIndexParamsStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002a43088> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_flann_IndexParams::addref()
        def addref()
            Rbind::ptr_flann_index_params_addref( self)
        end

        # wrapper for void Ptr_flann_IndexParams::release()
        def release()
            Rbind::ptr_flann_index_params_release( self)
        end

        # wrapper for void Ptr_flann_IndexParams::delete_obj()
        def delete_obj()
            Rbind::ptr_flann_index_params_delete_obj( self)
        end

        # wrapper for bool Ptr_flann_IndexParams::empty()
        def empty()
            Rbind::ptr_flann_index_params_empty( self)
        end

        # wrapper for const cv::flann::IndexParams *obj
        def obj()
            result = Rbind::ptr_flann_index_params_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping Ptr_flann_SearchParams
    class PtrFlannSearchParamsStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_flann_search_params_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrFlannSearchParams
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrFlannSearchParamsStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_flann_SearchParams::Ptr_flann_SearchParams(const Ptr_flann_SearchParams other)
            @@ptr_flann_search_params_ptr_flann_search_params_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_flann_search_params_ptr_flann_search_params_defaults0[i]
                end
                begin
                    return Rbind::ptr_flann_search_params_ptr_flann_search_params(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrFlannSearchParams
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrFlannSearchParams.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrFlannSearchParamsStruct
                               ptr
                           else
                               PtrFlannSearchParamsStruct.new(FFI::AutoPointer.new(ptr,PtrFlannSearchParamsStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x000000028d72a8> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_flann_SearchParams::addref()
        def addref()
            Rbind::ptr_flann_search_params_addref( self)
        end

        # wrapper for void Ptr_flann_SearchParams::release()
        def release()
            Rbind::ptr_flann_search_params_release( self)
        end

        # wrapper for void Ptr_flann_SearchParams::delete_obj()
        def delete_obj()
            Rbind::ptr_flann_search_params_delete_obj( self)
        end

        # wrapper for bool Ptr_flann_SearchParams::empty()
        def empty()
            Rbind::ptr_flann_search_params_empty( self)
        end

        # wrapper for const cv::flann::SearchParams *obj
        def obj()
            result = Rbind::ptr_flann_search_params_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping vector_uchar
    class VectorUcharStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_uchar_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorUchar
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorUcharStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_uchar::vector_uchar()
            @@vector_uchar_vector_uchar_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_uchar_vector_uchar_defaults0[i]
                end
                begin
                    return Rbind::vector_uchar_vector_uchar(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_uchar::vector_uchar(const vector_uchar other)
            @@vector_uchar_vector_uchar2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_uchar_vector_uchar2_defaults1[i]
                end
                begin
                    return Rbind::vector_uchar_vector_uchar2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorUchar
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorUchar.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorUcharStruct
                               ptr
                           else
                               VectorUcharStruct.new(FFI::AutoPointer.new(ptr,VectorUcharStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Uchar
                        def self.new
                            ::VectorUchar.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_uchar::resize(size_t size, uchar val=uchar)
        def resize(size, val = Uchar)
            Rbind::vector_uchar_resize( self, size, val)
        end

        # wrapper for size_t vector_uchar::size()
        def size()
            Rbind::vector_uchar_size( self)
        end

        # wrapper for size_t vector_uchar::capacity()
        def capacity()
            Rbind::vector_uchar_capacity( self)
        end

        # wrapper for bool vector_uchar::empty()
        def empty()
            Rbind::vector_uchar_empty( self)
        end

        # wrapper for void vector_uchar::reserve(size_t size)
        def reserve(size)
            Rbind::vector_uchar_reserve( self, size)
        end

        # wrapper for uchar vector_uchar::operator[](size_t size)
        def [](size)
            Rbind::vector_uchar_operator_array( self, size)
        end

        # wrapper for uchar vector_uchar::at(size_t size)
        def at(size)
            Rbind::vector_uchar_at( self, size)
        end

        # wrapper for uchar vector_uchar::front()
        def front()
            Rbind::vector_uchar_front( self)
        end

        # wrapper for uchar vector_uchar::back()
        def back()
            Rbind::vector_uchar_back( self)
        end

        # wrapper for void * vector_uchar::data()
        def data()
            Rbind::vector_uchar_data( self)
        end

        # wrapper for void vector_uchar::push_back(uchar other)
        def push_back(other)
            Rbind::vector_uchar_push_back( self, other)
        end

        # wrapper for void vector_uchar::pop_back()
        def pop_back()
            Rbind::vector_uchar_pop_back( self)
        end

        # wrapper for void vector_uchar::swap(vector_uchar other)
        def swap(other)
            Rbind::vector_uchar_swap( self, other)
        end


        # types

    end

    # object wrapping vector_Point2f
    class VectorPoint2fStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_point_2f_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorPoint2f
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorPoint2fStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_Point2f::vector_Point2f()
            @@vector_point_2f_vector_point_2f_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_point_2f_vector_point_2f_defaults0[i]
                end
                begin
                    return Rbind::vector_point_2f_vector_point_2f(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_Point2f::vector_Point2f(const vector_Point2f other)
            @@vector_point_2f_vector_point_2f2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_point_2f_vector_point_2f2_defaults1[i]
                end
                begin
                    return Rbind::vector_point_2f_vector_point_2f2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorPoint2f
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorPoint2f.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorPoint2fStruct
                               ptr
                           else
                               VectorPoint2fStruct.new(FFI::AutoPointer.new(ptr,VectorPoint2fStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Point2f
                        def self.new
                            ::VectorPoint2f.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_Point2f::resize(size_t size, const cv::Point2f val=cv::Point2f)
        def resize(size, val = cv::Point2f)
            Rbind::vector_point_2f_resize( self, size, val)
        end

        # wrapper for size_t vector_Point2f::size()
        def size()
            Rbind::vector_point_2f_size( self)
        end

        # wrapper for size_t vector_Point2f::capacity()
        def capacity()
            Rbind::vector_point_2f_capacity( self)
        end

        # wrapper for bool vector_Point2f::empty()
        def empty()
            Rbind::vector_point_2f_empty( self)
        end

        # wrapper for void vector_Point2f::reserve(size_t size)
        def reserve(size)
            Rbind::vector_point_2f_reserve( self, size)
        end

        # wrapper for cv::Point2f vector_Point2f::operator[](size_t size)
        def [](size)
            result = Rbind::vector_point_2f_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point2f vector_Point2f::at(size_t size)
        def at(size)
            result = Rbind::vector_point_2f_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point2f vector_Point2f::front()
        def front()
            result = Rbind::vector_point_2f_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point2f vector_Point2f::back()
        def back()
            result = Rbind::vector_point_2f_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_Point2f::data()
        def data()
            Rbind::vector_point_2f_data( self)
        end

        # wrapper for void vector_Point2f::push_back(const cv::Point2f other)
        def push_back(other)
            Rbind::vector_point_2f_push_back( self, other)
        end

        # wrapper for void vector_Point2f::pop_back()
        def pop_back()
            Rbind::vector_point_2f_pop_back( self)
        end

        # wrapper for void vector_Point2f::swap(vector_Point2f other)
        def swap(other)
            Rbind::vector_point_2f_swap( self, other)
        end


        # types

    end

    # object wrapping vector_Vec4f
    class VectorVec4fStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_vec_4f_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorVec4f
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorVec4fStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_Vec4f::vector_Vec4f()
            @@vector_vec_4f_vector_vec_4f_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_vec_4f_vector_vec_4f_defaults0[i]
                end
                begin
                    return Rbind::vector_vec_4f_vector_vec_4f(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_Vec4f::vector_Vec4f(const vector_Vec4f other)
            @@vector_vec_4f_vector_vec_4f2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_vec_4f_vector_vec_4f2_defaults1[i]
                end
                begin
                    return Rbind::vector_vec_4f_vector_vec_4f2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorVec4f
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorVec4f.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorVec4fStruct
                               ptr
                           else
                               VectorVec4fStruct.new(FFI::AutoPointer.new(ptr,VectorVec4fStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Vec4f
                        def self.new
                            ::VectorVec4f.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_Vec4f::resize(size_t size, const cv::Vec4f val=cv::Vec4f)
        def resize(size, val = cv::Vec4f)
            Rbind::vector_vec_4f_resize( self, size, val)
        end

        # wrapper for size_t vector_Vec4f::size()
        def size()
            Rbind::vector_vec_4f_size( self)
        end

        # wrapper for size_t vector_Vec4f::capacity()
        def capacity()
            Rbind::vector_vec_4f_capacity( self)
        end

        # wrapper for bool vector_Vec4f::empty()
        def empty()
            Rbind::vector_vec_4f_empty( self)
        end

        # wrapper for void vector_Vec4f::reserve(size_t size)
        def reserve(size)
            Rbind::vector_vec_4f_reserve( self, size)
        end

        # wrapper for cv::Vec4f vector_Vec4f::operator[](size_t size)
        def [](size)
            result = Rbind::vector_vec_4f_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Vec4f vector_Vec4f::at(size_t size)
        def at(size)
            result = Rbind::vector_vec_4f_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Vec4f vector_Vec4f::front()
        def front()
            result = Rbind::vector_vec_4f_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Vec4f vector_Vec4f::back()
        def back()
            result = Rbind::vector_vec_4f_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_Vec4f::data()
        def data()
            Rbind::vector_vec_4f_data( self)
        end

        # wrapper for void vector_Vec4f::push_back(const cv::Vec4f other)
        def push_back(other)
            Rbind::vector_vec_4f_push_back( self, other)
        end

        # wrapper for void vector_Vec4f::pop_back()
        def pop_back()
            Rbind::vector_vec_4f_pop_back( self)
        end

        # wrapper for void vector_Vec4f::swap(vector_Vec4f other)
        def swap(other)
            Rbind::vector_vec_4f_swap( self, other)
        end


        # types

    end

    # object wrapping vector_Vec6f
    class VectorVec6fStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_vec_6f_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorVec6f
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorVec6fStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_Vec6f::vector_Vec6f()
            @@vector_vec_6f_vector_vec_6f_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_vec_6f_vector_vec_6f_defaults0[i]
                end
                begin
                    return Rbind::vector_vec_6f_vector_vec_6f(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_Vec6f::vector_Vec6f(const vector_Vec6f other)
            @@vector_vec_6f_vector_vec_6f2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_vec_6f_vector_vec_6f2_defaults1[i]
                end
                begin
                    return Rbind::vector_vec_6f_vector_vec_6f2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorVec6f
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorVec6f.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorVec6fStruct
                               ptr
                           else
                               VectorVec6fStruct.new(FFI::AutoPointer.new(ptr,VectorVec6fStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Vec6f
                        def self.new
                            ::VectorVec6f.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_Vec6f::resize(size_t size, const cv::Vec6f val=cv::Vec6f)
        def resize(size, val = cv::Vec6f)
            Rbind::vector_vec_6f_resize( self, size, val)
        end

        # wrapper for size_t vector_Vec6f::size()
        def size()
            Rbind::vector_vec_6f_size( self)
        end

        # wrapper for size_t vector_Vec6f::capacity()
        def capacity()
            Rbind::vector_vec_6f_capacity( self)
        end

        # wrapper for bool vector_Vec6f::empty()
        def empty()
            Rbind::vector_vec_6f_empty( self)
        end

        # wrapper for void vector_Vec6f::reserve(size_t size)
        def reserve(size)
            Rbind::vector_vec_6f_reserve( self, size)
        end

        # wrapper for cv::Vec6f vector_Vec6f::operator[](size_t size)
        def [](size)
            result = Rbind::vector_vec_6f_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Vec6f vector_Vec6f::at(size_t size)
        def at(size)
            result = Rbind::vector_vec_6f_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Vec6f vector_Vec6f::front()
        def front()
            result = Rbind::vector_vec_6f_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Vec6f vector_Vec6f::back()
        def back()
            result = Rbind::vector_vec_6f_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_Vec6f::data()
        def data()
            Rbind::vector_vec_6f_data( self)
        end

        # wrapper for void vector_Vec6f::push_back(const cv::Vec6f other)
        def push_back(other)
            Rbind::vector_vec_6f_push_back( self, other)
        end

        # wrapper for void vector_Vec6f::pop_back()
        def pop_back()
            Rbind::vector_vec_6f_pop_back( self)
        end

        # wrapper for void vector_Vec6f::swap(vector_Vec6f other)
        def swap(other)
            Rbind::vector_vec_6f_swap( self, other)
        end


        # types

    end

    # object wrapping vector_vector_Point2f
    class VectorVectorPoint2fStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_vector_point_2f_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorVectorPoint2f
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorVectorPoint2fStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_vector_Point2f::vector_vector_Point2f()
            @@vector_vector_point_2f_vector_vector_point_2f_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_vector_point_2f_vector_vector_point_2f_defaults0[i]
                end
                begin
                    return Rbind::vector_vector_point_2f_vector_vector_point_2f(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_vector_Point2f::vector_vector_Point2f(const vector_vector_Point2f other)
            @@vector_vector_point_2f_vector_vector_point_2f2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_vector_point_2f_vector_vector_point_2f2_defaults1[i]
                end
                begin
                    return Rbind::vector_vector_point_2f_vector_vector_point_2f2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorVectorPoint2f
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorVectorPoint2f.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorVectorPoint2fStruct
                               ptr
                           else
                               VectorVectorPoint2fStruct.new(FFI::AutoPointer.new(ptr,VectorVectorPoint2fStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class VectorPoint2f
                        def self.new
                            ::VectorVectorPoint2f.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_vector_Point2f::resize(size_t size, const vector_Point2f val=vector_Point2f)
        def resize(size, val = vector_Point2f)
            Rbind::vector_vector_point_2f_resize( self, size, val)
        end

        # wrapper for size_t vector_vector_Point2f::size()
        def size()
            Rbind::vector_vector_point_2f_size( self)
        end

        # wrapper for size_t vector_vector_Point2f::capacity()
        def capacity()
            Rbind::vector_vector_point_2f_capacity( self)
        end

        # wrapper for bool vector_vector_Point2f::empty()
        def empty()
            Rbind::vector_vector_point_2f_empty( self)
        end

        # wrapper for void vector_vector_Point2f::reserve(size_t size)
        def reserve(size)
            Rbind::vector_vector_point_2f_reserve( self, size)
        end

        # wrapper for vector_Point2f vector_vector_Point2f::operator[](size_t size)
        def [](size)
            result = Rbind::vector_vector_point_2f_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for vector_Point2f vector_vector_Point2f::at(size_t size)
        def at(size)
            result = Rbind::vector_vector_point_2f_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for vector_Point2f vector_vector_Point2f::front()
        def front()
            result = Rbind::vector_vector_point_2f_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for vector_Point2f vector_vector_Point2f::back()
        def back()
            result = Rbind::vector_vector_point_2f_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_vector_Point2f::data()
        def data()
            Rbind::vector_vector_point_2f_data( self)
        end

        # wrapper for void vector_vector_Point2f::push_back(const vector_Point2f other)
        def push_back(other)
            Rbind::vector_vector_point_2f_push_back( self, other)
        end

        # wrapper for void vector_vector_Point2f::pop_back()
        def pop_back()
            Rbind::vector_vector_point_2f_pop_back( self)
        end

        # wrapper for void vector_vector_Point2f::swap(vector_vector_Point2f other)
        def swap(other)
            Rbind::vector_vector_point_2f_swap( self, other)
        end


        # types

    end

    # object wrapping CvStatModel
    class CvStatModelStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cv_stat_model_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvStatModel
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvStatModelStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvStatModel
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvStatModel.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvStatModelStruct
                               ptr
                           else
                               CvStatModelStruct.new(FFI::AutoPointer.new(ptr,CvStatModelStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for void CvStatModel::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cv_stat_model_save( self, filename, name)
        end

        # wrapper for void CvStatModel::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cv_stat_model_load( self, filename, name)
        end


        # types

    end

    # object wrapping CvParamGrid
    class CvParamGridStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cv_param_grid_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvParamGrid
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvParamGridStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvParamGrid
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvParamGrid.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvParamGridStruct
                               ptr
                           else
                               CvParamGridStruct.new(FFI::AutoPointer.new(ptr,CvParamGridStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts
        SVM_C = 0
        SVM_GAMMA = 1
        SVM_P = 2
        SVM_NU = 3
        SVM_COEF = 4
        SVM_DEGREE = 5


        # methods
        # wrapper for double min_val
        def min_val()
            Rbind::cv_param_grid_get_min_val( self)
        end

        # wrapper for double min_val
        def min_val=(value)
            Rbind::cv_param_grid_set_min_val( self, value)
        end

        # wrapper for double max_val
        def max_val()
            Rbind::cv_param_grid_get_max_val( self)
        end

        # wrapper for double max_val
        def max_val=(value)
            Rbind::cv_param_grid_set_max_val( self, value)
        end

        # wrapper for double step
        def step()
            Rbind::cv_param_grid_get_step( self)
        end

        # wrapper for double step
        def step=(value)
            Rbind::cv_param_grid_set_step( self, value)
        end


        # types

    end

    # object wrapping CvNormalBayesClassifier
    class CvNormalBayesClassifierStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cv_normal_bayes_classifier_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvNormalBayesClassifier
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvNormalBayesClassifierStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvNormalBayesClassifier::CvNormalBayesClassifier()
            @@cv_normal_bayes_classifier_cv_normal_bayes_classifier_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cv_normal_bayes_classifier_cv_normal_bayes_classifier_defaults0[i]
                end
                begin
                    return Rbind::cv_normal_bayes_classifier_cv_normal_bayes_classifier(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for CvNormalBayesClassifier::CvNormalBayesClassifier(const cv::Mat trainData, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat())
            @@cv_normal_bayes_classifier_cv_normal_bayes_classifier2_defaults1 ||= [nil, nil, Cv::Mat.new(), Cv::Mat.new()]
            if(args.size >= 2 && args.size <= 4)
                args.size.upto(3) do |i|
                    args[i] = @@cv_normal_bayes_classifier_cv_normal_bayes_classifier2_defaults1[i]
                end
                begin
                    return Rbind::cv_normal_bayes_classifier_cv_normal_bayes_classifier2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvNormalBayesClassifier
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvNormalBayesClassifier.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvNormalBayesClassifierStruct
                               ptr
                           else
                               CvNormalBayesClassifierStruct.new(FFI::AutoPointer.new(ptr,CvNormalBayesClassifierStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for void CvNormalBayesClassifier::clear()
        def clear()
            Rbind::cv_normal_bayes_classifier_clear( self)
        end

        # wrapper for bool CvNormalBayesClassifier::train(const cv::Mat trainData, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), bool update=false)
        def train(train_data, responses, var_idx = Cv::Mat.new(), sample_idx = Cv::Mat.new(), update = false)
            Rbind::cv_normal_bayes_classifier_train( self, train_data, responses, var_idx, sample_idx, update)
        end

        # wrapper for float CvNormalBayesClassifier::predict(const cv::Mat samples, cv::Mat *results=0)
        def predict(samples, results = 0)
            Rbind::cv_normal_bayes_classifier_predict( self, samples, results)
        end

        # wrapper for void CvNormalBayesClassifier::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cv_normal_bayes_classifier_save( self, filename, name)
        end

        # wrapper for void CvNormalBayesClassifier::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cv_normal_bayes_classifier_load( self, filename, name)
        end


        # types

    end

    # object wrapping CvKNearest
    class CvKNearestStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvk_nearest_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvKNearest
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvKNearestStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvKNearest::CvKNearest()
            @@cvk_nearest_cvk_nearest_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cvk_nearest_cvk_nearest_defaults0[i]
                end
                begin
                    return Rbind::cvk_nearest_cvk_nearest(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for CvKNearest::CvKNearest(const cv::Mat trainData, const cv::Mat responses, const cv::Mat sampleIdx=cv::Mat(), bool isRegression=false, int max_k=32)
            @@cvk_nearest_cvk_nearest2_defaults1 ||= [nil, nil, Cv::Mat.new(), false, 32]
            if(args.size >= 2 && args.size <= 5)
                args.size.upto(4) do |i|
                    args[i] = @@cvk_nearest_cvk_nearest2_defaults1[i]
                end
                begin
                    return Rbind::cvk_nearest_cvk_nearest2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvKNearest
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvKNearest.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvKNearestStruct
                               ptr
                           else
                               CvKNearestStruct.new(FFI::AutoPointer.new(ptr,CvKNearestStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for bool CvKNearest::train(const cv::Mat trainData, const cv::Mat responses, const cv::Mat sampleIdx=cv::Mat(), bool isRegression=false, int maxK=32, bool updateBase=false)
        def train(train_data, responses, sample_idx = Cv::Mat.new(), is_regression = false, max_k = 32, update_base = false)
            Rbind::cvk_nearest_train( self, train_data, responses, sample_idx, is_regression, max_k, update_base)
        end

        # wrapper for float CvKNearest::find_nearest(const cv::Mat samples, int k, cv::Mat results, cv::Mat neighborResponses, cv::Mat dists)
        def find_nearest(samples, k, results, neighbor_responses, dists)
            Rbind::cvk_nearest_find_nearest( self, samples, k, results, neighbor_responses, dists)
        end

        # wrapper for void CvKNearest::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cvk_nearest_save( self, filename, name)
        end

        # wrapper for void CvKNearest::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cvk_nearest_load( self, filename, name)
        end


        # types

    end

    # object wrapping CvSVMParams
    class CvSVMParamsStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvsvm_params_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvSVMParams
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvSVMParamsStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvSVMParams
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvSVMParams.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvSVMParamsStruct
                               ptr
                           else
                               CvSVMParamsStruct.new(FFI::AutoPointer.new(ptr,CvSVMParamsStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for int svm_type
        def svm_type()
            Rbind::cvsvm_params_get_svm_type( self)
        end

        # wrapper for int svm_type
        def svm_type=(value)
            Rbind::cvsvm_params_set_svm_type( self, value)
        end

        # wrapper for int kernel_type
        def kernel_type()
            Rbind::cvsvm_params_get_kernel_type( self)
        end

        # wrapper for int kernel_type
        def kernel_type=(value)
            Rbind::cvsvm_params_set_kernel_type( self, value)
        end

        # wrapper for double degree
        def degree()
            Rbind::cvsvm_params_get_degree( self)
        end

        # wrapper for double degree
        def degree=(value)
            Rbind::cvsvm_params_set_degree( self, value)
        end

        # wrapper for double gamma
        def gamma()
            Rbind::cvsvm_params_get_gamma( self)
        end

        # wrapper for double gamma
        def gamma=(value)
            Rbind::cvsvm_params_set_gamma( self, value)
        end

        # wrapper for double coef0
        def coef0()
            Rbind::cvsvm_params_get_coef0( self)
        end

        # wrapper for double coef0
        def coef0=(value)
            Rbind::cvsvm_params_set_coef0( self, value)
        end

        # wrapper for double C
        def c()
            Rbind::cvsvm_params_get_c( self)
        end

        # wrapper for double C
        def c=(value)
            Rbind::cvsvm_params_set_c( self, value)
        end

        # wrapper for double nu
        def nu()
            Rbind::cvsvm_params_get_nu( self)
        end

        # wrapper for double nu
        def nu=(value)
            Rbind::cvsvm_params_set_nu( self, value)
        end

        # wrapper for double p
        def p()
            Rbind::cvsvm_params_getp( self)
        end

        # wrapper for double p
        def p=(value)
            Rbind::cvsvm_params_setp( self, value)
        end

        # wrapper for CvTermCriteria term_crit
        def term_crit()
            result = Rbind::cvsvm_params_get_term_crit( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for CvTermCriteria term_crit
        def term_crit=(value)
            Rbind::cvsvm_params_set_term_crit( self, value)
        end


        # types

    end

    # object wrapping CvSVM
    class CvSVMStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvsvm_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvSVM
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvSVMStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvSVM::CvSVM()
            @@cvsvm_cvsvm_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cvsvm_cvsvm_defaults0[i]
                end
                begin
                    return Rbind::cvsvm_cvsvm(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for CvSVM::CvSVM(const cv::Mat trainData, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), const CvSVMParams params=CvSVMParams())
            @@cvsvm_cvsvm2_defaults1 ||= [nil, nil, Cv::Mat.new(), Cv::Mat.new(), CvSVMParams.new()]
            if(args.size >= 2 && args.size <= 5)
                args.size.upto(4) do |i|
                    args[i] = @@cvsvm_cvsvm2_defaults1[i]
                end
                begin
                    return Rbind::cvsvm_cvsvm2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvSVM
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvSVM.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvSVMStruct
                               ptr
                           else
                               CvSVMStruct.new(FFI::AutoPointer.new(ptr,CvSVMStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts
        C_SVC = 100
        NU_SVC = 101
        ONE_CLASS = 102
        EPS_SVR = 103
        NU_SVR = 104
        LINEAR = 0
        POLY = 1
        RBF = 2
        SIGMOID = 3
        CHI2 = 4
        INTER = 5
        C = 0
        GAMMA = 1
        P = 2
        NU = 3
        COEF = 4
        DEGREE = 5


        # methods
        # wrapper for bool CvSVM::train(const cv::Mat trainData, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), const CvSVMParams params=CvSVMParams())
        def train(train_data, responses, var_idx = Cv::Mat.new(), sample_idx = Cv::Mat.new(), params = CvSVMParams.new())
            Rbind::cvsvm_train( self, train_data, responses, var_idx, sample_idx, params)
        end

        # wrapper for bool CvSVM::train_auto(const cv::Mat trainData, const cv::Mat responses, const cv::Mat varIdx, const cv::Mat sampleIdx, const CvSVMParams params, int k_fold=10, const CvParamGrid Cgrid=CvSVM::get_default_grid(CvSVM::C), const CvParamGrid gammaGrid=CvSVM::get_default_grid(CvSVM::GAMMA), const CvParamGrid pGrid=CvSVM::get_default_grid(CvSVM::P), const CvParamGrid nuGrid=CvSVM::get_default_grid(CvSVM::NU), const CvParamGrid coeffGrid=CvSVM::get_default_grid(CvSVM::COEF), const CvParamGrid degreeGrid=CvSVM::get_default_grid(CvSVM::DEGREE), bool balanced=false)
        def train_auto(train_data, responses, var_idx, sample_idx, params, k_fold = 10, cgrid = CvSVM.new(CvSVM::C), gamma_grid = CvSVM.new(CvSVM::GAMMA), p_grid = CvSVM.new(CvSVM::P), nu_grid = CvSVM.new(CvSVM::NU), coeff_grid = CvSVM.new(CvSVM::COEF), degree_grid = CvSVM.new(CvSVM::DEGREE), balanced = false)
            Rbind::cvsvm_train_auto( self, train_data, responses, var_idx, sample_idx, params, k_fold, cgrid, gamma_grid, p_grid, nu_grid, coeff_grid, degree_grid, balanced)
        end

        # wrapper for float CvSVM::predict(const cv::Mat sample, bool returnDFVal=false)
        def predict(sample, return_d_f_val = false)
            Rbind::cvsvm_predict( self, sample, return_d_f_val)
        end

        # wrapper for void CvSVM::predict(const cv::Mat samples, cv::Mat results)
        def predict_all(samples, results)
            Rbind::cvsvm_predict_all( self, samples, results)
        end

        # wrapper for int CvSVM::get_support_vector_count()
        def get_support_vector_count()
            Rbind::cvsvm_get_support_vector_count( self)
        end

        # wrapper for void CvSVM::clear()
        def clear()
            Rbind::cvsvm_clear( self)
        end

        # wrapper for int CvSVM::get_var_count()
        def get_var_count()
            Rbind::cvsvm_get_var_count( self)
        end

        # wrapper for void CvSVM::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cvsvm_save( self, filename, name)
        end

        # wrapper for void CvSVM::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cvsvm_load( self, filename, name)
        end


        # types

    end

    # object wrapping CvDTreeParams
    class CvDTreeParamsStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvd_tree_params_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvDTreeParams
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvDTreeParamsStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvDTreeParams
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvDTreeParams.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvDTreeParamsStruct
                               ptr
                           else
                               CvDTreeParamsStruct.new(FFI::AutoPointer.new(ptr,CvDTreeParamsStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for int max_categories
        def max_categories()
            Rbind::cvd_tree_params_get_max_categories( self)
        end

        # wrapper for int max_categories
        def max_categories=(value)
            Rbind::cvd_tree_params_set_max_categories( self, value)
        end

        # wrapper for int max_depth
        def max_depth()
            Rbind::cvd_tree_params_get_max_depth( self)
        end

        # wrapper for int max_depth
        def max_depth=(value)
            Rbind::cvd_tree_params_set_max_depth( self, value)
        end

        # wrapper for int min_sample_count
        def min_sample_count()
            Rbind::cvd_tree_params_get_min_sample_count( self)
        end

        # wrapper for int min_sample_count
        def min_sample_count=(value)
            Rbind::cvd_tree_params_set_min_sample_count( self, value)
        end

        # wrapper for int cv_folds
        def cv_folds()
            Rbind::cvd_tree_params_get_cv_folds( self)
        end

        # wrapper for int cv_folds
        def cv_folds=(value)
            Rbind::cvd_tree_params_set_cv_folds( self, value)
        end

        # wrapper for bool use_surrogates
        def use_surrogates()
            Rbind::cvd_tree_params_get_use_surrogates( self)
        end

        # wrapper for bool use_surrogates
        def use_surrogates=(value)
            Rbind::cvd_tree_params_set_use_surrogates( self, value)
        end

        # wrapper for bool use_1se_rule
        def use__1se_rule()
            Rbind::cvd_tree_params_get_use__1se_rule( self)
        end

        # wrapper for bool use_1se_rule
        def use__1se_rule=(value)
            Rbind::cvd_tree_params_set_use__1se_rule( self, value)
        end

        # wrapper for bool truncate_pruned_tree
        def truncate_pruned_tree()
            Rbind::cvd_tree_params_get_truncate_pruned_tree( self)
        end

        # wrapper for bool truncate_pruned_tree
        def truncate_pruned_tree=(value)
            Rbind::cvd_tree_params_set_truncate_pruned_tree( self, value)
        end

        # wrapper for float regression_accuracy
        def regression_accuracy()
            Rbind::cvd_tree_params_get_regression_accuracy( self)
        end

        # wrapper for float regression_accuracy
        def regression_accuracy=(value)
            Rbind::cvd_tree_params_set_regression_accuracy( self, value)
        end


        # types

    end

    # object wrapping CvDTree
    class CvDTreeStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvd_tree_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvDTree
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvDTreeStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvDTree::CvDTree()
            @@cvd_tree_cvd_tree_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cvd_tree_cvd_tree_defaults0[i]
                end
                begin
                    return Rbind::cvd_tree_cvd_tree(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvDTree
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvDTree.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvDTreeStruct
                               ptr
                           else
                               CvDTreeStruct.new(FFI::AutoPointer.new(ptr,CvDTreeStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for bool CvDTree::train(const cv::Mat trainData, int tflag, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), const cv::Mat varType=cv::Mat(), const cv::Mat missingDataMask=cv::Mat(), const CvDTreeParams params=CvDTreeParams())
        def train(train_data, tflag, responses, var_idx = Cv::Mat.new(), sample_idx = Cv::Mat.new(), var_type = Cv::Mat.new(), missing_data_mask = Cv::Mat.new(), params = CvDTreeParams.new())
            Rbind::cvd_tree_train( self, train_data, tflag, responses, var_idx, sample_idx, var_type, missing_data_mask, params)
        end

        # wrapper for CvDTreeNode * CvDTree::predict(const cv::Mat sample, const cv::Mat missingDataMask=cv::Mat(), bool preprocessedInput=false)
        def predict(sample, missing_data_mask = Cv::Mat.new(), preprocessed_input = false)
            result = Rbind::cvd_tree_predict( self, sample, missing_data_mask, preprocessed_input)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Mat CvDTree::getVarImportance()
        def get_var_importance()
            result = Rbind::cvd_tree_get_var_importance( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void CvDTree::clear()
        def clear()
            Rbind::cvd_tree_clear( self)
        end

        # wrapper for void CvDTree::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cvd_tree_save( self, filename, name)
        end

        # wrapper for void CvDTree::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cvd_tree_load( self, filename, name)
        end


        # types

    end

    # object wrapping CvRTParams
    class CvRTParamsStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvrt_params_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvRTParams
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvRTParamsStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvRTParams
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvRTParams.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvRTParamsStruct
                               ptr
                           else
                               CvRTParamsStruct.new(FFI::AutoPointer.new(ptr,CvRTParamsStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for bool calc_var_importance
        def calc_var_importance()
            Rbind::cvrt_params_get_calc_var_importance( self)
        end

        # wrapper for bool calc_var_importance
        def calc_var_importance=(value)
            Rbind::cvrt_params_set_calc_var_importance( self, value)
        end

        # wrapper for int nactive_vars
        def nactive_vars()
            Rbind::cvrt_params_get_nactive_vars( self)
        end

        # wrapper for int nactive_vars
        def nactive_vars=(value)
            Rbind::cvrt_params_set_nactive_vars( self, value)
        end

        # wrapper for CvTermCriteria term_crit
        def term_crit()
            result = Rbind::cvrt_params_get_term_crit( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for CvTermCriteria term_crit
        def term_crit=(value)
            Rbind::cvrt_params_set_term_crit( self, value)
        end


        # types

    end

    # object wrapping CvRTrees
    class CvRTreesStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvr_trees_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvRTrees
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvRTreesStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvRTrees::CvRTrees()
            @@cvr_trees_cvr_trees_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cvr_trees_cvr_trees_defaults0[i]
                end
                begin
                    return Rbind::cvr_trees_cvr_trees(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvRTrees
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvRTrees.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvRTreesStruct
                               ptr
                           else
                               CvRTreesStruct.new(FFI::AutoPointer.new(ptr,CvRTreesStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for bool CvRTrees::train(const cv::Mat trainData, int tflag, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), const cv::Mat varType=cv::Mat(), const cv::Mat missingDataMask=cv::Mat(), const CvRTParams params=CvRTParams())
        def train(train_data, tflag, responses, var_idx = Cv::Mat.new(), sample_idx = Cv::Mat.new(), var_type = Cv::Mat.new(), missing_data_mask = Cv::Mat.new(), params = CvRTParams.new())
            Rbind::cvr_trees_train( self, train_data, tflag, responses, var_idx, sample_idx, var_type, missing_data_mask, params)
        end

        # wrapper for float CvRTrees::predict(const cv::Mat sample, const cv::Mat missing=cv::Mat())
        def predict(sample, missing = Cv::Mat.new())
            Rbind::cvr_trees_predict( self, sample, missing)
        end

        # wrapper for float CvRTrees::predict_prob(const cv::Mat sample, const cv::Mat missing=cv::Mat())
        def predict_prob(sample, missing = Cv::Mat.new())
            Rbind::cvr_trees_predict_prob( self, sample, missing)
        end

        # wrapper for cv::Mat CvRTrees::getVarImportance()
        def get_var_importance()
            result = Rbind::cvr_trees_get_var_importance( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void CvRTrees::clear()
        def clear()
            Rbind::cvr_trees_clear( self)
        end

        # wrapper for void CvRTrees::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cvr_trees_save( self, filename, name)
        end

        # wrapper for void CvRTrees::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cvr_trees_load( self, filename, name)
        end


        # types

    end

    # object wrapping CvERTrees
    class CvERTreesStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cver_trees_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvERTrees
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvERTreesStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvERTrees::CvERTrees()
            @@cver_trees_cver_trees_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cver_trees_cver_trees_defaults0[i]
                end
                begin
                    return Rbind::cver_trees_cver_trees(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvERTrees
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvERTrees.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvERTreesStruct
                               ptr
                           else
                               CvERTreesStruct.new(FFI::AutoPointer.new(ptr,CvERTreesStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for bool CvERTrees::train(const cv::Mat trainData, int tflag, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), const cv::Mat varType=cv::Mat(), const cv::Mat missingDataMask=cv::Mat(), const CvRTParams params=CvRTParams())
        def train(train_data, tflag, responses, var_idx = Cv::Mat.new(), sample_idx = Cv::Mat.new(), var_type = Cv::Mat.new(), missing_data_mask = Cv::Mat.new(), params = CvRTParams.new())
            Rbind::cver_trees_train( self, train_data, tflag, responses, var_idx, sample_idx, var_type, missing_data_mask, params)
        end

        # wrapper for float CvERTrees::predict(const cv::Mat sample, const cv::Mat missing=cv::Mat())
        def predict(sample, missing = Cv::Mat.new())
            Rbind::cver_trees_predict( self, sample, missing)
        end

        # wrapper for float CvERTrees::predict_prob(const cv::Mat sample, const cv::Mat missing=cv::Mat())
        def predict_prob(sample, missing = Cv::Mat.new())
            Rbind::cver_trees_predict_prob( self, sample, missing)
        end

        # wrapper for cv::Mat CvERTrees::getVarImportance()
        def get_var_importance()
            result = Rbind::cver_trees_get_var_importance( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void CvERTrees::clear()
        def clear()
            Rbind::cver_trees_clear( self)
        end

        # wrapper for void CvERTrees::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cver_trees_save( self, filename, name)
        end

        # wrapper for void CvERTrees::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cver_trees_load( self, filename, name)
        end


        # types

    end

    # object wrapping CvBoostParams
    class CvBoostParamsStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cv_boost_params_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvBoostParams
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvBoostParamsStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvBoostParams
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvBoostParams.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvBoostParamsStruct
                               ptr
                           else
                               CvBoostParamsStruct.new(FFI::AutoPointer.new(ptr,CvBoostParamsStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for int boost_type
        def boost_type()
            Rbind::cv_boost_params_get_boost_type( self)
        end

        # wrapper for int boost_type
        def boost_type=(value)
            Rbind::cv_boost_params_set_boost_type( self, value)
        end

        # wrapper for int weak_count
        def weak_count()
            Rbind::cv_boost_params_get_weak_count( self)
        end

        # wrapper for int weak_count
        def weak_count=(value)
            Rbind::cv_boost_params_set_weak_count( self, value)
        end

        # wrapper for int split_criteria
        def split_criteria()
            Rbind::cv_boost_params_get_split_criteria( self)
        end

        # wrapper for int split_criteria
        def split_criteria=(value)
            Rbind::cv_boost_params_set_split_criteria( self, value)
        end

        # wrapper for double weight_trim_rate
        def weight_trim_rate()
            Rbind::cv_boost_params_get_weight_trim_rate( self)
        end

        # wrapper for double weight_trim_rate
        def weight_trim_rate=(value)
            Rbind::cv_boost_params_set_weight_trim_rate( self, value)
        end


        # types

    end

    # object wrapping CvBoost
    class CvBoostStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cv_boost_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvBoost
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvBoostStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvBoost::CvBoost()
            @@cv_boost_cv_boost_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cv_boost_cv_boost_defaults0[i]
                end
                begin
                    return Rbind::cv_boost_cv_boost(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for CvBoost::CvBoost(const cv::Mat trainData, int tflag, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), const cv::Mat varType=cv::Mat(), const cv::Mat missingDataMask=cv::Mat(), const CvBoostParams params=CvBoostParams())
            @@cv_boost_cv_boost2_defaults1 ||= [nil, nil, nil, Cv::Mat.new(), Cv::Mat.new(), Cv::Mat.new(), Cv::Mat.new(), CvBoostParams.new()]
            if(args.size >= 3 && args.size <= 8)
                args.size.upto(7) do |i|
                    args[i] = @@cv_boost_cv_boost2_defaults1[i]
                end
                begin
                    return Rbind::cv_boost_cv_boost2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvBoost
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvBoost.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvBoostStruct
                               ptr
                           else
                               CvBoostStruct.new(FFI::AutoPointer.new(ptr,CvBoostStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts
        DISCRETE = 0
        REAL = 1
        LOGIT = 2
        GENTLE = 3
        DEFAULT = 0
        GINI = 1
        MISCLASS = 3
        SQERR = 4


        # methods
        # wrapper for bool CvBoost::train(const cv::Mat trainData, int tflag, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), const cv::Mat varType=cv::Mat(), const cv::Mat missingDataMask=cv::Mat(), const CvBoostParams params=CvBoostParams(), bool update=false)
        def train(train_data, tflag, responses, var_idx = Cv::Mat.new(), sample_idx = Cv::Mat.new(), var_type = Cv::Mat.new(), missing_data_mask = Cv::Mat.new(), params = CvBoostParams.new(), update = false)
            Rbind::cv_boost_train( self, train_data, tflag, responses, var_idx, sample_idx, var_type, missing_data_mask, params, update)
        end

        # wrapper for float CvBoost::predict(const cv::Mat sample, const cv::Mat missing=cv::Mat(), const cv::Range slice=cv::Range::all(), bool rawMode=false, bool returnSum=false)
        def predict(sample, missing = Cv::Mat.new(), slice = Cv::Range::all(), raw_mode = false, return_sum = false)
            Rbind::cv_boost_predict( self, sample, missing, slice, raw_mode, return_sum)
        end

        # wrapper for void CvBoost::prune(const CvSlice slice)
        def prune(slice)
            Rbind::cv_boost_prune( self, slice)
        end

        # wrapper for void CvBoost::clear()
        def clear()
            Rbind::cv_boost_clear( self)
        end

        # wrapper for void CvBoost::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cv_boost_save( self, filename, name)
        end

        # wrapper for void CvBoost::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cv_boost_load( self, filename, name)
        end


        # types

    end

    # object wrapping CvGBTreesParams
    class CvGBTreesParamsStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvgb_trees_params_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvGBTreesParams
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvGBTreesParamsStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvGBTreesParams
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvGBTreesParams.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvGBTreesParamsStruct
                               ptr
                           else
                               CvGBTreesParamsStruct.new(FFI::AutoPointer.new(ptr,CvGBTreesParamsStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for int weak_count
        def weak_count()
            Rbind::cvgb_trees_params_get_weak_count( self)
        end

        # wrapper for int weak_count
        def weak_count=(value)
            Rbind::cvgb_trees_params_set_weak_count( self, value)
        end

        # wrapper for int loss_function_type
        def loss_function_type()
            Rbind::cvgb_trees_params_get_loss_function_type( self)
        end

        # wrapper for int loss_function_type
        def loss_function_type=(value)
            Rbind::cvgb_trees_params_set_loss_function_type( self, value)
        end

        # wrapper for float subsample_portion
        def subsample_portion()
            Rbind::cvgb_trees_params_get_subsample_portion( self)
        end

        # wrapper for float subsample_portion
        def subsample_portion=(value)
            Rbind::cvgb_trees_params_set_subsample_portion( self, value)
        end

        # wrapper for float shrinkage
        def shrinkage()
            Rbind::cvgb_trees_params_get_shrinkage( self)
        end

        # wrapper for float shrinkage
        def shrinkage=(value)
            Rbind::cvgb_trees_params_set_shrinkage( self, value)
        end


        # types

    end

    # object wrapping CvGBTrees
    class CvGBTreesStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvgb_trees_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvGBTrees
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvGBTreesStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvGBTrees::CvGBTrees()
            @@cvgb_trees_cvgb_trees_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cvgb_trees_cvgb_trees_defaults0[i]
                end
                begin
                    return Rbind::cvgb_trees_cvgb_trees(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for CvGBTrees::CvGBTrees(const cv::Mat trainData, int tflag, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), const cv::Mat varType=cv::Mat(), const cv::Mat missingDataMask=cv::Mat(), const CvGBTreesParams params=CvGBTreesParams())
            @@cvgb_trees_cvgb_trees2_defaults1 ||= [nil, nil, nil, Cv::Mat.new(), Cv::Mat.new(), Cv::Mat.new(), Cv::Mat.new(), CvGBTreesParams.new()]
            if(args.size >= 3 && args.size <= 8)
                args.size.upto(7) do |i|
                    args[i] = @@cvgb_trees_cvgb_trees2_defaults1[i]
                end
                begin
                    return Rbind::cvgb_trees_cvgb_trees2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvGBTrees
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvGBTrees.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvGBTreesStruct
                               ptr
                           else
                               CvGBTreesStruct.new(FFI::AutoPointer.new(ptr,CvGBTreesStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts
        SQUARED_LOSS = 0
        ABSOLUTE_LOSS = 0+1
        HUBER_LOSS = 3
        DEVIANCE_LOSS = 3+1


        # methods
        # wrapper for void CvGBTrees::clear()
        def clear()
            Rbind::cvgb_trees_clear( self)
        end

        # wrapper for bool CvGBTrees::train(const cv::Mat trainData, int tflag, const cv::Mat responses, const cv::Mat varIdx=cv::Mat(), const cv::Mat sampleIdx=cv::Mat(), const cv::Mat varType=cv::Mat(), const cv::Mat missingDataMask=cv::Mat(), const CvGBTreesParams params=CvGBTreesParams(), bool update=false)
        def train(train_data, tflag, responses, var_idx = Cv::Mat.new(), sample_idx = Cv::Mat.new(), var_type = Cv::Mat.new(), missing_data_mask = Cv::Mat.new(), params = CvGBTreesParams.new(), update = false)
            Rbind::cvgb_trees_train( self, train_data, tflag, responses, var_idx, sample_idx, var_type, missing_data_mask, params, update)
        end

        # wrapper for float CvGBTrees::predict(const cv::Mat sample, const cv::Mat missing=cv::Mat(), const cv::Range slice=cv::Range::all(), int k=-1)
        def predict(sample, missing = Cv::Mat.new(), slice = Cv::Range::all(), k = -1)
            Rbind::cvgb_trees_predict( self, sample, missing, slice, k)
        end

        # wrapper for void CvGBTrees::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cvgb_trees_save( self, filename, name)
        end

        # wrapper for void CvGBTrees::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cvgb_trees_load( self, filename, name)
        end


        # types

    end

    # object wrapping CvANN_MLP_TrainParams
    class CvANNMLPTrainParamsStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvann_mlp_train_params_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvANNMLPTrainParams
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvANNMLPTrainParamsStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvANNMLPTrainParams
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvANNMLPTrainParams.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvANNMLPTrainParamsStruct
                               ptr
                           else
                               CvANNMLPTrainParamsStruct.new(FFI::AutoPointer.new(ptr,CvANNMLPTrainParamsStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts
        BACKPROP = 0
        RPROP = 1


        # methods
        # wrapper for CvTermCriteria term_crit
        def term_crit()
            result = Rbind::cvann_mlp_train_params_get_term_crit( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for CvTermCriteria term_crit
        def term_crit=(value)
            Rbind::cvann_mlp_train_params_set_term_crit( self, value)
        end

        # wrapper for int train_method
        def train_method()
            Rbind::cvann_mlp_train_params_get_train_method( self)
        end

        # wrapper for int train_method
        def train_method=(value)
            Rbind::cvann_mlp_train_params_set_train_method( self, value)
        end

        # wrapper for double bp_dw_scale
        def bp_dw_scale()
            Rbind::cvann_mlp_train_params_get_bp_dw_scale( self)
        end

        # wrapper for double bp_dw_scale
        def bp_dw_scale=(value)
            Rbind::cvann_mlp_train_params_set_bp_dw_scale( self, value)
        end

        # wrapper for double bp_moment_scale
        def bp_moment_scale()
            Rbind::cvann_mlp_train_params_get_bp_moment_scale( self)
        end

        # wrapper for double bp_moment_scale
        def bp_moment_scale=(value)
            Rbind::cvann_mlp_train_params_set_bp_moment_scale( self, value)
        end

        # wrapper for double rp_dw0
        def rp_dw0()
            Rbind::cvann_mlp_train_params_get_rp_dw0( self)
        end

        # wrapper for double rp_dw0
        def rp_dw0=(value)
            Rbind::cvann_mlp_train_params_set_rp_dw0( self, value)
        end

        # wrapper for double rp_dw_plus
        def rp_dw_plus()
            Rbind::cvann_mlp_train_params_get_rp_dw_plus( self)
        end

        # wrapper for double rp_dw_plus
        def rp_dw_plus=(value)
            Rbind::cvann_mlp_train_params_set_rp_dw_plus( self, value)
        end

        # wrapper for double rp_dw_minus
        def rp_dw_minus()
            Rbind::cvann_mlp_train_params_get_rp_dw_minus( self)
        end

        # wrapper for double rp_dw_minus
        def rp_dw_minus=(value)
            Rbind::cvann_mlp_train_params_set_rp_dw_minus( self, value)
        end

        # wrapper for double rp_dw_min
        def rp_dw_min()
            Rbind::cvann_mlp_train_params_get_rp_dw_min( self)
        end

        # wrapper for double rp_dw_min
        def rp_dw_min=(value)
            Rbind::cvann_mlp_train_params_set_rp_dw_min( self, value)
        end

        # wrapper for double rp_dw_max
        def rp_dw_max()
            Rbind::cvann_mlp_train_params_get_rp_dw_max( self)
        end

        # wrapper for double rp_dw_max
        def rp_dw_max=(value)
            Rbind::cvann_mlp_train_params_set_rp_dw_max( self, value)
        end


        # types

    end

    # object wrapping CvANN_MLP
    class CvANNMLPStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvann_mlp_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvANNMLP
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvANNMLPStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvANN_MLP::CvANN_MLP()
            @@cvann_mlp_cvann_mlp_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cvann_mlp_cvann_mlp_defaults0[i]
                end
                begin
                    return Rbind::cvann_mlp_cvann_mlp(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for CvANN_MLP::CvANN_MLP(const cv::Mat layerSizes, int activateFunc=CvANN_MLP::SIGMOID_SYM, double fparam1=0, double fparam2=0)
            @@cvann_mlp_cvann_mlp2_defaults1 ||= [nil, CvANN_MLP::SIGMOID_SYM, 0, 0]
            if(args.size >= 1 && args.size <= 4)
                args.size.upto(3) do |i|
                    args[i] = @@cvann_mlp_cvann_mlp2_defaults1[i]
                end
                begin
                    return Rbind::cvann_mlp_cvann_mlp2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvANNMLP
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvANNMLP.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvANNMLPStruct
                               ptr
                           else
                               CvANNMLPStruct.new(FFI::AutoPointer.new(ptr,CvANNMLPStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts
        IDENTITY = 0
        SIGMOID_SYM = 1
        GAUSSIAN = 2
        UPDATE_WEIGHTS = 1
        NO_INPUT_SCALE = 2
        NO_OUTPUT_SCALE = 4


        # methods
        # wrapper for void CvANN_MLP::create(const cv::Mat layerSizes, int activateFunc=CvANN_MLP::SIGMOID_SYM, double fparam1=0, double fparam2=0)
        def create(layer_sizes, activate_func = CvANN_MLP::SIGMOID_SYM, _fparam1 = 0, _fparam2 = 0)
            Rbind::cvann_mlp_create( self, layer_sizes, activate_func, _fparam1, _fparam2)
        end

        # wrapper for int CvANN_MLP::train(const cv::Mat inputs, const cv::Mat outputs, const cv::Mat sampleWeights, const cv::Mat sampleIdx=cv::Mat(), const CvANN_MLP_TrainParams params=CvANN_MLP_TrainParams(), int flags=0)
        def train(inputs, outputs, sample_weights, sample_idx = Cv::Mat.new(), params = CvANNMLPTrainParams.new(), flags = 0)
            Rbind::cvann_mlp_train( self, inputs, outputs, sample_weights, sample_idx, params, flags)
        end

        # wrapper for float CvANN_MLP::predict(const cv::Mat inputs, cv::Mat outputs)
        def predict(inputs, outputs)
            Rbind::cvann_mlp_predict( self, inputs, outputs)
        end

        # wrapper for void CvANN_MLP::clear()
        def clear()
            Rbind::cvann_mlp_clear( self)
        end

        # wrapper for void CvANN_MLP::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cvann_mlp_save( self, filename, name)
        end

        # wrapper for void CvANN_MLP::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cvann_mlp_load( self, filename, name)
        end


        # types

    end

    # object wrapping vector_Rect
    class VectorRectStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_rect_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorRect
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorRectStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_Rect::vector_Rect()
            @@vector_rect_vector_rect_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_rect_vector_rect_defaults0[i]
                end
                begin
                    return Rbind::vector_rect_vector_rect(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_Rect::vector_Rect(const vector_Rect other)
            @@vector_rect_vector_rect2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_rect_vector_rect2_defaults1[i]
                end
                begin
                    return Rbind::vector_rect_vector_rect2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorRect
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorRect.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorRectStruct
                               ptr
                           else
                               VectorRectStruct.new(FFI::AutoPointer.new(ptr,VectorRectStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Rect
                        def self.new
                            ::VectorRect.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_Rect::resize(size_t size, const cv::Rect val=cv::Rect)
        def resize(size, val = cv::Rect)
            Rbind::vector_rect_resize( self, size, val)
        end

        # wrapper for size_t vector_Rect::size()
        def size()
            Rbind::vector_rect_size( self)
        end

        # wrapper for size_t vector_Rect::capacity()
        def capacity()
            Rbind::vector_rect_capacity( self)
        end

        # wrapper for bool vector_Rect::empty()
        def empty()
            Rbind::vector_rect_empty( self)
        end

        # wrapper for void vector_Rect::reserve(size_t size)
        def reserve(size)
            Rbind::vector_rect_reserve( self, size)
        end

        # wrapper for cv::Rect vector_Rect::operator[](size_t size)
        def [](size)
            result = Rbind::vector_rect_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Rect vector_Rect::at(size_t size)
        def at(size)
            result = Rbind::vector_rect_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Rect vector_Rect::front()
        def front()
            result = Rbind::vector_rect_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Rect vector_Rect::back()
        def back()
            result = Rbind::vector_rect_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_Rect::data()
        def data()
            Rbind::vector_rect_data( self)
        end

        # wrapper for void vector_Rect::push_back(const cv::Rect other)
        def push_back(other)
            Rbind::vector_rect_push_back( self, other)
        end

        # wrapper for void vector_Rect::pop_back()
        def pop_back()
            Rbind::vector_rect_pop_back( self)
        end

        # wrapper for void vector_Rect::swap(vector_Rect other)
        def swap(other)
            Rbind::vector_rect_swap( self, other)
        end


        # types

    end

    # object wrapping vector_double
    class VectorDoubleStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_double_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorDouble
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorDoubleStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_double::vector_double()
            @@vector_double_vector_double_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_double_vector_double_defaults0[i]
                end
                begin
                    return Rbind::vector_double_vector_double(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_double::vector_double(const vector_double other)
            @@vector_double_vector_double2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_double_vector_double2_defaults1[i]
                end
                begin
                    return Rbind::vector_double_vector_double2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorDouble
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorDouble.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorDoubleStruct
                               ptr
                           else
                               VectorDoubleStruct.new(FFI::AutoPointer.new(ptr,VectorDoubleStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Double
                        def self.new
                            ::VectorDouble.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_double::resize(size_t size, double val=double)
        def resize(size, val = double)
            Rbind::vector_double_resize( self, size, val)
        end

        # wrapper for size_t vector_double::size()
        def size()
            Rbind::vector_double_size( self)
        end

        # wrapper for size_t vector_double::capacity()
        def capacity()
            Rbind::vector_double_capacity( self)
        end

        # wrapper for bool vector_double::empty()
        def empty()
            Rbind::vector_double_empty( self)
        end

        # wrapper for void vector_double::reserve(size_t size)
        def reserve(size)
            Rbind::vector_double_reserve( self, size)
        end

        # wrapper for double vector_double::operator[](size_t size)
        def [](size)
            Rbind::vector_double_operator_array( self, size)
        end

        # wrapper for double vector_double::at(size_t size)
        def at(size)
            Rbind::vector_double_at( self, size)
        end

        # wrapper for double vector_double::front()
        def front()
            Rbind::vector_double_front( self)
        end

        # wrapper for double vector_double::back()
        def back()
            Rbind::vector_double_back( self)
        end

        # wrapper for void * vector_double::data()
        def data()
            Rbind::vector_double_data( self)
        end

        # wrapper for void vector_double::push_back(double other)
        def push_back(other)
            Rbind::vector_double_push_back( self, other)
        end

        # wrapper for void vector_double::pop_back()
        def pop_back()
            Rbind::vector_double_pop_back( self)
        end

        # wrapper for void vector_double::swap(vector_double other)
        def swap(other)
            Rbind::vector_double_swap( self, other)
        end


        # types

    end

    # object wrapping Ptr_ChannelFeatureBuilder
    class PtrChannelFeatureBuilderStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_ptr_channel_feature_builder_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class PtrChannelFeatureBuilder
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(PtrChannelFeatureBuilderStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for Ptr_ChannelFeatureBuilder::Ptr_ChannelFeatureBuilder(const Ptr_ChannelFeatureBuilder other)
            @@ptr_channel_feature_builder_ptr_channel_feature_builder_defaults0 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@ptr_channel_feature_builder_ptr_channel_feature_builder_defaults0[i]
                end
                begin
                    return Rbind::ptr_channel_feature_builder_ptr_channel_feature_builder(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? PtrChannelFeatureBuilder
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            PtrChannelFeatureBuilder.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? PtrChannelFeatureBuilderStruct
                               ptr
                           else
                               PtrChannelFeatureBuilderStruct.new(FFI::AutoPointer.new(ptr,PtrChannelFeatureBuilderStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
        def method_missing(m,*args)
            raise "Ptr #<Rbind::RPtr:0x00000002fa1a48> is empty. Cannot call #{m} on it!" if empty
            obj.method(m).call(*args)
        end


        # consts


        # methods
        # wrapper for void Ptr_ChannelFeatureBuilder::addref()
        def addref()
            Rbind::ptr_channel_feature_builder_addref( self)
        end

        # wrapper for void Ptr_ChannelFeatureBuilder::release()
        def release()
            Rbind::ptr_channel_feature_builder_release( self)
        end

        # wrapper for void Ptr_ChannelFeatureBuilder::delete_obj()
        def delete_obj()
            Rbind::ptr_channel_feature_builder_delete_obj( self)
        end

        # wrapper for bool Ptr_ChannelFeatureBuilder::empty()
        def empty()
            Rbind::ptr_channel_feature_builder_empty( self)
        end

        # wrapper for const cv::softcascade::ChannelFeatureBuilder *obj
        def obj()
            result = Rbind::ptr_channel_feature_builder_get_obj( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end


        # types

    end

    # object wrapping CvEMParams
    class CvEMParamsStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvem_params_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvEMParams
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvEMParamsStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvEMParams
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvEMParams.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvEMParamsStruct
                               ptr
                           else
                               CvEMParamsStruct.new(FFI::AutoPointer.new(ptr,CvEMParamsStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts


        # methods
        # wrapper for int nclusters
        def nclusters()
            Rbind::cvem_params_get_nclusters( self)
        end

        # wrapper for int nclusters
        def nclusters=(value)
            Rbind::cvem_params_set_nclusters( self, value)
        end

        # wrapper for int cov_mat_type
        def cov_mat_type()
            Rbind::cvem_params_get_cov_mat_type( self)
        end

        # wrapper for int cov_mat_type
        def cov_mat_type=(value)
            Rbind::cvem_params_set_cov_mat_type( self, value)
        end

        # wrapper for int start_step
        def start_step()
            Rbind::cvem_params_get_start_step( self)
        end

        # wrapper for int start_step
        def start_step=(value)
            Rbind::cvem_params_set_start_step( self, value)
        end

        # wrapper for CvTermCriteria term_crit
        def term_crit()
            result = Rbind::cvem_params_get_term_crit( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for CvTermCriteria term_crit
        def term_crit=(value)
            Rbind::cvem_params_set_term_crit( self, value)
        end


        # types

    end

    # object wrapping CvEM
    class CvEMStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_cvem_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class CvEM
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(CvEMStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for CvEM::CvEM()
            @@cvem_cvem_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@cvem_cvem_defaults0[i]
                end
                begin
                    return Rbind::cvem_cvem(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for CvEM::CvEM(const cv::Mat samples, const cv::Mat sampleIdx=cv::Mat(), const CvEMParams params=CvEMParams())
            @@cvem_cvem2_defaults1 ||= [nil, Cv::Mat.new(), CvEMParams.new()]
            if(args.size >= 1 && args.size <= 3)
                args.size.upto(2) do |i|
                    args[i] = @@cvem_cvem2_defaults1[i]
                end
                begin
                    return Rbind::cvem_cvem2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? CvEM
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            CvEM.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? CvEMStruct
                               ptr
                           else
                               CvEMStruct.new(FFI::AutoPointer.new(ptr,CvEMStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing


        # consts
        COV_MAT_SPHERICAL = Cv::EM::COV_MAT_SPHERICAL
        COV_MAT_DIAGONAL = Cv::EM::COV_MAT_DIAGONAL
        COV_MAT_GENERIC = Cv::EM::COV_MAT_GENERIC
        START_E_STEP = Cv::EM::START_E_STEP
        START_M_STEP = Cv::EM::START_M_STEP
        START_AUTO_STEP = Cv::EM::START_AUTO_STEP


        # methods
        # wrapper for bool CvEM::train(const cv::Mat samples, const cv::Mat sampleIdx=cv::Mat(), const CvEMParams params=CvEMParams(), cv::Mat *labels=0)
        def train(samples, sample_idx = Cv::Mat.new(), params = CvEMParams.new(), labels = 0)
            Rbind::cvem_train( self, samples, sample_idx, params, labels)
        end

        # wrapper for float CvEM::predict(const cv::Mat sample, cv::Mat *probs=0)
        def predict(sample, probs = 0)
            Rbind::cvem_predict( self, sample, probs)
        end

        # wrapper for double CvEM::calcLikelihood(const cv::Mat sample)
        def calc_likelihood(sample)
            Rbind::cvem_calc_likelihood( self, sample)
        end

        # wrapper for int CvEM::getNClusters()
        def getn_clusters()
            Rbind::cvem_getn_clusters( self)
        end

        # wrapper for cv::Mat CvEM::getMeans()
        def get_means()
            result = Rbind::cvem_get_means( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void CvEM::getCovs(vector_Mat covs)
        def get_covs(covs)
            Rbind::cvem_get_covs( self, covs)
        end

        # wrapper for cv::Mat CvEM::getWeights()
        def get_weights()
            result = Rbind::cvem_get_weights( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Mat CvEM::getProbs()
        def get_probs()
            result = Rbind::cvem_get_probs( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for double CvEM::getLikelihood()
        def get_likelihood()
            Rbind::cvem_get_likelihood( self)
        end

        # wrapper for void CvEM::clear()
        def clear()
            Rbind::cvem_clear( self)
        end

        # wrapper for void CvEM::save(c_string filename, c_string name=0)
        def save(filename, name = 0)
            Rbind::cvem_save( self, filename, name)
        end

        # wrapper for void CvEM::load(c_string filename, c_string name=0)
        def load(filename, name = 0)
            Rbind::cvem_load( self, filename, name)
        end


        # types

    end

    # object wrapping vector_char
    class VectorCharStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_char_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorChar
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorCharStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_char::vector_char()
            @@vector_char_vector_char_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_char_vector_char_defaults0[i]
                end
                begin
                    return Rbind::vector_char_vector_char(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_char::vector_char(const vector_char other)
            @@vector_char_vector_char2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_char_vector_char2_defaults1[i]
                end
                begin
                    return Rbind::vector_char_vector_char2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorChar
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorChar.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorCharStruct
                               ptr
                           else
                               VectorCharStruct.new(FFI::AutoPointer.new(ptr,VectorCharStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Char
                        def self.new
                            ::VectorChar.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_char::resize(size_t size, char val=char)
        def resize(size, val = Char)
            Rbind::vector_char_resize( self, size, val)
        end

        # wrapper for size_t vector_char::size()
        def size()
            Rbind::vector_char_size( self)
        end

        # wrapper for size_t vector_char::capacity()
        def capacity()
            Rbind::vector_char_capacity( self)
        end

        # wrapper for bool vector_char::empty()
        def empty()
            Rbind::vector_char_empty( self)
        end

        # wrapper for void vector_char::reserve(size_t size)
        def reserve(size)
            Rbind::vector_char_reserve( self, size)
        end

        # wrapper for char vector_char::operator[](size_t size)
        def [](size)
            Rbind::vector_char_operator_array( self, size)
        end

        # wrapper for char vector_char::at(size_t size)
        def at(size)
            Rbind::vector_char_at( self, size)
        end

        # wrapper for char vector_char::front()
        def front()
            Rbind::vector_char_front( self)
        end

        # wrapper for char vector_char::back()
        def back()
            Rbind::vector_char_back( self)
        end

        # wrapper for void * vector_char::data()
        def data()
            Rbind::vector_char_data( self)
        end

        # wrapper for void vector_char::push_back(char other)
        def push_back(other)
            Rbind::vector_char_push_back( self, other)
        end

        # wrapper for void vector_char::pop_back()
        def pop_back()
            Rbind::vector_char_pop_back( self)
        end

        # wrapper for void vector_char::swap(vector_char other)
        def swap(other)
            Rbind::vector_char_swap( self, other)
        end


        # types

    end

    # object wrapping vector_Point3f
    class VectorPoint3fStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_point_3f_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorPoint3f
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorPoint3fStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_Point3f::vector_Point3f()
            @@vector_point_3f_vector_point_3f_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_point_3f_vector_point_3f_defaults0[i]
                end
                begin
                    return Rbind::vector_point_3f_vector_point_3f(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_Point3f::vector_Point3f(const vector_Point3f other)
            @@vector_point_3f_vector_point_3f2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_point_3f_vector_point_3f2_defaults1[i]
                end
                begin
                    return Rbind::vector_point_3f_vector_point_3f2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorPoint3f
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorPoint3f.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorPoint3fStruct
                               ptr
                           else
                               VectorPoint3fStruct.new(FFI::AutoPointer.new(ptr,VectorPoint3fStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Point3f
                        def self.new
                            ::VectorPoint3f.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_Point3f::resize(size_t size, const cv::Point3f val=cv::Point3f)
        def resize(size, val = cv::Point3f)
            Rbind::vector_point_3f_resize( self, size, val)
        end

        # wrapper for size_t vector_Point3f::size()
        def size()
            Rbind::vector_point_3f_size( self)
        end

        # wrapper for size_t vector_Point3f::capacity()
        def capacity()
            Rbind::vector_point_3f_capacity( self)
        end

        # wrapper for bool vector_Point3f::empty()
        def empty()
            Rbind::vector_point_3f_empty( self)
        end

        # wrapper for void vector_Point3f::reserve(size_t size)
        def reserve(size)
            Rbind::vector_point_3f_reserve( self, size)
        end

        # wrapper for cv::Point3f vector_Point3f::operator[](size_t size)
        def [](size)
            result = Rbind::vector_point_3f_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point3f vector_Point3f::at(size_t size)
        def at(size)
            result = Rbind::vector_point_3f_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point3f vector_Point3f::front()
        def front()
            result = Rbind::vector_point_3f_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point3f vector_Point3f::back()
        def back()
            result = Rbind::vector_point_3f_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_Point3f::data()
        def data()
            Rbind::vector_point_3f_data( self)
        end

        # wrapper for void vector_Point3f::push_back(const cv::Point3f other)
        def push_back(other)
            Rbind::vector_point_3f_push_back( self, other)
        end

        # wrapper for void vector_Point3f::pop_back()
        def pop_back()
            Rbind::vector_point_3f_pop_back( self)
        end

        # wrapper for void vector_Point3f::swap(vector_Point3f other)
        def swap(other)
            Rbind::vector_point_3f_swap( self, other)
        end


        # types

    end

    # object wrapping vector_Point3d
    class VectorPoint3dStruct < FFI::Struct
        layout :version,:uchar,
               :size,:size_t,
               :type_id,:pointer,
               :obj_ptr,:pointer,
               :bowner,:bool
        # auto delete
        def self.release(pointer)
            Rbind::delete_vector_point_3d_struct(pointer) unless pointer.null?
        rescue Exception => e
            puts e
        end
    end

    class VectorPoint3d
        extend FFI::DataConverter
        native_type FFI::Type::POINTER

        def self.new(*args)
            if args.first.is_a?(FFI::Pointer) || args.first.is_a?(VectorPoint3dStruct)
                raise ArgumentError, "too many arguments for creating #{self.name} from Pointer" unless args.size == 1
                return super(args.first)
            end
            # wrapper for vector_Point3d::vector_Point3d()
            @@vector_point_3d_vector_point_3d_defaults0 ||= []
            if(args.size >= 0 && args.size <= 0)
                args.size.upto(-1) do |i|
                    args[i] = @@vector_point_3d_vector_point_3d_defaults0[i]
                end
                begin
                    return Rbind::vector_point_3d_vector_point_3d(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            # wrapper for vector_Point3d::vector_Point3d(const vector_Point3d other)
            @@vector_point_3d_vector_point_3d2_defaults1 ||= [nil]
            if(args.size >= 1 && args.size <= 1)
                args.size.upto(0) do |i|
                    args[i] = @@vector_point_3d_vector_point_3d2_defaults1[i]
                end
                begin
                    return Rbind::vector_point_3d_vector_point_3d2(*args)
                rescue TypeError => e
                    @error = e
                end
            end

            raise ArgumentError, "no constructor for #{self}(#{args.inspect})"
        end

        def self.rbind_to_native(obj,context)
            if obj.is_a? VectorPoint3d
                obj.__obj_ptr__
            else
                raise TypeError, "expected kind of #{name}, was #{obj.class}"
            end
        end

        def self.rbind_from_native(ptr,context)
            VectorPoint3d.new(ptr)
        end

        # can be overwritten by the user
        def self.to_native(obj,context)
            rbind_to_native(obj,context)
        end

        # can be overwritten by the user
        def self.from_native(ptr,context)
            rbind_from_native(ptr,context)
        end

        attr_reader :__obj_ptr__
        def initialize(ptr)
            @__obj_ptr__ = if ptr.is_a? VectorPoint3dStruct
                               ptr
                           else
                               VectorPoint3dStruct.new(FFI::AutoPointer.new(ptr,VectorPoint3dStruct.method(:release)))
                           end
        end

        # returns true if the underlying pointer is owner of
        # the real object
        def __owner__?
            @__obj_ptr__[:bowner]
        end

        # custom specializing
     include Enumerable
                def each(&block)
                    if block
                         s = size
                         0.upto(s-1) do |i|
                             yield self[i]
                         end
                    else
                        Enumerator.new(self)
                    end
                end
                def <<(val)
                    push_back(val)
                end
                Kernel.eval %Q{module ::OpenCV2_49
                module Vector
                    class Point3d
                        def self.new
                            ::VectorPoint3d.new
                        end
                    end
                end
                end}

        # consts


        # methods
        # wrapper for void vector_Point3d::resize(size_t size, const cv::Point3d val=cv::Point3d)
        def resize(size, val = cv::Point3d)
            Rbind::vector_point_3d_resize( self, size, val)
        end

        # wrapper for size_t vector_Point3d::size()
        def size()
            Rbind::vector_point_3d_size( self)
        end

        # wrapper for size_t vector_Point3d::capacity()
        def capacity()
            Rbind::vector_point_3d_capacity( self)
        end

        # wrapper for bool vector_Point3d::empty()
        def empty()
            Rbind::vector_point_3d_empty( self)
        end

        # wrapper for void vector_Point3d::reserve(size_t size)
        def reserve(size)
            Rbind::vector_point_3d_reserve( self, size)
        end

        # wrapper for cv::Point3d vector_Point3d::operator[](size_t size)
        def [](size)
            result = Rbind::vector_point_3d_operator_array( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point3d vector_Point3d::at(size_t size)
        def at(size)
            result = Rbind::vector_point_3d_at( self, size)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point3d vector_Point3d::front()
        def front()
            result = Rbind::vector_point_3d_front( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for cv::Point3d vector_Point3d::back()
        def back()
            result = Rbind::vector_point_3d_back( self)
            # store owner insight the pointer to not get garbage collected
            result.instance_variable_get(:@__obj_ptr__).instance_variable_set(:@__owner__,self) if !result.__owner__?
            result
        end

        # wrapper for void * vector_Point3d::data()
        def data()
            Rbind::vector_point_3d_data( self)
        end

        # wrapper for void vector_Point3d::push_back(const cv::Point3d other)
        def push_back(other)
            Rbind::vector_point_3d_push_back( self, other)
        end

        # wrapper for void vector_Point3d::pop_back()
        def pop_back()
            Rbind::vector_point_3d_pop_back( self)
        end

        # wrapper for void vector_Point3d::swap(vector_Point3d other)
        def swap(other)
            Rbind::vector_point_3d_swap( self, other)
        end


        # types

    end


end

