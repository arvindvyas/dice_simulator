require 'rails_helper'

RSpec.describe DiceRoll, type: :model do
  it 'rolls a single die and returns a value between 1 and the number of sides' do
    dice_roll = DiceRoll.new([6])
    dice_roll.roll
    expect(dice_roll.results.first).to be_between(1, 6).inclusive
  end

  it 'rolls multiple dice and returns values between 1 and the number of sides for each' do
    dice_roll = DiceRoll.new([6, 8])
    dice_roll.roll
    expect(dice_roll.results[0]).to be_between(1, 6).inclusive
    expect(dice_roll.results[1]).to be_between(1, 8).inclusive
  end

  it 'returns the correct total for multiple dice' do
    dice_roll = DiceRoll.new([6, 8])
    dice_roll.roll
    expect(dice_roll.total).to eq(dice_roll.results.sum)
  end

  it 'generates a correct description of the roll' do
    dice_roll = DiceRoll.new([6, 8])
    dice_roll.roll
    expect(dice_roll.description).to include('Rolling 6-sided die and 8-sided die')
  end
end
