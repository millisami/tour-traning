class Destination < ActiveRecord::Base
  has_many :reviews


  validates :description, :presence => true
  validates :title, :presence => true, :uniqueness => true

  attr_accessible :title, :description

  belongs_to :user

end
