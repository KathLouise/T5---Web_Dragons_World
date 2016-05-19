class Dragon < ActiveRecord::Base
  belongs_to :user
  has_one :elements, dependent: :destroy
  has_many :strokes, dependent: :destroy
  has_many :clans, dependent: :destroy
  validates :name, presence: true
  validates :race, presence: true
  validates :gender, presence: true
end
