class ReindexUsersByEmailAndSubdomain < ActiveRecord::Migration[5.2]
  def up
    remove_index :users, :email
    add_index :users, [:email, :subdomain], unique: true
  end

  def down
    remove_index :user, [:email, :subdomain], unique: true
    add_index :users, :email, unique: true
  end
end
