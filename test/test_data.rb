module TestData
  module Seed
    Record01 =
    [
      "data1:\n",
      "  id: 1\n",
      "  name: \"coffee\"\n",
      "  category_id: 2\n"
    ].join
    
    Record02 =
    [
      "data2:\n",
      "  id: 2\n",
      "  name: \"tea\"\n",
      "  category_id: 2\n"
    ].join
    
    Record03 =
    [
      "data3:\n",
      "  id: 3\n",
      "  name: \"water\"\n",
      "  category_id: 2\n"
    ].join

    Record04 =
    [
      "data4:\n",
      "  id: 4\n",
      "  name: \"beer\"\n",
      "  category_id: 1\n"
    ].join
    
    Record05 =
    [
      "data5:\n",
      "  id: 5\n",
      "  name: \"wine\"\n",
      "  category_id: 1\n"
    ].join
      
    SortById = [Record01, Record02, Record03, Record04, Record05].join
    SortByCategoryIdAndId = [Record04, Record05, Record01, Record02, Record03].join
    SortByCategoryId_ASC_And_Id_DESC = [Record05, Record04, Record03, Record02, Record01].join
    
    RandomOrder = [Record03, Record01, Record02, Record05, Record04].join
  end
end