class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.text :name, null: :false
      t.reference :member_id, foreign_key: true
      t.timestamps null: :false
    end
    add_index :groups, :member_id
  end
end
