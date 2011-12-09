class Notify < ActionMailer::Base
  default from: "from@example.com"


  def notify_owner(review)
    @review = review

    attachments["rails.png"] = File.read("#{Rails.root}/app/assets/images/rails.png")
    mail from: review.user.email, to: review.destination.user.email, subject: "New review added"
  end

end
