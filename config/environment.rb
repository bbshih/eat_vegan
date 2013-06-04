# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
EatVegan::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['yqx92b2o'],
  :password       => ENV['app16106217@heroku.com'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}
