class Post < ActiveRecord::Base
  include AASM
  include Redcarpeted
  redcarpet :content

  acts_as_taggable

  aasm do
    state :draft, initial: true
    state :pending
    state :published

    event :publish do
      transitions from: [:draft, :pending], to: :published
    end

    event :draft do
      transitions from: [:published, :pending], to: :draft
    end
  end

end
