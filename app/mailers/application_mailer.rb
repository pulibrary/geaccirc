# frozen_string_literal: true

# application mailer defaults
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
