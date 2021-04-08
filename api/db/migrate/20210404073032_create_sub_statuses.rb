class CreateSubStatuses < ActiveRecord::Migration[6.1]
  def up
    create_table :sub_statuses do |t|
      t.references :equipment, polymorphic: true
      t.integer    :status_type, default: 0
      t.float      :value
      t.boolean    :percentage, default: false

      t.timestamps null: false
    end
  end

  def down
    drop_table :sub_statuses
  end
end
