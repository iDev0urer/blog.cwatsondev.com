class Post < ActiveRecord::Base
  include Redcarpeted
  redcarpet :content


end
