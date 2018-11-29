class AddDateToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :date, :date
  end
end
