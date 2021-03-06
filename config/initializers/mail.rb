if Rails.env.production?
  # 各自のドメインに置き換えること
  host = "ikedaroof-question.herokuapp.com"
  # メール配信に失敗した場合にエラーを発生
  ActionMailer::Base.raise_delivery_errors = true
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.default_url_options = { host: host }
  ActionMailer::Base.smtp_settings = {
    port: 587,
    address: "smtp.gmail.com",
    user_name: ENV['LOGIN_NAME'],
    password: ENV['LOGIN_PASSWORD'],
    domain: host,
    authentication: "plain"
  }
end
