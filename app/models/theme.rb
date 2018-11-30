class Theme < ApplicationRecord
  has_many :categories

  validates :title, presence: true, inclusion: { in: %w(s'informer gerer gérer vivre ressources recherche) }

  searchkick match: :word_middle
end
