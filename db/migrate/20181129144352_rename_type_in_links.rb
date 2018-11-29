class RenameTypeInLinks < ActiveRecord::Migration[5.2]
  def change
    rename_column :links, :type, :format
  end
end
