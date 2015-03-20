$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$:.unshift(File.dirname(__FILE__))

require 'test_mat'
require 'test_vec'
require 'test_vector'
require 'test_scalar'
require 'test_opencv'
require 'test_triangulate_points'
