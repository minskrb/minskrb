class ContactUsController < ApplicationController
  include SendGrid

  def create
    sg = SendGrid::API.new(api_key: Rails.application.credentials.sendgrid[:api_key])
    sg.client.mail._('send').post(request_body: contact_mail.to_json)
  end

  private

  def contact_mail
    mail = Mail.new
    personalization = Personalization.new
    AdminUser.pluck(:email).map { |email| personalization.add_to(Email.new(email: email)) }
    mail.add_personalization(personalization)

    mail.from = Email.new(email: params[:email].html_safe)
    mail.reply_to = Email.new(email: params[:email].html_safe)
    mail.subject = 'Minsk.rb Contact Form'
    mail.add_content(Content.new(type: 'text/html', value: "<html><body><b>#{params[:name].html_safe}:</b><br/>#{params[:message].html_safe}</body></html>"))
    mail
  end
end
