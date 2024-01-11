class CreateUserStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :user_stocks do |t|
      t.string :ticker
      t.string :name
      t.string :buy_price
      t.string :sell_price
      t.timestamps
    end
  end
end
