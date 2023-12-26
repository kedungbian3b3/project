class Parkingstatus < ApplicationRecord
  belongs_to :staff
  belongs_to :parkingfee
  belongs_to :paymentmethod
  belongs_to :customer
  validates_presence_of :car, :date, :slotid
  validates_uniqueness_of :slotid
  validates_numericality_of :slotid

end
