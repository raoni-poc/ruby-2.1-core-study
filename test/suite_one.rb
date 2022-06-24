require 'test/unit/testsuite'
require 'test/unit/ui/console/testrunner'
require "coverage.so"
Coverage.start
require_relative 'tc_mytest'

class TS_MyTests
  def self.suite
    suite = Test::Unit::TestSuite.new
    suite << TC_MyTest.suite
    return suite
  end
end

Test::Unit::UI::Console::TestRunner.run(TS_MyTests)
p Coverage.result

