require 'accessible_seed_yaml'

class SortableSeedYaml
  def initialize(seed)
    seed = AccessibleSeedYaml::Table.new(seed)
    @records = seed.records
  end
  
  def sort
    records_sort!("id")
    build_seed_by_records
  end
  
  private
  
  def records_sort!(key)
    @records.sort_by! do |r|
      r.attributes[key]
    end
  end
  
  def build_seed_by_records
    @records.map(&:original_seed).join
  end
end
