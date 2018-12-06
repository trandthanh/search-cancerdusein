class Link < ApplicationRecord
  has_many :tags, dependent: :destroy
  has_many :keywords, through: :tags
  has_many :categories, dependent: :destroy
  has_many :themes, through: :categories

  validates :format, presence: true, inclusion: { in: %w(livre pdf article blog association guide) }
  validates :title, presence: true
  validates :publication, presence: true
  validates :language, presence: true
  validates :description, presence: true
  validates :note, presence: true
  validates :url, presence: true

  # searchkick word_middle: [:format, :title, :publication, :description, :note]
  # searchkick match: :word_middle
  # searchkick word_start: [:title, :author, :genre]
  searchkick searchable: [ :keywords]

  def search_data
    {
    # format: format,
    # publication: publication
    }
    attributes.merge(
      keywords: keywords.map(&:title)
    )
  end
end


