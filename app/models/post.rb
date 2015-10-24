class Post < ActiveRecord::Base
  include Redcarpeted
  redcarpet :content

  acts_as_taggable


end
