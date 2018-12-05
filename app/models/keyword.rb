class Keyword < ApplicationRecord
  has_many :tags

  validates :title, presence: true, uniqueness: true


end
