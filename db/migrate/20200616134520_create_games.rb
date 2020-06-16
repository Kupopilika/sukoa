class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :goal_score
      t.integer :number

      t.timestamps
    end
  end
end
