class User < ActiveRecord::Base
  has_many :followed_through, class_name: 'Relationship', foreign_key: :followed_id, dependent: :destroy
  has_many :follower_through, class_name: 'Relationship', foreign_key: :follower_id, dependent: :destroy
  has_many :followeds, through: :follower_through, source: :follower
  has_many :followers, through: :followed_through, source: :followed
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :cards

  enum access: [:user, :provider]

  def self.search(query)
    where("first_name like ?", "#{query}%")
  end
end
