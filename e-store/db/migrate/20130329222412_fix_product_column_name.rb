class FixProductColumnName < ActiveRecord::Migration
  def up
    rename_column :Products, :type, :item
  end

  def down
  end
end
