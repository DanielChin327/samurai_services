class AddUsernameToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :region, :string
    add_column :users, :daimyo, :boolean, default: false
  end
end
