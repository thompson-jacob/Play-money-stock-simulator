class AddUserToUserStocks < ActiveRecord::Migration[7.1]
  def change
    add_reference :user_stocks, :user, null: false, foreign_key: true
  end
end
