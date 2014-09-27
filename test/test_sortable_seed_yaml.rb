require 'minitest_helper'

MiniTest::Unit.autorun

class TestSortableSeedYaml < MiniTest::Unit::TestCase
  def setup
    @sortable_seed = SortableSeedYaml.new(TestData::Seed::RandomOrder)
  end
  
  def test_sort_by
    sort_by_id = @sortable_seed.sort_by{|record| record.attributes["id"] }
    assert_equal(TestData::Seed::SortById, sort_by_id)
    
    sort_by_category_id_and_id = 
      @sortable_seed.sort_by do |record|
        [ record.attributes["category_id"], record.attributes["id"] ]
      end

    assert_equal(TestData::Seed::SortByCategoryIdAndId, sort_by_category_id_and_id)
  end
end
