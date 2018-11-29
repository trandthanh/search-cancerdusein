class Link < ApplicationRecord
  has_many :tags, dependent: :destroy
  has_many :keywords, through: :tags
  has_many :categories, dependent: :destroy
  has_many :thelmes, through: :categories

  validates :format, presence: true
  validates :title, presence: true
  validates :publication, presence: true
  validates :language, presence: true
  validates :description, presence: true
  validates :note, presence: true
  validates :url, presence: true

  # searchkick word_middle: [:format, :title, :publication, :description, :note]
  searchkick match: :word_middle

  # def search_data
  #   {
  #     format: format,
  #     title: title,
  #     publication: publication,
  #     description: description,
  #     note: note
  #   }
  # end

end


