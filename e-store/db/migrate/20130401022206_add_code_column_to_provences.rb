class AddCodeColumnToProvences < ActiveRecord::Migration
  def change
    add_column :provences, :code, :string
  end
end
