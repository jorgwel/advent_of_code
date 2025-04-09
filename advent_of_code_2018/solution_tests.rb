require 'minitest/autorun'
require_relative 'solution.rb'

describe 'Sum all items' do
    it '+1, +1, -2 results in  0' do
    assert_equal(0, sum_all_items_in_string("
    +1
    +1
    -2"))  
    end

    it '+1, +1, +1 results in  3' do
    assert_equal(3, sum_all_items_in_string("
    +1
    +1
    +1"))  
    end

    it '-1, -2, -3 results in -6' do
    assert_equal(-6, sum_all_items_in_string("
    -1
    -2
    -3"))  
    end
end 
