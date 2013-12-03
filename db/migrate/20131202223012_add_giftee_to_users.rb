class AddGifteeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :giftee, :string
  end
end
