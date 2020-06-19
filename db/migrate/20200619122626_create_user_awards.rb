class CreateUserAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :user_awards do |t|

      t.timestamps
    end
  end
end
