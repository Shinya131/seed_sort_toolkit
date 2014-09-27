require 'accessible_seed_yaml'

class SortableSeedYaml
  def initialize(seed)
    seed = AccessibleSeedYaml::Table.new(seed)
    @records = seed.records
  end
  
  def sort_by(&block)
    @records.sort_by!(&block)
    fetch_seed
  end
  
  private
  
  def fetch_seed
    @records.map(&:original_seed).join
  end
end
