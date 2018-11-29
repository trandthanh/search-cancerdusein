class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :type
      t.string :title
      t.date :publication
      t.string :language
      t.text :description
      t.text :note
      t.string :url

      t.timestamps
    end
  end
end
