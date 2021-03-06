class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.text :name, null: :false
      t.references :user, foreign_key: true, index: true
      t.timestamps null: :false
    end
  end
end
