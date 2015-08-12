class AddSaltToUsers < ActiveRecord::Migration
  def up
    add_column :users, :salt, :string, :after => 'encrypted_password'
  end
  def down
    remove_column :users, :salt
  end
end
