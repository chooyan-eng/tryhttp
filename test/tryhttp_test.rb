require 'test_helper'

class TryhttpTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Tryhttp::VERSION
  end
end
