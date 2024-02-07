class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.receipt.subject
  #
  def receipt
    @greeting = "Hi"

    # this_job_will_fail

    mail to: "to@example.org"
  end
end
