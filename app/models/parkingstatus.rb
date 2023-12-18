class Parkingstatus < ApplicationRecord
  belongs_to :staff
  belongs_to :parkingfee
  belongs_to :paymentmethod
  belongs_to :customer
end
