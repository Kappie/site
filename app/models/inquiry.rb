class Inquiry
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  include ActionView::Helpers::TextHelper

  # Nickname will be a hidden field in the form.
  # Spambots filling it in will be blocked.
  attr_accessor :name, :email, :message, :nickname

  validates :name, :presence => true
  validates :email, :format => { :with => /@/}
  validates :nickname, :format => { :with => /\A\z/ }

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def deliver
    return false unless valid?
    Pony.mail({
      :to => "ghkapteijns@gmail.com",
      :from => %("#{name}" <#{email}>),
      :reply_to => email,
      :subject => "Inschrijving cursus",
      :body => message,
      :html_body => simple_format(message)
      })
  end

  def persisted?
    false
  end

end