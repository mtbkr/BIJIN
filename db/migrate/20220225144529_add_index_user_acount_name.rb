class AddIndexUserAcountName < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :account_name, unique: true
  end
end
