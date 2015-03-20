$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$:.unshift(File.dirname(__FILE__))

require 'minitest/spec'
require 'ropencv'
require 'pp'

include OpenCV
MiniTest.autorun
