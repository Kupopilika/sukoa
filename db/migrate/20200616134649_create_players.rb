class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :current_score, default: 0
      t.integer :score_made, default: 0
      t.boolean :winner, default: false
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
