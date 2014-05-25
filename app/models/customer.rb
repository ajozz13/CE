class Customer < ActiveRecord::Base
  has_many :packages, dependent: :destroy
  #Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :phone, presence: true
  
  def customer_address_html
      return ( self.name + " <br />" + self.address + "<br />" + 
        self.city + " " + self.state + " " + self.zip + " " + self.country + "<br />" +
        self.phone + " " + self.email ).html_safe
  end
end
