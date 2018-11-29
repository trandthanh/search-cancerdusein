class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.references :theme, foreign_key: true
      t.references :link, foreign_key: true

      t.timestamps
    end
  end
end
