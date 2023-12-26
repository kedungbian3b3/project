class Customer < ApplicationRecord
    validates_presence_of :name, :customerid, :phone, :email, :address
    validates_uniqueness_of :email, :customerid, :phone
    validates_numericality_of :customerid, :phone
    has_many :parkingstatus

end
