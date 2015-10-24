class Post < ActiveRecord::Base
  include AASM
  include Redcarpeted
  redcarpet :content

  acts_as_taggable

end
