class ContactUsController < ApplicationController
  include SendGrid

  def create
    mail = prepare_mail
    sg = SendGrid::API.new(api_key: Rails.application.credentials.sendgrid[:api_key])
    sg.client.mail._('send').post(request_body: mail.to_json)
  end

  private

  def prepare_mail
    Mail.new(Email.new(email: params[:email]),
             'Minsk.rb contact us form',
             Email.new(email: 'zhenia.zhak@gmail.com'),
             Content.new(type: 'text/plain', value: "#{params[:name]}:\n#{params[:message]}"))
  end
end
