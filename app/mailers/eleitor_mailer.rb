class EleitorMailer < ActionMailer::Base
  default from: "hugocardososilva@gmail.com"
  def welcome_email(user)
    @eleitor = user
    @url  = 'http://example.com/login'
    mail(to: @eleitor.email, subject: 'Bem vindo as eleicoes')
  end
end
