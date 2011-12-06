class Destination < ActiveRecord::Base
  has_many :reviews


  validates :description, :presence => true
  validates :title, :presence => true, :uniqueness => true

end
