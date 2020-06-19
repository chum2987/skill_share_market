class CreateUserPortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :user_portfolios do |t|

      t.timestamps
    end
  end
end
