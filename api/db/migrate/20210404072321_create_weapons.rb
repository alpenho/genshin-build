class CreateWeapons < ActiveRecord::Migration[6.1]
  def up
    create_table :weapons do |t|
      t.string  :name
      t.integer :star
      t.integer :weapon_type, default: 0

      t.timestamps null: false
    end
  end

  def down
    drop_table :weapons
  end
end
