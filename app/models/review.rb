class Review < ActiveRecord::Base
  belongs_to :destination
  belongs_to :user


  after_save :notify_destination_owner


  private
  def notify_destination_owner
    Notify.notify_owner(self).deliver
  end

  # def sanitize
  #   self.content = clear_up(self.content)
  # end
  #
  #
  # def clear_up(contet)
  #   #....
  # end

end
