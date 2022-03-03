class SorceryCore < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :crypted_password
      t.string :salt
      t.string :account_name, null: false
      t.string :name, null: false
      t.string :avatar
      t.integer :role, default: 0
      t.string :uuid, null: false, index: { unique: true }
      t.string :twitter_id
      t.string :instagram_id
      t.timestamps null: false

      t.index :name
    end
  end
end
