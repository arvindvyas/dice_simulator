class DiceRollsController < ApplicationController
  def new
  end

  def create
    sides = params[:sides].map(&:to_i)
    @dice_roll = DiceRoll.new(sides)
    @dice_roll.roll
    render :result
  end
end
