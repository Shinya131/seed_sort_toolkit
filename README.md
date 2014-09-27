[![Gem Version](https://badge.fury.io/rb/seed_sort_toolkit.svg)](http://badge.fury.io/rb/seed_sort_toolkit)
[![Build Status](https://travis-ci.org/Shinya131/seed_sort_toolkit.svg?branch=master)](https://travis-ci.org/Shinya131/seed_sort_toolkit)
[![Coverage Status](https://coveralls.io/repos/Shinya131/seed_sort_toolkit/badge.png)](https://coveralls.io/r/Shinya131/seed_sort_toolkit)
[![Code Climate](https://codeclimate.com/github/Shinya131/seed_sort_toolkit/badges/gpa.svg)](https://codeclimate.com/github/Shinya131/seed_sort_toolkit)
[![Dependency Status](https://gemnasium.com/Shinya131/seed_sort_toolkit.svg)](https://gemnasium.com/Shinya131/seed_sort_toolkit)

# SeedSortToolkit

`SeedSortToolkit` is rails seed file sort tool.  
This tool can without changing the content & format, just replace only order.

### note:   
If you use `YAML.load` and sort and `YAML.dump`.  
The format of your seed, diff comes out a little.  

 For example: 
  - Quotes(`""`,`''`) for string will be disappears.
  - `nil` column will be blank.

This tool does not cause the above problem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'seed_sort_toolkit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install seed_sort_toolkit

## Usage
```yaml
# numbers.yml
data3:
  id: 3
  name: "three"
data1:
  id: 1
  name: "one"
data2:
  id: 2
  name: 'two'
```

```ruby
require 'seed_sort_toolkit'

seed = File.read('numbers.yml')

sortable_seed = SeedSortToolkit::SortableSeedYaml.new(seed)
sortable_seed.sort_by{|record| record.attributes["id"] }
# =>
# data1:
#   id: 1
#   name: "one"
# data2:
#   id: 2
#   name: 'two'
# data3:
#   id: 3
#   name: "three"

# You can use space spice operand
sortable_seed.sort{|a, b| a.attributes["id"] <=> b.attributes["id"]}
# =>
# data1:
#   id: 1
#   name: "one"
# data2:
#   id: 2
#   name: 'two'
# data3:
#   id: 3
#   name: "three"
```
