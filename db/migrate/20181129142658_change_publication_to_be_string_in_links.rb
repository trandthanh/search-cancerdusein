class ChangePublicationToBeStringInLinks < ActiveRecord::Migration[5.2]
  def change
    change_column :links, :publication, :string
  end
end
