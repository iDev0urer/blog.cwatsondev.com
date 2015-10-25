class Category < ActiveRecord::Base

  def top_level?
    self.child_categories.count > 0 ? true : false
  end

  has_many :post_categories
  has_many :posts, through: :post_categories
  belongs_to :parent_category, class_name: 'Category'
  has_many :child_categories, :class_name => 'Category', :foreign_key => 'parent_category_id'
end
