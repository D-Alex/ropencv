GEM_ROOT = File.join(File.dirname(__FILE__), '..')

$:.unshift(File.join(GEM_ROOT, 'lib'))
$:.unshift(File.join(GEM_ROOT, 'test'))

require 'minitest/spec'
require 'ropencv'
require 'pp'

include OpenCV
MiniTest.autorun
