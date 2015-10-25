class Post < ActiveRecord::Base
  include Krammed
  kram :content
  acts_as_taggable

  has_many :post_categories
  has_many :categories, through: :post_categories
end
