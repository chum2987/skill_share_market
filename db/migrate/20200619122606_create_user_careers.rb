class CreateUserCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_careers do |t|

      t.timestamps
    end
  end
end
