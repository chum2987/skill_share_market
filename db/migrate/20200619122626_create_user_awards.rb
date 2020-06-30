class CreateUserAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :user_awards do |t|

      t.string :name, null: false
      t.integer :price, null:false
      t.timestamps
    end
  end
end
