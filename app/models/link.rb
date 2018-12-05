class Link < ApplicationRecord
  has_many :tags, dependent: :destroy
  has_many :keywords, through: :tags
  has_many :categories, dependent: :destroy
  has_many :themes, through: :categories

  validates :format, presence: true
  validates :title, presence: true
  validates :publication, presence: true
  validates :language, presence: true
  validates :description, presence: true
  validates :note, presence: true
  validates :url, presence: true

  # searchkick word_middle: [:format, :title, :publication, :description, :note]
  # searchkick match: :word_middle
  # searchkick word_start: [:title, :author, :genre]
  searchkick word_middle: [:title, :format, :publication]

  def search_data
    {
    title: title,
    format: format,
    publication: publication
    }
    # attributes.merge(
    #   themes: themes.map(&:title),
    #   keywords: keywords.map(&:title)
    # )
  end

  # def search_data
  #   {
  #     name: name,
  #     department_name: department.name,
  #     on_sale: sale_price.present?
  #   }
  # end

  # def search_data
  #   attributes.merge(
  #     author_name: author(&:name)
  #     publisher_name: publisher(&:name)
  #     subjects_name: subjects.map(&:name)
  #   )
  # end

end


