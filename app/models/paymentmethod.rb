class Paymentmethod < ApplicationRecord
    validates_presence_of :method
    has_many :parkingstatus
end
