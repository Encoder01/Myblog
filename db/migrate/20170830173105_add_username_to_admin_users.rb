class AddUsernameToAdminUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :username, :text
  end
end
