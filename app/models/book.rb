class Book < ActiveRecord::Base
  has_attached_file :cover, :styles => { :medium => "300x300>" }
end
