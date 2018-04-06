class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar, :string
    add_column :users, :provider, :string
    add_column :users, :token, :string
    add_column :users, :token_expiry, :datetime
    add_column :users, :username, :string
    add_column :users, :uid, :integer
    add_column :users, :role, :integer, default: 0
  end
end
