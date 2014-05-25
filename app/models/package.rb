class Package < ActiveRecord::Base
  belongs_to :customer
  has_many :trackings, dependent: :destroy
  has_many :packagedetails, dependent: :destroy
  
  #custom function definitions
  def sender_address_html
      return ( self.sender_name + " <br />" + self.sender_address + "<br />" + 
        self.sender_city + " " + self.sender_state + " " + self.sender_country + "<br />" +
        self.sender_phone + " " + self.sender_email ).html_safe
  end
end
