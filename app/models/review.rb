class Review < ActiveRecord::Base
  belongs_to :course

  validates :author, :presence => true
  validates :comment, :presence => true
end
