class Post < ApplicationRecord
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings
  accepts_nested_attributes_for :tags

  after_create_commit :post_to_slack

  def post_to_slack
    SlackService.new({text: self.content}).post_message
  end

end
