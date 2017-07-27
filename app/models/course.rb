class Course < ActiveRecord::Base
  has_many :reviews
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :title, :presence => true
  validates :name, :presence => true
  validates :location, :presence => true
  validates :cost, :presence => true
  validates :description, :presence => true


  scope :ten_most_recent, -> { order(created_at: :desc).limit(9)}

end
