$LOAD_PATH << File.expand_path('../lib', __dir__)

require 'minitest/autorun'
require 'minitest/pride' if $stdout.tty?
require 'minitest/rspec_mocks'
require 'pry'
require 'logger'
require 'app_logger'

AppLogger.logger = Logger.new(STDOUT)
AppLogger.logger.level = Logger::WARN

MiniTest::Test.include Minitest::RSpecMocks
