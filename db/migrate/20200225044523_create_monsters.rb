class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :name, null: false
      t.string :status
      t.boolean :alive, null: false, default: true
      t.integer :attack, null: false
      t.integer :xp_awarded, null: false

      t.timestamps
    end
  end
end
