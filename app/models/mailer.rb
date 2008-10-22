class Mailer < ActionMailer::Base
  
 def thankyou_mail(minute)
   recipients   minute.contributor_email
   from         "thankyou@12nineteen.com"
   subject      "Thank you for contributing to 1219"
   content_type 'text/html'
   body         :minute => minute
 end
   
end
