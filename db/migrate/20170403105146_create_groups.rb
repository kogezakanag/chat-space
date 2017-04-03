class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.text :name, null: :false
      t.reference :member_id, foreign_key: true
      t.timestamps null: :false
      t.index :member_id
    end
  end
end
