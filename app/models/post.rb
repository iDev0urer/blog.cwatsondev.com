class Post < ActiveRecord::Base
  include Krammed
  kram :content
  acts_as_taggable

end
