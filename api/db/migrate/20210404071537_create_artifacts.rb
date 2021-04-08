class CreateArtifacts < ActiveRecord::Migration[6.1]
  def up
    create_table :artifacts do |t|
      t.string  :name
      t.integer :star
      t.integer :artifact_type, default: 0

      t.timestamps null: false
    end
  end

  def down
    drop_table :artifacts
  end
end