class Goal < ActiveRecord::Base
  validates :card_count, presence: :true
  validates :start_date, presence: :true
  validates :end_date, presence: :true

  belongs_to :user
end
