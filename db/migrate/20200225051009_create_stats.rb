class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :level, null: false
      t.integer :hp, null: false
      t.integer :max_hp, null: false
      t.integer :strength, null: false
      t.integer :dexterity, null: false
      t.integer :constitution, null: false
      t.integer :intelligence, null: false
      t.integer :wisdom, null: false
      t.integer :charisma, null: false
      t.belongs_to(:player)
      t.belongs_to(:monster)

      t.timestamps
    end
  end
end
