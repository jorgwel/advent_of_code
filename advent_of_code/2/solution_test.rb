require "minitest/autorun"
require_relative "solution.rb"


describe "Checksum" do
  it "=begin
  We get 18 for
  5 1 9 5
  7 5 3
  2 4 6 8
  =end " do
    assert_equal(18, checksum_sum_all_min_max_deltas_in_array("5 1 9 5
    7 5 3
    2 4 6 8"))
  end
end