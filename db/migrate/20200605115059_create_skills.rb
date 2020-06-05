class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string  :name,              null: false
      t.integer :price,             null: false
      t.string  :description
      # t.integer :suplier_id
      # t.integer :consumer_id
      # t.integer :a_category_id
      t.timestamps
    end
  end
end
