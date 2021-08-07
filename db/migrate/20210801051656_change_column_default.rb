class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :paid,:boolean, default: false
    change_column :users, :admin,:boolean, default: false
  end

  def down
    change_column :users, :paid,:boolean
    change_column :users, :admin,:boolean
  end
end
