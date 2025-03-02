class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end


  # class Movie < ApplicationRecord
  #   has_many :bookmarks, dependent: :destroy
  #   validates :title, uniqueness: true
  #   validates :title, presence: true
  #   validates :overview, presence: true
  # end
