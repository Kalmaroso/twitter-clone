class CreateEntrytags < ActiveRecord::Migration[5.0]
  def change
    create_table :entrytags do |t|
      t.integer :entry_id
      t.integer :tag_id
      t.timestamps
    end
  end
end
