class ContactMailer < ApplicationMailer

  def send_mail(mail_title, mail_content, group_users)
    @mail_title = mail_title
    @mail_content = mail_content
    to_users = group_users.pluck(:email)

    mail(to: to_users, subject: @mail_title)
  end
end
