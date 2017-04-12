class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com',
           bcc: 'eng.trinity.24.so.6263@gmail.com'
  layout 'mailer'
end
