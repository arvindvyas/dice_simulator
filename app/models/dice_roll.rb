class DiceRoll < ApplicationRecord
  attr_reader :sides, :results

  def initialize(sides)
    @sides = sides
    @results = []
  end

  def roll
    @results = @sides.map { |side| rand(1..side) }
  end

  def total
    @results.sum
  end

  def description
    "Rolling #{sides_description}: #{results.join(', ')} (Total: #{total})"
  end

  private

  def sides_description
    @sides.map { |side| "#{side}-sided die" }.join(' and ')
  end
  
end
