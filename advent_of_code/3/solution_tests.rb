require 'minitest/autorun'
require_relative 'solution.rb'

describe "Manhattan distance" do
  it "for 1 is 0" do
    assert_equal(0, calculate_manhattan_distance_from_0_0_to_target_coordinates(1))
  end

  it "for 12 is 3" do
    assert_equal(3, calculate_manhattan_distance_from_0_0_to_target_coordinates(12))
  end

  it "for 23 is 2" do
    assert_equal(2, calculate_manhattan_distance_from_0_0_to_target_coordinates(23))
  end

  it "for 1024 is 31" do
    assert_equal(31, calculate_manhattan_distance_from_0_0_to_target_coordinates(1024))
  end

  it "for 1024 is 31" do
    assert_equal(552, calculate_manhattan_distance_from_0_0_to_target_coordinates(325489))
  end
end