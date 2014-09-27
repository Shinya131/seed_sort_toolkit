require 'minitest_helper'

MiniTest::Unit.autorun

class TestSortableSeedYaml < MiniTest::Unit::TestCase
  def setup
    @sortable_seed = SeedSortToolkit::SortableSeedYaml.new(TestData::Seed::RandomOrder)
  end
  
  def test_sort_by
    # Case: sort by one sort key
    sort_by_id = @sortable_seed.sort_by{|record| record.attributes["id"] }
    assert_equal(TestData::Seed::SortById, sort_by_id)
    
    # Case: sort by 
    #       first sort key : category_id
    #       second sort key: id
    sort_by_category_id_and_id = 
      @sortable_seed.sort_by do |record|
        [ record.attributes["category_id"], record.attributes["id"] ]
      end

    assert_equal(TestData::Seed::SortByCategoryIdAndId, sort_by_category_id_and_id)
  end
  
  def test_sort
    # Case: sort by 
    #       first sort key : category_id -- ASC
    #       second sort key: id -- DES
    #
    # note: I don't think there is such use cases, but I made.
    sort_by_category_id_asc_and_id_desc =
      @sortable_seed.sort do |a, b|
        first_compare = (a.attributes["category_id"] <=> b.attributes["category_id"])
        first_compare.nonzero? || -(a.attributes["id"] <=> b.attributes["id"])
      end
      
    assert_equal(TestData::Seed::SortByCategoryId_ASC_And_Id_DESC, sort_by_category_id_asc_and_id_desc)
  end
end
