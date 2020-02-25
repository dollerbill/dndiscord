class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.string :class, null: false
      t.string :status
      t.string :alignment
      t.string :background
      t.integer :attack, null: false
      t.integer :experience, null: false, default: 1

      t.timestamps
    end
  end
end
