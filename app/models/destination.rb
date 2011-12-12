class Destination < ActiveRecord::Base
  has_many :reviews


  validates :description, :presence => true

  validates :title, :presence => true, :uniqueness => true,
            :format => { :with => /\w|\s/i },
            :length => { :minimum => 5 }

  # attr_accessible :title, :description, :photo

  attr_accessor :destination_x, :destination_y, :destination_w, :destination_h

  belongs_to :user

  mount_uploader :photo, PhotoUploader

end
