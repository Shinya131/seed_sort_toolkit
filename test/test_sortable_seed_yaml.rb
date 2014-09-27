require 'minitest_helper'

MiniTest::Unit.autorun

class TestSortableSeedYaml < MiniTest::Unit::TestCase
  def setup
    @sortable_seed = SortableSeedYaml.new(TestData::Seed::RandomOrder)
  end
  
  def test_sort
    assert_equal(TestData::Seed::SortById, @sortable_seed.sort)
  end
end
