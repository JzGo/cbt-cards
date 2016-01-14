class Card < ActiveRecord::Base
  validates :emotions, presence: true
  validates :thoughts, presence: true
  validates :reflection, presence: true
  validates :intensity, presence: true
end
