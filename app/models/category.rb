class Category < ApplicationRecord
  belongs_to :theme
  belongs_to :link

  validates_uniqueness_of :link_id, :scope => [:theme_id]
end
