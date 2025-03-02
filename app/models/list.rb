class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end


# class List < ApplicationRecord
#   validates :name, presence: true
#   validates :name, uniqueness: true
#   has_many :bookmarks
#   has_many :movies, through: :bookmarks
#   has_many :movies, through: :bookmarks, dependent: :destroy
# end
