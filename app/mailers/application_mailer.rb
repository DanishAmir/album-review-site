class ApplicationMailer < ActionMailer::Base
  default to: "info@mynotes.com", from: "info@mynotes.com" ##defaults
  layout 'mailer'
end
