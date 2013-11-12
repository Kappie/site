class Book < ActiveRecord::Base
  validates :title, :rating, :date_read, :review, :abstract, presence: true
  has_attached_file :cover, :styles => { :medium => "300x300>" }
end
