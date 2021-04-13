class CreateCharacters < ActiveRecord::Migration[6.1]
  def up
    create_table :characters do |t|
      t.integer :level, default: 1
      t.boolean :ascension, default: false
      t.string  :name
      t.integer :element, default: 0
      t.integer :health_point
      t.integer :attack
      t.integer :defense
      t.integer :ascension_bonus_type, default: 0
      t.float   :value
      t.boolean :percentage, default: false
      t.float   :critical_rate
      t.float   :critical_damage

      t.timestamps null: false
    end
  end

  def down
    drop_table :characters
  end
end
