class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tracks, :key, :keysig
  end
end
