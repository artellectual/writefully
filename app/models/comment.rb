class Comment < ApplicationRecord
  belongs_to :post, counter_cache: true
  belongs_to :user

  validates_presence_of :user
end
