class Tag < ApplicationRecord
  belongs_to :link
  belongs_to :keyword

  validates_uniqueness_of :link_id, :scope => [:keyword_id]
end
