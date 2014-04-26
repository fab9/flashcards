class Round < ActiveRecord::Base
  has_one :user
  has_one :deck
  has_many :stats
end
