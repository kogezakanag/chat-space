class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.text :name, null: :false
      t.reference :user, foreign_key: true
      t.timestamps null: :false
    end
  end
end
