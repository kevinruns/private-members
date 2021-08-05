class ChangeColumnBigInt < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :id, :int, null: false, unique: true, auto_increment: true, default: 1, primary_key: true
  end
end
