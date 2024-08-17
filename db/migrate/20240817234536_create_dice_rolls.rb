class CreateDiceRolls < ActiveRecord::Migration[7.1]
  def change
    create_table :dice_rolls do |t|

      t.timestamps
    end
  end
end
