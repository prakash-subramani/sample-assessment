class Tag < ApplicationRecord
  has_many :taggings
  has_many :posts, through: :taggings, source: :taggable, source_type: 'Post'

  scope :usage, -> {
    joins(:taggings).group(:id).order('COUNT(taggings.id) DESC')
  }

end
