Pony.options = {
  :to => "ghkapteijns@gmail.com",
  :via => :smtp,
  :via_options => {
    :address              => "smtp.gmail.com",
    :port                 => "587",
    :enable_starttls_auto => true,
    :user_name            => "cursus.kapteijns@gmail.com",
    :password             => "cursusprogrammeren!",
    :authentication       => :plain,
    :domain               => "localhost.localdomain"
  }
}