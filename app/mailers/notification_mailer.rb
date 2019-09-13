class NotificationMailer < ApplicationMailer
    default from: "no-reply@nomster2app.com"

    def comment_added
        mail(to: "vetrualpoole@gmail.com",
            subject: "A comment has been added to your place")

    end
end
