class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.text :profile
      t.string :password_digest
      t.boolean :paid
      t.boolean :admin

      t.timestamps
    end
  end
end
