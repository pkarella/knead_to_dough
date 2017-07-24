class Course < ActiveRecord::Base
  has_many :reviews
  validates :title, :presence => true
  validates :name, :presence => true
  validates :location, :presence => true
  validates :cost, :presence => true
  validates :description, :presence => true


  scope :ten_most_recent, -> { order(created_at: :desc).limit(5)}
end
